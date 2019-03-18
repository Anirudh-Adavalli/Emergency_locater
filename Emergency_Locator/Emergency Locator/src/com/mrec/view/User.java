package com.mrec.view;
import java.io.Serializable;

public class User implements Serializable 
{
	String username, email, contact, address, city, pincode, amount;
	
	public String getUsername() 
	{
		return username;
	}
	public String getEmail() 
	{
		return email;
	}
	public String getConatact() 
	{
		return contact;
	}
	public String getAddress() 
	{
		return address;
	}
	public String getCity() 
	{
		return city;
	}
	public String getPincode()
	{
		return pincode;
	}
	public String getAmount() 
	{
		return amount;
	}
public void setAddress(String address)
{
	this.address = address;
}
public void setAmount(String amount) 
{
	this.amount = amount;
}
public void setCity(String city) 
{
	this.city = city;
}
public void setContact(String contact) 
{
	this.contact = contact;
}
public void setEmail(String email) 
{
	this.email = email;
}
public void setPincode(String pincode)
{
	this.pincode = pincode;
}
public void setUsername(String username) 
{
	this.username = username;
 }
}

