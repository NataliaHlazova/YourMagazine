package project.service;

import java.io.IOException;
import java.util.Base64;
import java.util.Date;
import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import project.dao.ProductRepository;
import project.domain.Product;


@Service
public class ProductsService {
	
	private Logger logger = LoggerFactory.getLogger(ProductsService.class);
	
	@Autowired
	private ProductRepository productRepository;
	
	public Product save(Product product) {
		logger.info("Create product item {} : " + product);
		return productRepository.save(product);
	}
	
	public List<Product> getAllProducts(){
		logger.info("Get all products items");
		return productRepository.findAll();
	}
	
	public Product findById(Integer id) {
		logger.info("Get product item by id: " + id);
		return productRepository.findById(id).orElse(null);
	}

	
	public void update(Integer id, MultipartFile image, String pr_name, String description, Date publish_date, Double price) throws IOException {
		logger.info("Update product with id: " + id);
		Product product = productRepository.findById(id).orElse(null);
		product.setEncodedImage(Base64.getEncoder().encodeToString(image.getBytes())); 
        product.setPr_name(pr_name);
        product.setDescription(description);
        product.setPublish_date(publish_date);
        product.setPrice(price);
		productRepository.save(product);
		
	}
	
	

	
}
