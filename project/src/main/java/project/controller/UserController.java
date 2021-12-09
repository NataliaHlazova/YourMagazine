package project.controller;


import java.io.IOException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import project.domain.User;
import project.service.ProductsService;
import project.service.SecurityService;
import project.service.UserService;

@Controller
public class UserController {
    @Autowired
    private UserService userService;
    
    @Autowired
    private ProductsService productsService;

    @Autowired
    private UserValidator userValidator;
    
    @Autowired
    private SecurityService securityService;


    @RequestMapping(value = "/registration", method = RequestMethod.GET)
    public String registration(Model model) {
        model.addAttribute("userForm", new User());

        return "registration";
    }

    @RequestMapping(value = "/registration", method = RequestMethod.POST)
    public String registration(@ModelAttribute("userForm") User userForm, BindingResult bindingResult, Model model) {
    	userValidator.validate(userForm, bindingResult);
        if (bindingResult.hasErrors()) {
            return "registration";
        }
        userService.save(userForm);
        
        securityService.autoLogin(userForm.getEmail(), userForm.getPasswordConfirm());


        return "redirect:/home";
    }

    @RequestMapping(value = {"/login"}, method = RequestMethod.GET)
    public String login(Model model, String error, String logout) {
        if (error != null)
            model.addAttribute("error", "Your username and password is invalid.");

        if (logout != null)
            model.addAttribute("message", "You have been logged out successfully.");

        return "login";
    }

    @RequestMapping(value ="/home", method = RequestMethod.GET)
    public ModelAndView welcome() {
		ModelAndView map = new ModelAndView("home");
		map.addObject("products", productsService.getAllProducts());

		return map;
    }
    
    @RequestMapping(value ="/create-product", method = RequestMethod.GET)
    public String createProduct() {
        return "createProduct";
    }
    
    @RequestMapping(value ="/my-account", method = RequestMethod.GET)
    public User myAccount(@RequestParam String email) {
    	User user = userService.findByEmail(email);
		return user;    
    }
    
	@RequestMapping(value = "/updateAccount", method = RequestMethod.POST)
	public ModelAndView myAccount(
			@RequestParam MultipartFile image, 
			@RequestParam String firstName, 
			@RequestParam String lastName,
			@RequestParam String phone) throws IOException {
		
		
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		String email = auth.getName();
		
		userService.updateUser(email, image, firstName, lastName, phone);
		return new ModelAndView("redirect:/home");
	}
	

}
