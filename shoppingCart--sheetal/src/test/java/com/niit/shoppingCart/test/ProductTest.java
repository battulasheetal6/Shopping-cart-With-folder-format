package com.niit.shoppingCart.test;

import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.niit.shoppingCart.dao.ProductDAO;
import com.niit.shoppingCart.model.Product;


public class ProductTest {

	public static void main(String[] args) {
		AnnotationConfigApplicationContext context = new AnnotationConfigApplicationContext();
		context.scan("com.niit.shoppingCart");
		context.refresh();
		ProductDAO productDAO=(ProductDAO)context.getBean("productDAO");
		Product product =(Product) context.getBean("product");
		
		product.setId("PRD_002");
		product.setName("bangles");
		product.setDescription("gold");
		product.setCategory_id("CAT_003,");
		product.setSupplier_id("SUP_001,");
		
		productDAO.addProduct(product);

	}

}
