package com.ssafy.handam.user.domain.repository;

import com.ssafy.handam.user.domain.model.entity.User;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;
import java.util.Optional;

public interface UserRepository extends JpaRepository<User, Long> {
    List<User> findByNicknameContaining(String keyword);
    boolean existsByEmail(String email);
    Optional<User> findByEmail(String email);
}