package com.niit.shoppingCart.controller;


import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.niit.shoppingCart.dao.ProductDAO;
import com.niit.shoppingCart.model.Product;

@Controller
public class ProductController {
	@Autowired
	ProductDAO productDAO;
	
	@Autowired
	Product product;
	
//	@RequestMapping("/category")
//	public String getCategory()
//	{
//		return "category";
//	}
	
	@RequestMapping("/product")
	public ModelAndView getRegister(Model m)
	{
		m.addAttribute("product",new Product());
		ModelAndView model = new ModelAndView("product");
		
		return model;
	}
	
	@RequestMapping(value="/product/add", method=RequestMethod.POST)
	public String addUser(Model model, @Valid @ModelAttribute("product") Product product)
	{
		productDAO.addProduct(product);
		
		return "redirect:/product";
	}

	@RequestMapping("product/remove/{id}")
	public String deleteProduct(@PathVariable("id") String id, ModelMap model) throws Exception {

		try {
			productDAO.delete(id);
			model.addAttribute("message", "Successfully Added");
		} catch (Exception e) {
			model.addAttribute("message", e.getMessage());
			e.printStackTrace();
		}
		// redirectAttrs.addFlashAttribute(arg0, arg1)
		return "redirect:/product";
	}
	
	@RequestMapping("product/edit/{id}")
	public String editProduct(@PathVariable("id") String id, Model model) {
		System.out.println("editProduct");
		
		model.addAttribute("product", this.productDAO.getProduct(id));
		model.addAttribute("productList", this.productDAO.list());
		return "product";
	}
	@RequestMapping(value = "/product", method = RequestMethod.GET)
	public String listProducts(Model model){
		model.addAttribute("product", product);
		model.addAttribute("productList",this.productDAO.list());
		return "product";
	
}
	
	
	
	
	
	
}


