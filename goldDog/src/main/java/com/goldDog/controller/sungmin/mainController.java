package com.goldDog.controller.sungmin;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.goldDog.domain.Criteria;
<<<<<<< HEAD
import com.goldDog.service.sungmin.MainService;

import lombok.extern.log4j.Log4j;

@Controller
@RequestMapping("/main/*")
@Log4j
public class mainController {

	
	@Autowired
	private MainService service;
	
	
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
		model.addAttribute("member",service.getMember(cri));
		model.addAttribute("review",service.getReview());
		model.addAttribute("trainer",service.getTrainer(1));
	}
	
	
	@RequestMapping("hmain")
	public void hmain() {
		
		
	}
	
	
	@GetMapping("detailForm")
	public void detailForm(int m_no) {
=======
import com.goldDog.service.bum.memberService;
import com.goldDog.service.sungmin.MainService;

import lombok.extern.log4j.Log4j;

@Controller
@RequestMapping("/main/*")
@Log4j
public class mainController {

	
	@Autowired
	private MainService service;
	
	@Autowired
	private memberService service1;
	
	
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
		model.addAttribute("member",service.getMember(cri));
		model.addAttribute("review",service.getReview());
		model.addAttribute("trainer",service.getTrainer(1));
	}
	
	
	@RequestMapping("hmain")
	public void hmain() {
		
		
	}
	
	
	@GetMapping("detailForm")
	public void detailForm() {
>>>>>>> branch 'main' of https://github.com/kimGiGong/Project_Team
		
		
		
	}
	
	
	
	
	
}