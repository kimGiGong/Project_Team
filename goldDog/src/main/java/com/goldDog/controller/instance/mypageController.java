package com.goldDog.controller.instance;

import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.request;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.goldDog.domain.MemberVO;
import com.goldDog.service.bum.memberService;
import com.goldDog.service.sungmin.MainService;

import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@RequestMapping("/*")
public class mypageController {
	
	@Autowired
	private MainService mainService; 
	
	@GetMapping("mypage")
	public String viewmypage(/*HttpServletRequest request,*/ Model model) {
		
		
//		HttpSession session = request.getSession(false);
		final int loginNumber = /*(int)session.getAttribute("m_no");*/ 1;
		MemberVO member = mainService.getOneMember(loginNumber);
		model.addAttribute("manager",member);
		
		return "mypage/mypage";
	}
	

}
