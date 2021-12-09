package project.service;

import java.util.List;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Service;

import project.dao.BucketRepository;
import project.domain.Bucket;
import project.domain.Product;
import project.domain.User;

@Service
public class BucketService {
	
	private Logger logger = LoggerFactory.getLogger(BucketService.class);

	@Autowired
	private BucketRepository bucketRepository;

	public List<Bucket> getAll() {
		logger.info("Get all buckets items");
		return bucketRepository.findAll();
	}

	public void delete(Bucket bucket) {
		logger.info("Delete bucket item {} : " + bucket);
		bucketRepository.delete(bucket);
	}

	public Bucket add(Bucket bucket) {
		logger.info("Create new bucket item {}: " + bucket);
		return bucketRepository.save(bucket);
	}
	
	public Bucket findByProduct(Product product) {
    	logger.info("Get Bucket {} by product: " + product);
    	  return bucketRepository.findByProduct(product).orElse(null);
    }   
    
    public Bucket findByProductAndUser(Product product, User user) {
    	logger.info("Get Bucket {} with product and user: " + user);
    	  return bucketRepository.findByProductAndUser(product, user).orElse(null);
    }  
	
    public List<Bucket> findByUser(User user) {
    	logger.info("Get Bucket {} by user: " + user);
    	  return bucketRepository.findByUser(user);
    } 
}