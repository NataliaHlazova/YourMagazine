package project;

import static org.hamcrest.collection.IsCollectionWithSize.hasSize;
import static org.junit.Assert.assertThat;
import static org.junit.Assert.assertTrue;

import java.util.Arrays;
import java.util.Date;
import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.autoconfigure.orm.jpa.DataJpaTest;
import org.springframework.test.context.junit4.SpringRunner;

import project.dao.BucketRepository;
import project.dao.ProductRepository;
import project.dao.SubscribeRepository;
import project.dao.UserRepository;
import project.domain.Bucket;
import project.domain.Product;
import project.domain.Subscribe;
import project.domain.User;
import project.domain.UserRole;
import project.service.BucketService;
import project.service.ProductsService;
import project.service.SubscribeService;
import project.service.UserService;



@RunWith(SpringRunner.class)
@DataJpaTest
public class ApplicationTests {

	@Autowired
	private UserService userService;

	@Autowired
	private ProductsService productsService;

	@Autowired
	private BucketService bucketService;
	
	@Autowired
	private SubscribeService subscribeService;

	@Autowired
	private UserRepository userRepository;

	@Autowired
	private ProductRepository productRepository;

	@Autowired
	private BucketRepository bucketRepository;
	
	@Autowired
	private SubscribeRepository subscribeRepository;

	@SuppressWarnings("deprecation")
	@Test
	public void testSaveUser() {
		List<User> users = userRepository.findAll();
		assertThat(users, hasSize(0));

		User user = new User();
		user.setEmail("1@gmail.com");
		user.setFirstName("1");
		user.setLastName("1");
		user.setPassword("1");
		user.setPasswordConfirm("1");
		user.setPhone("1");
		user.setEncodedImage("1");
		user.setRole(UserRole.ROLE_USER);

		userService.save(user);

		users = userRepository.findAll();
		assertThat(users, hasSize(1));

		User userFromDb = users.get(0);
		assertTrue(userFromDb.getEmail().equals(user.getEmail()));
		assertTrue(userFromDb.getFirstName().equals(user.getFirstName()));
		assertTrue(userFromDb.getLastName().equals(user.getLastName()));
		assertTrue(userFromDb.getPhone().equals(user.getPhone()));
		assertTrue(userFromDb.getEncodedImage().equals(user.getEncodedImage()));
		assertTrue(userFromDb.getRole().equals(user.getRole()));
	}
	
	@SuppressWarnings("deprecation")
	@Test
	public void testUpdateUser() throws Exception {
		List<User> users = userRepository.findAll();
		assertThat(users, hasSize(0));
		
		User user = new User();
		user.setEmail("1@gmail.com");
		user.setFirstName("1");
		user.setLastName("1");
		user.setPassword("1");
		user.setPasswordConfirm("1");
		user.setPhone("1");
		user.setEncodedImage("1");
		user.setRole(UserRole.ROLE_USER);
		
		userRepository.save(user);
		
		users = userRepository.findAll();
		assertThat(users, hasSize(1));
	    
	    User findByEmail = userService.findByEmail(user.getEmail());

	    userRepository.save(findByEmail);

	    User user2 = new User();
	    user2.setEmail(user.getEmail());
	    user2.setFirstName(user.getFirstName());
	    user2.setLastName(user.getLastName());
	    user2.setPhone(user.getPhone());
	    user2.setEncodedImage(user.getEncodedImage());

	    userRepository.save(user2);
	}


	@SuppressWarnings("deprecation")
	@Test
	public void testFindByEmail() {
		List<User> users = userRepository.findAll();
		assertThat(users, hasSize(0));

		User user = new User();
		user.setEmail("myCustomEmail@gmail.com");
		user.setFirstName("2");
		user.setLastName("2");
		user.setPassword("2");
		user.setPasswordConfirm("2");
		user.setPhone("2");
		user.setEncodedImage("2");
		user.setRole(UserRole.ROLE_USER);

		userRepository.save(user);

		users = userRepository.findAll();
		assertThat(users, hasSize(1));

		User findByEmail = userService.findByEmail(user.getEmail());

		assertTrue(findByEmail.getEmail().equals(user.getEmail()));
		assertTrue(findByEmail.getFirstName().equals(user.getFirstName()));
		assertTrue(findByEmail.getLastName().equals(user.getLastName()));
		assertTrue(findByEmail.getPhone().equals(user.getPhone()));
		assertTrue(findByEmail.getEncodedImage().equals(user.getEncodedImage()));
		assertTrue(findByEmail.getRole().equals(user.getRole()));
	}

