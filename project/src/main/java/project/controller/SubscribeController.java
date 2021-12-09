package project.controller;

import java.util.Date;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import project.domain.Subscribe;
import project.domain.Product;
import project.domain.User;
import project.service.SubscribeService;
import project.service.ProductsService;
import project.service.UserService;



@Controller
public class SubscribeController {
	private Logger logger = LoggerFactory.getLogger(SubscribeService.class);
	
	@Autowired
	private SubscribeService subscribeService;

	@Autowired
	private UserService userService;

	@Autowired
	private ProductsService productsService;

	@RequestMapping(value = "/subscribes", method = RequestMethod.GET)
	public ModelAndView getAllItems() {
		return getSubscribeItems();
	}

	@RequestMapping(value = "/subscribe", method = RequestMethod.POST)
	public ModelAndView create(@RequestParam String productId, @RequestParam Integer period) {
		Product product = productsService.findById(Integer.parseInt(productId));

		Subscribe subscribe = new Subscribe();
		boolean subscribeStatus = false;
		if (subscribe.isStatus()) {
            subscribeStatus = false;
        } else {
            subscribeStatus = true;
        }
		
		subscribe.setProduct(product);
		subscribe.setSubs_date(new Date());
		subscribe.setStatus(subscribeStatus);
		subscribe.setPeriod(period);

		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		String userEmail = auth.getName();
		User user = userService.findByEmail(userEmail);
		subscribe.setUser(user);
        
		Subscribe old_subs = subscribeService.findByProductAndUser(product, user);
		if (old_subs!=null) { 
			if(subscribe.getProduct().equals(old_subs.getProduct()) && subscribe.getUser().equals(old_subs.getUser())) {
				//errAlert();
				logger.info("Magazine subscription has already added!");
//				model.addAttribute("error", "Magazine subscription has already added!");
			}else {
				subscribeService.add(subscribe);
				logger.info("Magazine subscription added successfully!");
//				model.addAttribute("message", "Magazine subscription added successfully!");
			}	
        } else {
			subscribeService.add(subscribe);
			logger.info("Magazine subscription added successfully!");
//			model.addAttribute("message", "Magazine subscription added successfully!");
        }
		
		return getSubscribeItems();
	}
	

	@RequestMapping(value = "/subscribe", method = RequestMethod.GET)
	public ModelAndView delete(@RequestParam String id) {
		subscribeService.delete(new Subscribe(Integer.parseInt(id.replaceAll("\\s",""))));
		return getSubscribeItems();
	}

	private ModelAndView getSubscribeItems() {
		ModelAndView map = new ModelAndView("subscribe");
		//map.addObject("subscribeItems", subscribeService.getAll());
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		String userEmail = auth.getName();
		User user = userService.findByEmail(userEmail);
		map.addObject("subscribeItems", subscribeService.findByUser(user));
		
		return map;
	}
	
	
    @RequestMapping(value ="/make-subsc", method = RequestMethod.GET)
    public Product make(@RequestParam String productId) {
    	Product product = productsService.findById(Integer.parseInt(productId));
		return product;
    }
    
    

}