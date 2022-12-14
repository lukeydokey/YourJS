package com.project.yourjs.db.repository;

import java.util.Optional;

import org.springframework.data.jpa.repository.EntityGraph;
import org.springframework.data.jpa.repository.JpaRepository;

import com.project.yourjs.db.entity.User;

public interface UserRepository extends JpaRepository<User, Long> {
   @EntityGraph(attributePaths = "authorities")
   Optional<User> findOneWithAuthoritiesByUserName(String userName);

   @EntityGraph(attributePaths = "authorities")
   Optional<User> findOneWithAuthoritiesByUserId(String userId);

   @EntityGraph(attributePaths = "authorities")
   Optional<User> findOneWithAuthoritiesByNickname(String nickname);

   Optional<User> findByUserId(String userId);

   void deleteByUserId(String userId);
}
