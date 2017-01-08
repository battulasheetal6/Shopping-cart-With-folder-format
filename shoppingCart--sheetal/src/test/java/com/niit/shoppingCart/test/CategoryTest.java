package com.niit.shoppingCart.test;


import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.niit.shoppingCart.dao.CategoryDAO;
import com.niit.shoppingCart.model.Category;


public class CategoryTest {

	public static void main(String[] args) {
		AnnotationConfigApplicationContext context = new AnnotationConfigApplicationContext();
		context.scan("com.niit.shoppingCart");
		context.refresh();
			CategoryDAO categoryDAO=(CategoryDAO)context.getBean("categoryDAO");
		Category category =(Category) context.getBean("category");
		
		category.setId("101aaa");

		category.setName("ear-ring");
		category.setDescription("abcdefgh");
		
		categoryDAO.addCategory(category);

	}

}
