package com.srinath.controller;

import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.srinath.interfaceandimplements.ProductDao;

@Controller
public class NavigationController 
{
	@Autowired
	ProductDao pd;
	
@RequestMapping("/mobilephones")
ModelAndView mv() 
{
	System.out.println("working------------------------------------");
	
	List productData=pd.fromDatabase();
	return new ModelAndView("mobilePhoneProducts","pd",productData);

}

@RequestMapping("/admin")
String m2()
{
	
	
	
	return "Admin";
}
}
