package com.srinath.interfaceandimplements;

import javax.persistence.Column;

import com.srinath.pojo.Registration;

public interface AuthenticationDao 
{
void registration(Registration registration);
Registration getUser(String userName);

}
