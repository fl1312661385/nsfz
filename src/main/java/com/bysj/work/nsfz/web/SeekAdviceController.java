package com.bysj.work.nsfz.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class SeekAdviceController {
	/**
	*@author fengliang
	*2019年5月16日
	*com.bysj.work.nsfz.web
	*/
	@RequestMapping("/tharm")
	public String tharm(){
		return "tharm";
	}
	@RequestMapping("/loose")
	public String loose(){
		return "loose";
	}
	@RequestMapping("/fuxie")
	public String fuxie(){
		return "fuxie";
	}
	@RequestMapping("/babyjump")
	public String babyjump(){
		return "babyjump";
	}
	
	
}
