package com.goldDog.controller.instance;

import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.request;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.goldDog.domain.MemberVO;
import com.goldDog.service.bum.memberService;
import com.goldDog.service.bum.domain.CustomUser;
import com.goldDog.service.sungmin.MainService;

import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@RequestMapping("/*")
public class mypageController {
	
	@Autowired
	private MainService sungminService;
	
	@Autowired
	private memberService bumService; 
	
	@GetMapping("mypage")
	public String viewMypage(Authentication auth, Model model) {
		
		CustomUser user = (CustomUser)auth.getPrincipal();
		String loginID = user.getUsername();
		MemberVO member = bumService.getMember(loginID);
		model.addAttribute("manager",member);
		
		return "mypage/mypage";
	}
	
	
	@RequestMapping("manager")
	public String viewManager(Authentication auth, Model model) {
		if(auth == null) {
			return "member/login"; 
			
		}else {
		
			CustomUser user = (CustomUser)auth.getPrincipal();
			String loginID = user.getUsername();
			MemberVO member = bumService.getMember(loginID);
			model.addAttribute("manager",member);
			
			return "mypage/managerpage";
		}
	}
	
	@RequestMapping("selUpload")
	public String viewSelUpload(Authentication auth, Model model) {
		if(auth == null) {
			return "member/login"; 
			
		}else {
			
			CustomUser user = (CustomUser)auth.getPrincipal();
			String loginID = user.getUsername();
			MemberVO member = bumService.getMember(loginID);
			model.addAttribute("manager",member);
			
			return "main/selUpload";
		}
	}

}