	@SuppressWarnings("deprecation")
	@Test
	public void testSaveProduct() {
		List<Product> products = productRepository.findAll();
		assertThat(products, hasSize(0));

		Product product = new Product();
		product.setPr_name("1");
		product.setDescription("11111");
		product.setPublish_date(new Date());
		product.setPrice(1d);
		product.setEncodedImage("1");
		

		productsService.save(product);

		products = productRepository.findAll();
		assertThat(products, hasSize(1));

		Product productFromDb = products.get(0);
		assertTrue(productFromDb.getPr_name().equals(product.getPr_name()));
		assertTrue(productFromDb.getDescription().equals(product.getDescription()));
		assertTrue(productFromDb.getEncodedImage().equals(product.getEncodedImage()));
		assertTrue(productFromDb.getPrice().equals(product.getPrice()));
		assertTrue(productFromDb.getPublish_date().equals(product.getPublish_date()));
	}

	@SuppressWarnings("deprecation")
	@Test
	public void testFindById() {
		List<Product> products = productRepository.findAll();
		assertThat(products, hasSize(0));

		Product product = new Product();
		product.setPr_name("1");
		product.setDescription("11111");
		product.setEncodedImage("1");
		product.setPrice(1d);
		product.setPublish_date(new Date());

		productRepository.save(product);

		products = productRepository.findAll();
		assertThat(products, hasSize(1));

		Product productFromDb = productsService.findById(products.get(0).getid());

		assertTrue(productFromDb.getPr_name().equals(product.getPr_name()));
		assertTrue(productFromDb.getDescription().equals(product.getDescription()));
		assertTrue(productFromDb.getEncodedImage().equals(product.getEncodedImage()));
		assertTrue(productFromDb.getPrice().equals(product.getPrice()));
		assertTrue(productFromDb.getPublish_date().equals(product.getPublish_date()));
	}

	@SuppressWarnings("deprecation")
	@Test
	public void testGetAllProducts() {
		List<Product> products = productRepository.findAll();
		assertThat(products, hasSize(0));

		Product product = new Product();
		product.setPr_name("1");
		product.setDescription("1111");
		product.setEncodedImage("1");
		product.setPrice(1d);
		product.setPublish_date(new Date());

		Product product2 = new Product();
		product2.setPr_name("2");
		product2.setDescription("2222");
		product2.setEncodedImage("2");
		product2.setPrice(2d);
		product2.setPublish_date(new Date());

		productRepository.saveAll(Arrays.asList(product, product2));

		products = productRepository.findAll();
		assertThat(products, hasSize(2));

		List<Product> productsFromDb = productsService.getAllProducts();

		assertTrue(productsFromDb.get(0).getPr_name().equals(product.getPr_name()));
		assertTrue(productsFromDb.get(0).getDescription().equals(product.getDescription()));
		assertTrue(productsFromDb.get(0).getEncodedImage().equals(product.getEncodedImage()));
		assertTrue(productsFromDb.get(0).getPrice().equals(product.getPrice()));
		assertTrue(productsFromDb.get(0).getPublish_date().equals(product.getPublish_date()));

		assertTrue(productsFromDb.get(1).getPr_name().equals(product2.getPr_name()));
		assertTrue(productsFromDb.get(1).getDescription().equals(product2.getDescription()));
		assertTrue(productsFromDb.get(1).getEncodedImage().equals(product2.getEncodedImage()));
		assertTrue(productsFromDb.get(1).getPrice().equals(product2.getPrice()));
		assertTrue(productsFromDb.get(1).getPublish_date().equals(product2.getPublish_date()));
	}

	
	@SuppressWarnings("deprecation")
	@Test
	public void testUpdateProduct() throws Exception {
		List<Product> products = productRepository.findAll();
		assertThat(products, hasSize(0));
		
		Product product = new Product();
		product.setPr_name("1");
		product.setDescription("11111");
		product.setEncodedImage("1");
		product.setPrice(1d);
		product.setPublish_date(new Date());
		
		productRepository.save(product);
		
		products = productRepository.findAll();
		assertThat(products, hasSize(1));
	    
	    Product productFromDb = productsService.findById(products.get(0).getid());

	    productRepository.save(productFromDb);


	    Product product2 = new Product();
	    product2.setPr_name(product.getPr_name());
	    product2.setDescription(product.getDescription());
	    product2.setPrice(product.getPrice());
	    product2.setPublish_date(product.getPublish_date());
	    product2.setEncodedImage(product.getEncodedImage());

	    productRepository.save(product2);
	}

	
	
