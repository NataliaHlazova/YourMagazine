package project.service;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.stereotype.Service;

import project.dao.SecurityRepository;

@Service
public class SecurityService implements SecurityRepository{
	 @Autowired
	    private AuthenticationManager authenticationManager;

	    @Autowired
	    private UserDetailsService userDetailsService;

	    private static final Logger logger = LoggerFactory.getLogger(SecurityService.class);

	    @Override
	    public String findLoggedInEmail() {
	        Object userDetails = SecurityContextHolder.getContext().getAuthentication().getDetails();
	        if (userDetails instanceof UserDetails) {
	            return ((UserDetails)userDetails).getUsername();
	        }

	        return null;
	    }

	    @Override
	    public void autoLogin(String email, String password) {
	        UserDetails userDetails = userDetailsService.loadUserByUsername(email);
	        UsernamePasswordAuthenticationToken usernamePasswordAuthenticationToken = new UsernamePasswordAuthenticationToken(userDetails, password, userDetails.getAuthorities());

	        authenticationManager.authenticate(usernamePasswordAuthenticationToken);

	        if (usernamePasswordAuthenticationToken.isAuthenticated()) {
	            SecurityContextHolder.getContext().setAuthentication(usernamePasswordAuthenticationToken);
	            logger.debug(String.format("Auto login %s successfully!", email));
	        }
	    }
	}