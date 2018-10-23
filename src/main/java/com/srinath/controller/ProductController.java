package com.srinath.controller;

import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.util.List;

import javax.servlet.ServletContext;

import org.hibernate.Session;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.srinath.interfaceandimplements.CategoryDao;
import com.srinath.interfaceandimplements.ProductDao;
import com.srinath.interfaceandimplements.SuplierDao;
import com.srinath.pojo.Category;
import com.srinath.pojo.Product;

@Controller
public class ProductController 
{
	
	
@Autowired
ProductDao pd;
@Autowired
CategoryDao cd;
@Autowired
SuplierDao sd;
	@RequestMapping("/product")
	public ModelAndView toProductJsp()
	{

	ModelAndView m1=new ModelAndView("enterandshowproduct","pro",new Product());
	List productData=pd.fromDatabase();
	m1.addObject("pd",productData);
	List  categories=cd.fromDatabase();
	m1.addObject("category",categories);
	List supplier=sd.fromDatabase();
	m1.addObject("supplier",supplier);
	return m1;
		
	}
	@RequestMapping(value="/saveproduct",method=RequestMethod.POST)
	public ModelAndView toDaoAndTable(@ModelAttribute("pro") Product product) throws Exception
	{
	
		product.setProductId((int)(Math.random()*100000));
		
		MultipartFile image=product.getProductImage();
		
		File file=new File("D:\\Workspace-Photon\\MavenWebSpringMvcAndHibernate\\src\\main\\webapp\\resources\\"+product.getProductId()+".jpg");
		
		//System.out.println(image.getClass().getName());
		InputStream inputStream=product.getProductImage().getInputStream();
		
		/*byte[] imageBytes=new byte[inputStream.available()];
		
		inputStream.read(imageBytes);*/
		
		
		
		FileOutputStream fos=new FileOutputStream(file);
		/*fos.write(imageBytes);*/
		
		BufferedOutputStream bos=new BufferedOutputStream(fos);
		bos.write(image.getBytes());
		bos.close();
		
		/*
		 ServletContext context = session.getServletContext();  
		    String path = context.getRealPath(UPLOAD_DIRECTORY);  
		    String filename = file.getOriginalFilename();  
		  
		    System.out.println(path+" "+filename);        
		  
		    byte[] bytes = file.getBytes();  
		    BufferedOutputStream stream =new BufferedOutputStream(new FileOutputStream(  
		         new File(path + File.separator + filename)));  
		    stream.write(bytes);  
		    stream.flush();  
		    stream.close();  
		*/
	
		pd.insert(product);
		List productData=pd.fromDatabase();
		List categories=cd.fromDatabase();
		
	
		ModelAndView m1=new ModelAndView("enterandshowproduct","pro",new Product());
		m1.addObject("category",categories);
	   m1.addObject("pd", productData);
	   List supplier=sd.fromDatabase();
		m1.addObject("supplier",supplier);
	return m1;
}
	@RequestMapping("/prodelete")
	public ModelAndView delete(@RequestParam("proId") int ProductId)
	{
		pd.delete(ProductId);
		ModelAndView mv=new ModelAndView("enterandshowproduct","pro",new Product()); 
		List productList=pd.fromDatabase();
		List categories=cd.fromDatabase();
		 List supplier=sd.fromDatabase();
		 mv.addObject("supplier",supplier);
		mv.addObject("category",categories);
		mv.addObject("pd",productList);
	return mv;
	}
	@RequestMapping("editpro")
	public ModelAndView edit(@RequestParam("proId") int ProductId)
	{
		Product p=pd.edit(ProductId);
		ModelAndView mv=new ModelAndView("enterandshowproduct","pro",p);
		
		List categories=cd.fromDatabase();
		mv.addObject("category",categories);
		List supplier=sd.fromDatabase();
		mv.addObject("supplier",supplier);
		return mv;
	}
	}
	
	
	
	
