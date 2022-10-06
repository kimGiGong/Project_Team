package com.goldDog.controller.sungmin;

import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.model;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.goldDog.domain.AuthVO;
import com.goldDog.domain.Criteria;
import com.goldDog.domain.DogVO;
import com.goldDog.domain.MemberVO;
import com.goldDog.domain.PageDTO;
import com.goldDog.domain.ReviewVO;
import com.goldDog.domain.TrainerVO;
import com.goldDog.persistence.bum.MemberMapper;
import com.goldDog.service.bum.domain.CustomUser;
import com.goldDog.service.sungmin.MainService;



import lombok.extern.log4j.Log4j;

@Controller
@RequestMapping("/main/*")
@Log4j
public class mainController {

	
	@Autowired
	private MainService mainService;
	@Autowired
	private MemberMapper memberService;
	
	
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
		
		
		List<Double> total = new ArrayList<Double>(); 
		List<Integer> rTotal = new ArrayList<Integer>();
		
		//t_no를 받아서 훈련사 당 리뷰 평점 구하기
		for(int i =0 ;i<t_no_list.size() ;i++) {
			List<ReviewVO> re =mainService.getReview(t_no_list.get(i));
				rTotal.add(re.size());
				int t_review_total = 0;
				for(int j=0 ;j<re.size() ;j++) {
					t_review_total += re.get(j).getR_score();
				}
				if(re.size()==0) {
					total.add(0.0);	
				}else {
					total.add((double)t_review_total/re.size());
				}
		}
		
		
		model.addAttribute("member", mainService.getMember(t_m_no_list));
		model.addAttribute("rAvg", total); //리뷰 평점
		model.addAttribute("rTotal", rTotal); //리뷰 총 갯수
		model.addAttribute("trainer",mainService.getAllTrainerT_no(t_no_list));
		model.addAttribute("pager", new PageDTO(cri, Tlist.size()));  

	}
	
	
	@RequestMapping("hmain")
	public void hmain() {
		
		
	}
	
	
	@GetMapping("detailForm")
	public void detailForm(@Param("t_no") int t_no,@Param("m_no")int m_no, Model model, Authentication auth) {
		log.info("디테일폼으로 왔다!");
		log.info(t_no);
		log.info(m_no);
		model.addAttribute("trainer",mainService.getTrainer(t_no));
		model.addAttribute("member",mainService.getOneMember(m_no));
		
		List<ReviewVO> re = mainService.getReview(t_no);
		int rTotal = 0; // 
		double Ravg = 0;
		//리뷰 평점 처리
		for(int i =0 ;i<re.size() ;i++) {
		rTotal +=re.get(i).getR_score();
		}
		Ravg=(double)rTotal/re.size();
		
		String Ravg1 =String.format("%.2f", Ravg); // 리뷰 뒤에 끊어주기
		model.addAttribute("review",mainService.getReview(t_no));
		
		model.addAttribute("Ravg",Ravg1);
		
		
		System.out.println("auth : " + auth);
		
		
		//사용자가 로그인이 되어있다면 강아지 정보 보내주는 처리 
		// 여기서 로그인 안했을때 오류가 뜸
		if(auth != null) { // 로그인 
			String userId=((CustomUser)auth.getPrincipal()).getUsername();
			log.info(userId+"=======================");
			MemberVO member= memberService.getMember(userId);
			
			List<AuthVO> list =member.getAuthList();
			for(int i=0 ;i<list.size() ;i++) {
					
			}
			
			List<Integer> D_no = new ArrayList<Integer>();
			List<String> myDogName = new ArrayList<String>();
			
			int user_M_no =member.getM_no();
			List<DogVO> myDog =mainService.getMyDog(user_M_no);
			
			for(int i=0 ;i<myDog.size() ;i++) {
				D_no.add(myDog.get(i).getD_no());
				myDogName.add(myDog.get(i).getD_name());
			} 
			model.addAttribute("d_no",D_no);
			
			if(D_no.size()==0) {
				model.addAttribute("pet",0);	
				model.addAttribute("petSize",2);//임의로 지정해준것
				
			}else if (D_no.size()!=0) {
				model.addAttribute("pet",1);
				model.addAttribute("petSize",myDog.size());
				model.addAttribute("petName",myDogName);
			}
			
		}else { // 로그아웃
			//로그인 안하고 협상 눌렀을때 띄울 모달
			model.addAttribute("pet",2);
			model.addAttribute("petSize",2);//임의로 지정해준것
		}
		
		
		
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
	
	
	@GetMapping("pushDetailForm")
	public void pushDetailForm() {
		
		
	}

	
	
	
	
}