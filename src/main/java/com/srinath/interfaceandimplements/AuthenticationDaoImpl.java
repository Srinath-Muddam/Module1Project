package com.srinath.interfaceandimplements;

import javax.transaction.Transaction;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Repository;

import com.srinath.pojo.Registration;
@Component
@Repository
public class AuthenticationDaoImpl implements AuthenticationDao{

	@Autowired
	SessionFactory sf;
	public void registration(Registration register) 
	{ 
		//System.out.println(register.getPassword());
		Session session=sf.openSession();
		register.setRole("ROLE_USER");
		register.setEnabled(true);
		session.save(register);
		org.hibernate.Transaction transaction=session.beginTransaction();
		transaction.commit();
		
	}
	
	public Registration getUser(String userName) {
	String hql="from Registration where username=:uname";
	Session session=sf.openSession();
	Query query=session.createQuery(hql);
	query.setParameter("uname",userName);
	Registration registration=(Registration)query.uniqueResult();
	if(registration!=null)
	{
		return registration;
	}
	else
		{
		return null;
		}
	}

	
	
	}


