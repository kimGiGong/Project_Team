package com.goldDog.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import lombok.extern.log4j.Log4j;

@Controller
@RequestMapping("/main/*")
@Log4j
public class mainController {

	@GetMapping("premain")
	public void premain() {
		
	}
	
	@RequestMapping("main")
	public void main() {
		
	}
	@RequestMapping("tmain")
	public void tmain() {
		
		
	}
	@RequestMapping("hmain")
	public void hmain() {
		
		
	}
	
	
	
}
