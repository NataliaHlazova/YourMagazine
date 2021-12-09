package project.dao;

import java.util.List;
import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;

import project.domain.Bucket;
import project.domain.Product;
import project.domain.User;

public interface BucketRepository extends JpaRepository<Bucket, Integer>{
	Optional<Bucket> findByProduct(Product product);
	Optional<Bucket> findByProductAndUser(Product product, User user);
	List<Bucket> findByUser(User user);
}
