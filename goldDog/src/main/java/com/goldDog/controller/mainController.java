package com.goldDog.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.goldDog.domain.Criteria;
import com.goldDog.serivece.MainService;

import lombok.extern.log4j.Log4j;

@Controller
@RequestMapping("/main/*")
@Log4j
public class mainController {

	
	@Autowired
	private MainService service;
	
	
	
	@GetMapping("premain")
	public void premain() {
		
	}
	
	@RequestMapping("main")
	public void main() {
		
	}
	@RequestMapping("tmain")
	public void tmain(Model model,Criteria cri ) {
		model.addAttribute("member",service.getMember(cri));
		
		
		
		
		
	}
	@RequestMapping("hmain")
	public void hmain() {
		
		
	}
}