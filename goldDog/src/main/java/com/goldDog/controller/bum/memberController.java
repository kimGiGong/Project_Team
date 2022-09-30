package com.goldDog.controller.bum;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;


import lombok.extern.log4j.Log4j;

@Controller
@RequestMapping("/member/*")
@Log4j
public class memberController {
	
	
	
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
	
	
	
}