	@SuppressWarnings("deprecation")
	@Test
	public void testAddToBucket() {
		User user = new User();
		user.setEmail("1@gmail.com");
		user.setFirstName("1");
		user.setLastName("1");
		user.setPassword("1");
		user.setPasswordConfirm("1");
		user.setPhone("1");
		user.setEncodedImage("1");
		user.setRole(UserRole.ROLE_USER);

		userService.save(user);

		User userFromDb = userRepository.findAll().stream().findFirst().get();

		List<Product> products = productRepository.findAll();
		assertThat(products, hasSize(0));

		Product product = new Product();
		product.setPr_name("1");
		product.setDescription("1111");
		product.setEncodedImage("1");
		product.setPrice(1d);
		product.setPublish_date(new Date());

		productsService.save(product);

		Product productFromDb = productRepository.findAll().stream().findFirst().get();

		Bucket bucket = new Bucket();
		bucket.setProduct(productFromDb);
		bucket.setUser(userFromDb);
		bucket.setBuck_date(new Date());

		List<Bucket> buckets = bucketRepository.findAll();
		assertThat(buckets, hasSize(0));

		bucketService.add(bucket);

		buckets = bucketRepository.findAll();
		assertThat(buckets, hasSize(1));

		Bucket bucketFromDb = buckets.get(0);

		assertTrue(bucketFromDb.getProduct().equals(productFromDb));
		assertTrue(bucketFromDb.getUser().equals(userFromDb));
		assertTrue(bucketFromDb.getBuck_date().equals(bucket.getBuck_date()));
	}

	@SuppressWarnings("deprecation")
	@Test
	public void testDeleteFromBucket() {
		User user = new User();
		user.setEmail("1@gmail.com");
		user.setFirstName("1");
		user.setLastName("1");
		user.setPassword("1");
		user.setPasswordConfirm("1");
		user.setPhone("1");
		user.setEncodedImage("1");
		user.setRole(UserRole.ROLE_USER);

		userService.save(user);

		User userFromDb = userRepository.findAll().stream().findFirst().get();

		List<Product> products = productRepository.findAll();
		assertThat(products, hasSize(0));

		Product product = new Product();
		product.setPr_name("1");
		product.setDescription("1111");
		product.setEncodedImage("1");
		product.setPrice(1d);
		product.setPublish_date(new Date());

		Product product2 = new Product();
		product2.setPr_name("2");
		product2.setDescription("12211");
		product2.setEncodedImage("2");
		product2.setPrice(2d);
		product2.setPublish_date(new Date());

		productRepository.saveAll(Arrays.asList(product, product2));

		List<Product> productsFromDb = productRepository.findAll();

		Bucket bucket = new Bucket();
		bucket.setProduct(productsFromDb.get(0));
		bucket.setUser(userFromDb);
		bucket.setBuck_date(new Date());

		Bucket bucket2 = new Bucket();
		bucket2.setProduct(productsFromDb.get(1));
		bucket2.setUser(userFromDb);
		bucket2.setBuck_date(new Date());

		List<Bucket> buckets = bucketRepository.findAll();
		assertThat(buckets, hasSize(0));

		bucketRepository.saveAll(Arrays.asList(bucket, bucket2));

		buckets = bucketRepository.findAll();
		assertThat(buckets, hasSize(2));

		bucketService.delete(buckets.get(0));

		buckets = bucketRepository.findAll();
		assertThat(buckets, hasSize(1));
	}

