package com.srinath.interfaceandimplements;

import java.util.List;

import javax.servlet.http.HttpSession;
import javax.transaction.Transaction;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Repository;

import com.srinath.pojo.Cart;
import com.srinath.pojo.Product;
import com.srinath.pojo.Registration;
@Component
@Repository
public class CartDaoImpl implements CartDao 
{

	@Autowired
	SessionFactory sf;
	
	@Autowired
	Cart cart;
	@Autowired
	HttpSession s;
	public void cartInsert(int productId, int quantity,String username)
	{   try {
		Session session=sf.openSession();
		Product product=(Product)session.get(Product.class,productId);
		System.out.println(product);
		
		cart.setCartUser(username);
		
		System.out.println(cart.getCartUser());
		cart.setProductName(product.getProductName());
		cart.setProductPrice(product.getProductPrice());
		cart.setQuantity(quantity);
		cart.setTotalPrice(quantity*product.getProductPrice());
		cart.setCartId((int)(Math.random()*100000));
		
		
		session.save(cart);
		org.hibernate.Transaction transaction=session.beginTransaction();
		transaction.commit();
		session.close();
	}
	catch(Exception e)
	{
		System.out.println("quantity");
	}
	}
	
	public List viewCart(String un) {
		
		String hql="from Cart where cartuser=:uname";
		
		Session session=sf.openSession();
		Query query=session.createQuery(hql);
		
		query.setParameter("uname",un);
		List cartdata=query.list();
		session.close();
		return cartdata;
		
		
	}

	
	public Long totalItems(String username)
	{
	String hql="select count(*) from Cart where cartuser=:uname";
	Session session=sf.openSession();
	
	Query query=session.createQuery(hql);
	query.setParameter("uname",username);
	Long items=(Long)query.uniqueResult();
	//System.out.println(items);
	return items;
		
	}

	
	

	
}
