package com.goldDog.controller.sungmin;

import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.model;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.goldDog.domain.Criteria;
import com.goldDog.domain.MemberVO;
import com.goldDog.domain.ReviewVO;
import com.goldDog.domain.TrainerVO;
import com.goldDog.service.bum.memberService;
import com.goldDog.service.sungmin.MainService;



import lombok.extern.log4j.Log4j;

@Controller
@RequestMapping("/main/*")
@Log4j
public class mainController {

	
	@Autowired
	private MainService mainService;
	private memberService memberService;
	
	
	@RequestMapping("test01")
	public void test() {
		
	}
	
	@GetMapping("premain")
	public void premain() {
		
	}
	
	@RequestMapping("main")
	public void main() {
		
	}
	//메인올때 훈련사도 가져온다.
	@RequestMapping("tmain")
	public void tmain(Model model,Criteria cri) {
		// m_no 만 뽑아오기
		List<TrainerVO> Tlist = mainService.getAllTrainer();
		
		List<Integer> t_no_list = new ArrayList<Integer>(); 
		List<Integer> t_m_no_list = new ArrayList<Integer>(); 
		
		for(int i = 0; i < Tlist.size(); i++) {
			t_no_list.add(Tlist.get(i).getT_no()); 
			t_m_no_list.add(Tlist.get(i).getM_no());
		}
		// t_no 를 받아서 그에 맞게 띄워주기
		log.info(t_no_list+"입니다잇"); 
		model.addAttribute("t_no",t_no_list);
		
		
		
		
		model.addAttribute("member", mainService.getMember(t_m_no_list));
		model.addAttribute("review", mainService.getReview(t_no_list));
		model.addAttribute("trainer",mainService.getAllTrainerT_no(t_no_list));
		 
		
		
		
		int rCount = mainService.getReviewCount(1);
		List<ReviewVO> re=mainService.getAllReview(1);
		int total = 0;
		for(int i = 0 ; i<rCount; i++) {
			
			total+=re.get(i).getR_score();	
		}
		double avg= (double)total/rCount;
		log.info(total+"토탈이지~~~~~~~~~~~~~~~~~~~~~~~~~~");
		log.info(avg+"평균이지!~~~~~~~~~~~~~~~");	
		
		
		
		//훈련사 한명에 해당하는 리뷰를 세어주는 메서드
		List<TrainerVO> trainer1 =mainService.getAllTrainer();
		for(int i = 0 ;i<trainer1.size() ; i++){
		
			model.addAttribute("ReviewCount"+i,mainService.getReviewCount(i));	
		
		}
		
		
		
		
	}
	
	
	@RequestMapping("hmain")
	public void hmain() {
		
		
	}
	
	
	@GetMapping("detailForm")
	public void detailForm(@Param("t_no") int t_no,@Param("m_no")int m_no, Model model) {
		log.info("디테일폼으로 왔다!");
		log.info(t_no);
		log.info(m_no);
		model.addAttribute("trainer",mainService.getTrainer(t_no));
		model.addAttribute("member",mainService.getOneMember(m_no));
		//model.addAttribute("review",mainService.getReview(t_no));
	
		
	}
	
	
	@GetMapping("selUpload")
	public void selUpload(int m_no,Model model) {
		model.addAttribute("m_no",m_no);
		log.info(m_no+"가져왔니??");
		
	}
	
	@PostMapping("selUpload")
	public String selUploadPro(TrainerVO trainer) {
		
		log.info(trainer);
		int result=mainService.addTinfo(trainer);
		log.info(result+"추가정보 등록 결과");
		
		
		return "redirect:/main/tmain";
	}

	@GetMapping("addPetInfo")
	public void addPetInfo() {
		
		
		
	}
	
	
	
	
	
}