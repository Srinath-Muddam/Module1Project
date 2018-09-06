package com.srinath.interfaceandimplements;

import java.awt.List;

import com.srinath.pojo.Cart;

public interface CartDao 
{
void cartInsert(int productId,int quantity,String username);
java.util.List viewCart(String un);

}
