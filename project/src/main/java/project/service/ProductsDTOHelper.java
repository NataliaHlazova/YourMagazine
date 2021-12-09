package project.service;

import java.io.IOException;
import java.util.Base64;
import java.util.Date;

import org.springframework.web.multipart.MultipartFile;


import project.domain.Product;



public class ProductsDTOHelper {
	
	
	public static Product createEntity(MultipartFile file, String pr_name, String description, Date publish_date, Double price) throws IOException {
		Product product = new Product();
		product.setPr_name(pr_name);
		product.setDescription(description);
		product.setPublish_date(publish_date);
		product.setPrice(price);
		product.setEncodedImage(Base64.getEncoder().encodeToString(file.getBytes()));
		
		return product;
	}
}