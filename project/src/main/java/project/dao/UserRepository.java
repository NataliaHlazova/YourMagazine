package project.dao;

import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;

import project.domain.User;

public interface UserRepository extends JpaRepository<User, Integer> {
	Optional<User> findByEmail(String email);
}