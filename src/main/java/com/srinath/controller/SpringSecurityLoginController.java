package com.srinath.controller;

import java.util.Collection;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.srinath.interfaceandimplements.AuthenticationDao;
import com.srinath.pojo.Registration;

@Controller
public class SpringSecurityLoginController 
{
	
	@Autowired
	AuthenticationDao ad;
	
	@RequestMapping("/LoginError")
public ModelAndView loginError()
{
	return new ModelAndView("LoginError");
}
	    @SuppressWarnings("unchecked")
	    @RequestMapping(value = "/login_session_attributes")
	    public String login_session_attributes(HttpSession session,Model model) 
	    
	    {
	    
	        String userid = SecurityContextHolder.getContext().getAuthentication().getName();
	        System.out.println(userid);
	       Registration user = ad.getUser(userid);
	        
	        session.setAttribute("userId", user.getUserName());
	        session.setAttribute("name", user.getPassword());
	        
	        session.setAttribute("LoggedIn", "true");
	        
	        
	         //session.setAttribute("crtcnt",count);
	        Collection<GrantedAuthority> authorities = (Collection<GrantedAuthority>) SecurityContextHolder.getContext().getAuthentication().getAuthorities();
	        String page="";
	        String role="ROLE_USER";
	        for (GrantedAuthority authority : authorities)
	        {
	          
	             if (authority.getAuthority().equals(role))
	             {
	                 session.setAttribute("UserLoggedIn", true);
	                 session.setAttribute("UserName", user.getUserName());
	             page="/NewHome";
	                 session.setAttribute("test",1);
	                
	             }
	             else
	             {
	                 session.setAttribute("Administrator",true);
	                 session.setAttribute("UserName", user.getUserName());
	                 page="/index";
	            
	            }
	        }
	        return page;
	    }
	}

