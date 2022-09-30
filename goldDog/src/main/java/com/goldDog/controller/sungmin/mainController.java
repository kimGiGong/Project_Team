package com.goldDog.controller.sungmin;

import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.model;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.goldDog.domain.Criteria;
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
		model.addAttribute("member",mainService.getMember(cri));
		model.addAttribute("review",mainService.getReview(1));
		model.addAttribute("trainer",mainService.getTrainer(1));
	}
	
	
	@RequestMapping("hmain")
	public void hmain() {
		
		
	}
	
	
	@GetMapping("detailForm")
	public void detailForm(int m_no, Model model) {
		log.info("디테일폼으로 왔다!");
		log.info(m_no);
		model.addAttribute("trainer",mainService.getTrainer(m_no));
		model.addAttribute("member",mainService.getOneMember(m_no));
		model.addAttribute("review",mainService.getReview(m_no));
	
		
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
		log.info(result+"회원가입 결과");
		
		
		return "redirect:/main/tmain";
	}

	@GetMapping("addPetInfo")
	public void addPetInfo() {
		
		
		
	}
	
	
	
	
	
}