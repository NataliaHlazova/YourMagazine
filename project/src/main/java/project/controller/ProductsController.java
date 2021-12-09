package project.controller;

import java.io.IOException;
import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import project.domain.Product;
import project.service.ProductsDTOHelper;
import project.service.ProductsService;



@Controller
public class ProductsController {

	@Autowired
	ProductsService productsService;
	

	@RequestMapping(value = "/addProduct", method = RequestMethod.POST)
	public ModelAndView createProduct(
			@RequestParam MultipartFile image, 
			@RequestParam String pr_name, 
			@RequestParam String description,
			@RequestParam(defaultValue = "2021-01-01") @DateTimeFormat(pattern = "yyyy-MM-dd") Date publish_date,
			@RequestParam Double price) throws IOException {
		
		 if (image.isEmpty() || pr_name.isEmpty() || description.isEmpty() || publish_date.equals(null) || price.equals(null)) {
			return new ModelAndView("redirect:/create-product"); 
		 }
	     
		
		productsService.save(ProductsDTOHelper.createEntity(image, pr_name, description, publish_date, price));
		return new ModelAndView("redirect:/home");
	}
	
	
	@RequestMapping(value ="/single-product", method = RequestMethod.GET)
    public Product singleProduct(@RequestParam String productId) {
		Product product = productsService.findById(Integer.parseInt(productId));
		return product;    
    }

    
	@RequestMapping(value = "/updateProduct", method = RequestMethod.POST)
	public ModelAndView updateProduct(
			@RequestParam String productId, 
			@RequestParam MultipartFile image, 
			@RequestParam String pr_name, 
			@RequestParam String description,
			@RequestParam(defaultValue = "2021-01-01") @DateTimeFormat(pattern = "yyyy-MM-dd") Date publish_date,
			@RequestParam Double price) throws IOException {
		
		 if (image.isEmpty() || pr_name.isEmpty() || description.isEmpty() || publish_date.equals(null) || price.equals(null)) {
			return new ModelAndView("redirect:/home"); 
		 }
		 
		 productsService.update(Integer.parseInt(productId), image, pr_name, description, publish_date, price);
		return new ModelAndView("redirect:/home");
	}
	

}