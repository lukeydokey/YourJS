package com.project.yourjs.db.repository;

import com.project.yourjs.db.entity.Follow;
import org.springframework.data.mongodb.repository.MongoRepository;

public interface FollowRepository extends MongoRepository<Follow, String> {
}
