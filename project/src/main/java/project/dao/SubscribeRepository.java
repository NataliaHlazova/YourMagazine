package project.dao;

import java.util.List;
import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;

import project.domain.Product;
import project.domain.Subscribe;
import project.domain.User;

public interface SubscribeRepository extends JpaRepository<Subscribe, Integer>{
	Optional<Subscribe> findByProduct(Product product);
	Optional<Subscribe> findByProductAndUser(Product product, User user);
	List<Subscribe> findByUser(User user);
}
