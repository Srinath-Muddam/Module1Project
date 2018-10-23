package com.srinath.controller;

import java.awt.List;
import java.io.PrintWriter;

import javax.servlet.http.HttpSession;
import javax.xml.ws.Response;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.method.annotation.MethodArgumentTypeMismatchException;
import org.springframework.web.servlet.ModelAndView;

import com.srinath.interfaceandimplements.CartDao;
import com.srinath.interfaceandimplements.ProductDao;


@Controller
public class CartController 
{
	@Autowired
	CartDao cart;
	@Autowired
   ProductDao pd;
	@Autowired
	HttpSession session;
	
	@RequestMapping("/cart")
ModelAndView cart(@RequestParam("id")int id, @RequestParam("quantity")int q ) 
	{  

  
		String username=(String)session.getAttribute("userId");
		
		cart.cartInsert(id,q,username);
	
		java.util.List data=pd.fromDatabase();
		
		
		Long noOfItems=cart.totalItems(username);
		//System.out.println(noOfItems);
		session.setAttribute("cartitems", noOfItems);
		
		
		ModelAndView mv=new ModelAndView("mobilePhoneProducts","pd",data);
		
		return mv;
	
	
	


}
@RequestMapping("/viewcart")
ModelAndView viewCart() 
{    
	String username=(String)session.getAttribute("userId");
	//cart.viewUserCart(username);
	Long noOfItems=cart.totalItems(username);
	//System.out.println(noOfItems);
	session.setAttribute("cartitems", noOfItems);
	
	
	
	
	java.util.List cartdata=cart.viewCart(username);
	
	
	ModelAndView mv=new ModelAndView("cart","cart",cartdata);
	
    return mv;
}

	
}
