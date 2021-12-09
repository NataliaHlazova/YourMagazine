package project.controller;

import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import project.domain.Bucket;
import project.domain.Product;
import project.domain.User;
import project.service.BucketService;
import project.service.ProductsService;
import project.service.UserService;



@Controller
public class BucketController {

	@Autowired
	private BucketService bucketService;

	@Autowired
	private UserService userService;

	@Autowired
	private ProductsService productsService;

	@RequestMapping(value = "/buckets", method = RequestMethod.GET)
	public ModelAndView getAllItems() {
		return getBucketItems();
	}

	@RequestMapping(value = "/bucket", method = RequestMethod.POST)
	public ModelAndView create(@RequestParam String productId) {
		Product product = productsService.findById(Integer.parseInt(productId));

		Bucket bucket = new Bucket();
		bucket.setProduct(product);
		bucket.setBuck_date(new Date());

		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		String userEmail = auth.getName();
		User user = userService.findByEmail(userEmail);
		bucket.setUser(user);

		Bucket old_buck = bucketService.findByProductAndUser(product, user);
		if (old_buck!=null) { 
			if(bucket.getProduct().equals(old_buck.getProduct()) && bucket.getUser().equals(old_buck.getUser())) {
				//errAlert();
				System.out.println("Error!");
//				return new ModelAndView("redirect:/home");
				return getBucketItems();
			}else {
				bucketService.add(bucket);
//				saveAlert(product);
//				errorLabel.setText("Good!");
				System.out.println("Good");
				return getBucketItems();
			}	
        } else {
        	bucketService.add(bucket);
//			saveAlert(product);
//			errorLabel.setText("Good!");
			System.out.println("Good");
			return getBucketItems();
        }
		
		
//		bucketService.add(bucket);
//		return getBucketItems();
	}

	@RequestMapping(value = "/bucket", method = RequestMethod.GET)
	public ModelAndView delete(@RequestParam String id) {
		bucketService.delete(new Bucket(Integer.parseInt(id.replaceAll("\\s",""))));
		return getBucketItems();
	}

	private ModelAndView getBucketItems() {
		ModelAndView map = new ModelAndView("bucket");
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		String userEmail = auth.getName();
		User user = userService.findByEmail(userEmail);
		map.addObject("bucketItems", bucketService.findByUser(user));
		return map;
	}

}