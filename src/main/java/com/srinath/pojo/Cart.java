package com.srinath.pojo;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;

import org.springframework.stereotype.Component;
import org.springframework.stereotype.Repository;
@Component
@Repository
@Entity
public class Cart 
{
	@Id
private int cartId;
	@Column
private String cartUser;
	public String getCartUser() {
		return cartUser;
	}
	public void setCartUser(String cartUser) {
		this.cartUser = cartUser;
	}
	@Column
private int quantity;
	@Column
private String productName;
	@Column
private int productPrice;
	@Column
private int totalPrice;
	@Column
	private int productId;
public int getProductId() {
		return productId;
	}
	public void setProductId(int productId) {
		this.productId = productId;
	}
public int getCartId() {
	return cartId;
}
public void setCartId(int cartId) {
	this.cartId = cartId;
}
public int getQuantity() {
	return quantity;
}
public void setQuantity(int quantity) {
	this.quantity = quantity;
}
public String getProductName() {
	return productName;
}
public void setProductName(String productName) {
	this.productName = productName;
}
public int getProductPrice() {
	return productPrice;
}
public void setProductPrice(int productPrice) {
	this.productPrice = productPrice;
}
public int getTotalPrice() {
	return totalPrice;
}
public void setTotalPrice(int totalPrice) {
	this.totalPrice = totalPrice;
}

	
	

}
