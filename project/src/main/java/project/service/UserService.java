package project.service;


import java.io.IOException;
import java.util.Base64;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import project.dao.UserRepository;
import project.domain.User;
import project.domain.UserRole;

@Service
public class UserService {
	
	private Logger logger = LoggerFactory.getLogger(UserService.class);
    @Autowired
    private UserRepository userRepository;

    @Autowired
    private PasswordEncoder bCryptPasswordEncoder;

    public void save(User user) {
    	logger.info("Register new user {} : " + user);
        user.setPassword(bCryptPasswordEncoder.encode(user.getPassword()));
        user.setPassword(bCryptPasswordEncoder.encode(user.getPasswordConfirm()));
        user.setRole(UserRole.ROLE_USER);
        userRepository.save(user);
    }

    public User findByEmail(String email) {
    	logger.info("Get user {} by email: " + email);
    	  return userRepository.findByEmail(email).orElse(null);
    }    
    
    
    public void updateUser(String email, MultipartFile image, String firstName, String lastName, String phone)throws IOException {
    	logger.info("Update user with email: " + email);
        User user = userRepository.findByEmail(email).orElse(null);
        user.setEncodedImage(Base64.getEncoder().encodeToString(image.getBytes())); 
        user.setFirstName(firstName);
        user.setLastName(lastName);
        user.setPhone(phone);
        userRepository.save(user);
    }
    
    
	

}