	@SuppressWarnings("deprecation")
	@Test
	public void testGetAllBucket() {
		User user = new User();
		user.setEmail("1@gmail.com");
		user.setFirstName("1");
		user.setLastName("1");
		user.setPassword("1");
		user.setPasswordConfirm("1");
		user.setPhone("1");
		user.setEncodedImage("1");
		user.setRole(UserRole.ROLE_USER);

		userService.save(user);

		User userFromDb = userRepository.findAll().stream().findFirst().get();

		List<Product> products = productRepository.findAll();
		assertThat(products, hasSize(0));

		Product product = new Product();
		product.setPr_name("1");
		product.setDescription("1111");
		product.setEncodedImage("1");
		product.setPrice(1d);
		product.setPublish_date(new Date());

		Product product2 = new Product();
		product2.setPr_name("2");
		product2.setDescription("12221");
		product2.setEncodedImage("2");
		product2.setPrice(2d);
		product2.setPublish_date(new Date());

		productRepository.saveAll(Arrays.asList(product, product2));

		List<Product> productsFromDb = productRepository.findAll();


		Bucket bucket = new Bucket();
		bucket.setProduct(productsFromDb.get(0));
		bucket.setUser(userFromDb);
		bucket.setBuck_date(new Date());

		Bucket bucket2 = new Bucket();
		bucket2.setProduct(productsFromDb.get(1));
		bucket2.setUser(userFromDb);
		bucket2.setBuck_date(new Date());

		List<Bucket> buckets = bucketRepository.findAll();
		assertThat(buckets, hasSize(0));

		bucketRepository.saveAll(Arrays.asList(bucket, bucket2));

		List<Bucket> bucketsFromDb = bucketService.getAll();
		assertThat(bucketsFromDb, hasSize(2));
	}
	
	
	@SuppressWarnings("deprecation")
	@Test
	public void testAddToSubscribe() {
		User user = new User();
		user.setEmail("1@gmail.com");
		user.setFirstName("1");
		user.setLastName("1");
		user.setPassword("1");
		user.setPasswordConfirm("1");
		user.setPhone("1");
		user.setEncodedImage("1");
		user.setRole(UserRole.ROLE_USER);

		userService.save(user);

		User userFromDb = userRepository.findAll().stream().findFirst().get();

		List<Product> products = productRepository.findAll();
		assertThat(products, hasSize(0));

		Product product = new Product();
		product.setPr_name("1");
		product.setDescription("1111");
		product.setEncodedImage("1");
		product.setPrice(1d);
		product.setPublish_date(new Date());

		productsService.save(product);

		Product productFromDb = productRepository.findAll().stream().findFirst().get();

		Subscribe subscribe = new Subscribe();
		subscribe.setProduct(productFromDb);
		subscribe.setUser(userFromDb);
		subscribe.setSubs_date(new Date());
		subscribe.setPeriod(10);
		subscribe.setStatus(true);

		List<Subscribe> subscribes = subscribeRepository.findAll();
		assertThat(subscribes, hasSize(0));

		subscribeService.add(subscribe);

		subscribes = subscribeRepository.findAll();
		assertThat(subscribes, hasSize(1));

		Subscribe subscribeFromDb = subscribes.get(0);

		assertTrue(subscribeFromDb.getProduct().equals(productFromDb));
		assertTrue(subscribeFromDb.getUser().equals(userFromDb));
		assertTrue(subscribeFromDb.getSubs_date().equals(subscribe.getSubs_date()));
	}

