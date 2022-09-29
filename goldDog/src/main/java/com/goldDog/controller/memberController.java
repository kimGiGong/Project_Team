package com.goldDog.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;


import lombok.extern.log4j.Log4j;

@Controller
@RequestMapping("/member/*")
@Log4j
public class memberController {
	
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
	
	@GetMapping("signup")
	public void signup() {
		log.info("************ signup ************");
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
