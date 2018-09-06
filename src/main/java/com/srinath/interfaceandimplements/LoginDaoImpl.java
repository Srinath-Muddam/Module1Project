package com.srinath.interfaceandimplements;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Repository;

import com.srinath.pojo.Registration;
@Component
@Repository
public class LoginDaoImpl implements LoginDao {

	@Autowired 
	SessionFactory sf;
	public boolean login(String userName, String password) 
	{
		Session session=sf.openSession();
		Query query = session.createQuery("From Registration where username=:em and password=:pwd");
        query.setParameter("em",userName).setParameter("pwd",password);
        Registration r=(Registration)query.uniqueResult();
        if(r==null)
		{
			return false;
		}
        else
        {
        return true;
        }
	}

}
