package com.srinath.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.hibernate.Session;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.srinath.interfaceandimplements.CartDao;
import com.srinath.interfaceandimplements.CategoryDao;
import com.srinath.interfaceandimplements.OrderDao;

@Controller
public class OrderController 
{
@Autowired
HttpSession session;
@Autowired
OrderDao order;
@Autowired
CartDao cartdao;
@RequestMapping("cancelOrder")	
public ModelAndView cancelOrder() 
{
	String username=(String)session.getAttribute("userId");
	
	order.cancelOrder(username);
	List cartdata=cartdao.viewCart(username);
	return new ModelAndView("cart","cart",cartdata);
}
	
}
