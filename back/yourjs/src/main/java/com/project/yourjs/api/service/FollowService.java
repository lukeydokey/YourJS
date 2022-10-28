package com.project.yourjs.api.service;

import com.project.yourjs.db.entity.Follow;
import com.project.yourjs.db.repository.FollowRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

//@RequiredArgsConstructor
@Service
public class FollowService {

    @Autowired
    FollowRepository followRepository;

    public Follow requestFollow(String requestUserId, String responseUserId) {
        Follow follow = new Follow();
        String id = follow.getId();
        follow.setRequestUserId(requestUserId);
        follow.setResponseUserId(responseUserId);
        followRepository.save(follow);
        return follow;
    }
}
