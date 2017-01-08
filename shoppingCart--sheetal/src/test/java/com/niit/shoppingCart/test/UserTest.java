package com.niit.shoppingCart.test;

import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.niit.shoppingCart.dao.UserDAO;
import com.niit.shoppingCart.model.User;

public class UserTest {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		AnnotationConfigApplicationContext context = new AnnotationConfigApplicationContext();
		context.scan("com.niit.shoppingCart");
		context.refresh();
		
		UserDAO userDAO=(UserDAO)context.getBean("userDAO");
		User user =(User) context.getBean("user");
		
//		user.setName("Sanjana");
//		user.setPwd("sanj");
//		user.setEmail("vfrevgsevgf");
//		user.setPhno("453546");
//		user.setAddr("435634");
		
		//userDAO.addUser(user);

	}

}