	@SuppressWarnings("deprecation")
	@Test
	public void testDeleteFromSubscribe() {
		User user = new User();
		user.setEmail("1@gmail.com");
		user.setFirstName("1");
		user.setLastName("1");
		user.setPassword("1");
		user.setPasswordConfirm("1");
		user.setPhone("1");
		user.setEncodedImage("1");
		user.setRole(UserRole.ROLE_USER);

		userService.save(user);

		User userFromDb = userRepository.findAll().stream().findFirst().get();

		List<Product> products = productRepository.findAll();
		assertThat(products, hasSize(0));

		Product product = new Product();
		product.setPr_name("1");
		product.setDescription("1111");
		product.setEncodedImage("1");
		product.setPrice(1d);
		product.setPublish_date(new Date());

		Product product2 = new Product();
		product2.setPr_name("2");
		product2.setDescription("12211");
		product2.setEncodedImage("2");
		product2.setPrice(2d);
		product2.setPublish_date(new Date());

		productRepository.saveAll(Arrays.asList(product, product2));

		List<Product> productsFromDb = productRepository.findAll();

		Subscribe subscribe = new Subscribe();
		subscribe.setProduct(productsFromDb.get(0));
		subscribe.setUser(userFromDb);
		subscribe.setSubs_date(new Date());
		subscribe.setPeriod(10);
		subscribe.setStatus(true);

		Subscribe subscribe2 = new Subscribe();
		subscribe2.setProduct(productsFromDb.get(1));
		subscribe2.setUser(userFromDb);
		subscribe2.setSubs_date(new Date());
		subscribe2.setPeriod(10);
		subscribe2.setStatus(true);

		List<Subscribe> subscribes = subscribeRepository.findAll();
		assertThat(subscribes, hasSize(0));

		subscribeRepository.saveAll(Arrays.asList(subscribe, subscribe2));

		subscribes = subscribeRepository.findAll();
		assertThat(subscribes, hasSize(2));

		subscribeService.delete(subscribes.get(0));

		subscribes = subscribeRepository.findAll();
		assertThat(subscribes, hasSize(1));
	}

	@SuppressWarnings("deprecation")
	@Test
	public void testGetAllSubscribe() {
		User user = new User();
		user.setEmail("1@gmail.com");
		user.setFirstName("1");
		user.setLastName("1");
		user.setPassword("1");
		user.setPasswordConfirm("1");
		user.setPhone("1");
		user.setEncodedImage("1");
		user.setRole(UserRole.ROLE_USER);

		userService.save(user);

		User userFromDb = userRepository.findAll().stream().findFirst().get();

		List<Product> products = productRepository.findAll();
		assertThat(products, hasSize(0));

		Product product = new Product();
		product.setPr_name("1");
		product.setDescription("1111");
		product.setEncodedImage("1");
		product.setPrice(1d);
		product.setPublish_date(new Date());

		Product product2 = new Product();
		product2.setPr_name("2");
		product2.setDescription("12221");
		product2.setEncodedImage("2");
		product2.setPrice(2d);
		product2.setPublish_date(new Date());

		productRepository.saveAll(Arrays.asList(product, product2));

		List<Product> productsFromDb = productRepository.findAll();


		Subscribe subscribe = new Subscribe();
		subscribe.setProduct(productsFromDb.get(0));
		subscribe.setUser(userFromDb);
		subscribe.setSubs_date(new Date());
		subscribe.setPeriod(10);
		subscribe.setStatus(true);

		Subscribe subscribe2 = new Subscribe();
		subscribe2.setProduct(productsFromDb.get(1));
		subscribe2.setUser(userFromDb);
		subscribe2.setSubs_date(new Date());
		subscribe2.setPeriod(10);
		subscribe2.setStatus(true);

		List<Subscribe> buckets = subscribeRepository.findAll();
		assertThat(buckets, hasSize(0));

		subscribeRepository.saveAll(Arrays.asList(subscribe, subscribe2));

		List<Subscribe> subscribesFromDb = subscribeService.getAll();
		assertThat(subscribesFromDb, hasSize(2));
	}

	
	
	
	
	
}