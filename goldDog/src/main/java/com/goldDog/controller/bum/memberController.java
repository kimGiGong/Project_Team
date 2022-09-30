package com.goldDog.controller.bum;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.goldDog.domain.MemberVO;
import com.goldDog.service.bum.memberService;

import lombok.extern.log4j.Log4j;

@Controller
@RequestMapping("/member/*")
@Log4j
public class memberController {
	
	@Autowired
	private memberService service;
	
	
	@RequestMapping("mypage")
	public String a123444() {
		
		return "mypage/mypage";
	}
	
	@RequestMapping("hmain")
	public String a1234445() {
		
		return "main/hmain";
	}
	
	@GetMapping("test1")
	public void test() {
		log.info("************ test1 ************");
	}

	@GetMapping("login")
	public void login() {
		log.info("************ login ************");
	}
	@PostMapping("login")
	public String loginPro(MemberVO member, String auto, Model model, HttpSession session) {
		log.info(member);
		log.info(auto);
		//비지니스 로직 처리
		int result = service.idPwCheck(member);
		if(result == 1) { //로그인 성공
			session.setAttribute("memId", member.getM_id());
			return "redirect:/main/tmain";	//컨트롤러에 재요청하여 메인으로 바로 이동
		}else {
			model.addAttribute("result",result); //결과 pro페이지로 전달
			return "/member/loginPro";
		}
	}
	
	
	@GetMapping("signup")
	public void signup() {
		log.info("************ signup ************");
	}
	@PostMapping("signup")
	public String signupPro(MemberVO member, RedirectAttributes rttr) {
		log.info("********************** signupPro MemberVO : " + member);
		
		int result = service.addMember(member); //회원 추가
		if(result == 1) {
			rttr.addFlashAttribute("msg", "success");
		}
		
		return "redirect:/member/login";
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
