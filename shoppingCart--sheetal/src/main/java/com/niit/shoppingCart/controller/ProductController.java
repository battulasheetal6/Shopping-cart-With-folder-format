package com.niit.shoppingCart.controller;


import java.io.File;
import java.nio.file.Path;
import java.nio.file.Paths;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.niit.shoppingCart.dao.CategoryDAO;
import com.niit.shoppingCart.dao.ProductDAO;
import com.niit.shoppingCart.dao.SupplierDAO;
import com.niit.shoppingCart.model.Category;
import com.niit.shoppingCart.model.Product;
import com.niit.shoppingCart.model.Supplier;

@Controller
public class ProductController {
	@Autowired
	ProductDAO productDAO;
	
	@Autowired
	Product product;
	
	@Autowired
	CategoryDAO categoryDAO;
	
	@Autowired
	Category category;
	
	@Autowired
	SupplierDAO supplierDAO;
	
	@Autowired
	Supplier supplier;
	
	private Path path;
	
//	@RequestMapping("/category")
//	public String getCategory()
//	{
//		return "category";
//	}
	
	@RequestMapping("/product")
	public ModelAndView getRegister(Model m)
	{
		m.addAttribute("product",new Product());
		m.addAttribute("category",new Category());
		m.addAttribute("supplier",new Supplier());
		
		m.addAttribute("categoryList", this.categoryDAO.list());
		m.addAttribute("supplierList", this.supplierDAO.list());
		m.addAttribute("productList", this.productDAO.list());
		ModelAndView model = new ModelAndView("product");
		
		return model;
	}
	
	@RequestMapping(value="/product_add", method=RequestMethod.POST)
	public String addUser(Model model, @Valid @ModelAttribute("product") Product product, HttpServletRequest request)
	{
		System.out.println(product.getCategory().getName());
		Category category= categoryDAO.getByName(product.getCategory().getName());
		System.out.println(category.getName());
		//categoryDAO.addCategory(category);
		
		Supplier supplier = supplierDAO.getByName(product.getSupplier().getName());
		//supplierDAO.addSupplier(supplier);
		
		product.setCategory(category);
		product.setSupplier(supplier);
		
		product.setCategory_id(category.getId());
		product.setSupplier_id(supplier.getId());
		
		
		
		productDAO.addProduct(product);
		
		
		
		MultipartFile file = product.getImage();
		System.out.println(product.getImage());
		String rootDirectory=request.getSession().getServletContext().getRealPath("/");
		path =Paths.get(rootDirectory + "\\WEB-INF\\resources\\images\\"+product.getId()+".jpg");
		if(file!=null && !file.isEmpty())
		{
			try{
				file.transferTo(new File(path.toString()));
				System.out.println("image uploaded....");
			}
		catch(Exception e)
		{
		e.printStackTrace();
		//throw new RuntimeException("image saving failed",e);
		}
		}
		
		
		return "redirect:/product";
	}

	@RequestMapping("product_delete-{id}")
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
	
	@RequestMapping("product_edit-{id}")
	public String editProduct(@PathVariable("id") String id, Model model) {
		System.out.println("editProduct");
		
		model.addAttribute("product", this.productDAO.getProduct(id));
		
		model.addAttribute("categoryList", this.categoryDAO.list());
		model.addAttribute("supplierList", this.supplierDAO.list());
		model.addAttribute("productList", this.productDAO.list());
		return "product";
	}
	
	
	@RequestMapping(value="product_get-{id}")

	public String getSelectedProduct(@PathVariable("id") String id,Model model)

	{

		model.addAttribute("selectedProduct",productDAO.getProduct(id));

		model.addAttribute("categoryList",this.categoryDAO.list());

		return "item";

	


	}




	
	
	
}


