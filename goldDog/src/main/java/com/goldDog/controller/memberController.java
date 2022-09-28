package com.goldDog.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.goldDog.serivece.memberService;

import lombok.extern.log4j.Log4j;

@Controller
@RequestMapping("member*")
@Log4j
public class memberController {

	@Autowired
	private memberService service;
	
	
	@RequestMapping("test1")
	public void test() {
		
		
	}
	
	
	
	
	
	
}
