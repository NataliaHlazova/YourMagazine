package project.service;

import java.util.List;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Service;

import project.dao.SubscribeRepository;
import project.domain.Product;
import project.domain.Subscribe;
import project.domain.User;

@Service
public class SubscribeService {

	private Logger logger = LoggerFactory.getLogger(SubscribeService.class);
	
	@Autowired
	private SubscribeRepository subscribeRepository;

	public List<Subscribe> getAll() {
		logger.info("Get all subscribes items");
		return subscribeRepository.findAll();
	}

	public void delete(Subscribe subscribe) {
		logger.info("Delete subscribe item {} : " + subscribe);
		subscribeRepository.delete(subscribe);
	}

	public Subscribe add(Subscribe subscribe) {
		logger.info("Create new subscribe item {}: " + subscribe);
		return subscribeRepository.save(subscribe);
	}
	
	 public Subscribe findByProduct(Product product) {
	    	logger.info("Get Subscribe {} by product: " + product);
	    	  return subscribeRepository.findByProduct(product).orElse(null);
	    }   
	    
	    public Subscribe findByProductAndUser(Product product, User user) {
	    	logger.info("Get Subscribe {} with product and user: " + user);
	    	  return subscribeRepository.findByProductAndUser(product, user).orElse(null);
	    }  
		
	    public List<Subscribe> findByUser(User user) {
	    	logger.info("Get Subscribe {} by user: " + user);
	    	  return subscribeRepository.findByUser(user);
	    } 
}