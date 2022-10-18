package com.project.yourjs.common.auth;

import com.project.yourjs.api.service.UserService;
import com.project.yourjs.db.entity.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Component;

@Component
public class PUserDetailService implements UserDetailsService {

    @Autowired
    UserService userService;

    @Override
    public UserDetails loadUserByUsername(String userId) throws UsernameNotFoundException {
        User user = userService.getUserByUserId(userId);
        if(user != null) {
            PUserDetails userDetails = new PUserDetails(user);
            return userDetails;
        }
        return null;
    }
}
