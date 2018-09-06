package com.srinath.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.srinath.interfaceandimplements.AuthenticationDao;
import com.srinath.interfaceandimplements.LoginDao;
import com.srinath.pojo.Registration;

@Controller
public class AuthenticationController 
{
	@Autowired
	AuthenticationDao ad;
	@Autowired
	LoginDao ld;
	@RequestMapping("/registration")
public ModelAndView registration() 
{
		
		ModelAndView mv=new ModelAndView("Registration","register",new Registration()); 
		return mv;
		
	
}
	@RequestMapping(value="/register",method=RequestMethod.POST)
	public ModelAndView register(@ModelAttribute("register")Registration registration)
	{
	//	registration.setUserId((int)(Math.random()*10000000));
		
		ad.registration(registration);
		return new ModelAndView("NewHome","",null);
	}
@RequestMapping("/login")
String login()
{
	return "login";
	
}

@RequestMapping(value="/afterlogin",method=RequestMethod.POST)
public ModelAndView mv(@RequestParam("username")String username,@RequestParam("password")String password)
{
	boolean loginData=ld.login(username, password);
	System.out.println(loginData);
	return null;
}



}

