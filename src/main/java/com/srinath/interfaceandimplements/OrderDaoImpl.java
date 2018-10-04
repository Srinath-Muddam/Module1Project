package com.srinath.interfaceandimplements;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Repository;

import com.srinath.pojo.Cart;
import com.srinath.pojo.Product;
@Component
@Repository
public class OrderDaoImpl implements OrderDao {
@Autowired
SessionFactory sessionFactory;
	
	public void cancelOrder(String username) 
	{
		
		
		
		
		
		String sql="delete from Cart where cartuser=:uname";
		Session session=sessionFactory.openSession();
		Query query=session.createQuery(sql);
		query.setParameter("uname",username);
		
		query.executeUpdate();
		Transaction transaction=session.beginTransaction();
		transaction.commit();
		
		/*List cartdata=query.list();
		*/session.close();
		//return cartdata;
		
		/*Session session=sessionFactory.openSession();
		Cart cart=(Cart)session.get(Cart.class,username);
		session.delete(cart);
	    Transaction transaction=session.beginTransaction();
	
	     transaction.commit();
	
	     session.close();*/
		
		
	}

}
