package com.goldDog.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.goldDog.domain.MemberVO;
import com.goldDog.service.memberService;

import lombok.extern.log4j.Log4j;

@Controller
@RequestMapping("/member/*")
@Log4j
public class memberController {
	
	@Autowired
	private memberService service;
	
	@GetMapping("test1")
	public void test() {
		log.info("************ test1 ************");
	}

	@GetMapping("login")
	public void login() {
		log.info("************ login ************");
	}
	
	
	@GetMapping("signup")
	public void signup() {
		log.info("************ signup ************");
		
	}
	//회원가입 처리
	@PostMapping("signup")
	public String signupPro(MemberVO member, RedirectAttributes rttr) {
		log.info("********************** signupPro MemberVO : " + member);
		
		int result = service.addMember(member); //회원 추가
		
		if(result == 1) {
			rttr.addFlashAttribute("msg", "success");
		}
		return "redirect:/main/main";
	}
	
	
	@GetMapping("idFind")
	public void idFind() {
		log.info("************ idFind ************");
	}
	
	@GetMapping("pwFind")
	public void pwFind() {
		log.info("************ pwFind ************");
	}
	
	
	
}
