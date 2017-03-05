package com.niit.shoppingCart.controller;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.niit.shoppingCart.dao.CategoryDAO;
import com.niit.shoppingCart.dao.UserDAO;
import com.niit.shoppingCart.model.Category;
import com.niit.shoppingCart.model.User;
@Controller
public class HomeController
{
	@Autowired
	UserDAO userDAO;
	
	@Autowired
	User user;
	
	@Autowired
	CategoryDAO categoryDAO;
	
	@Autowired
	Category category;
	
	
	@RequestMapping("/")
	public String getLanding(Model model)
	{
		
		model.addAttribute("category", category);
		model.addAttribute("categoryList",this.categoryDAO.list());
		return "index";
	}
	
	@RequestMapping("/onLoad")
	public String getHome(Model model)
	{
		
		model.addAttribute("category", category);
		model.addAttribute("categoryList",this.categoryDAO.list());
		return "index";
	}

	@RequestMapping("/login")
	public String getLogin()
	{
		return "login";
	}

	@RequestMapping("/register")
	public ModelAndView getRegister(Model m)
	{
		m.addAttribute("user",new User());
		ModelAndView model = new ModelAndView("signup");
		
		return model;
	}
	
	@RequestMapping(value="register/add", method=RequestMethod.POST)
	public String addUser(Model model, @Valid @ModelAttribute("user") User user)
	{
		user.setRole("ROLE_USER");
		userDAO.addUser(user);
		
		return "redirect:/";
	}
	
	
	@RequestMapping("/admin")
	public String getAdmin()
	{
		return "admin";
	}
	
	@RequestMapping("/about")
	public String getAbout()
	{
		return "aboutus";
	}
	

	@RequestMapping("/contact")
	public String getContact()
	{
		return "contactus";
	}
}
