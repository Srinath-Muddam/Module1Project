package com.srinath.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class homeController
{
	@RequestMapping("/adminhome")
public String adminHome() 
{
	return "index";
}
	
	@RequestMapping("/home")
	public String welcomePage() 
	{
		return "newnewHome";
	}
	
	@RequestMapping("/userhome")
public String afterUserLogin() {
	return "NewHome";
}
	
	
}
