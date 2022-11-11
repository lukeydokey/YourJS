package com.project.yourjs;


import com.project.yourjs.db.entity.User;
import com.project.yourjs.db.repository.UserRepository;
import org.assertj.core.api.Assertions;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;

public class JUnitTest extends YourjsApplicationTests {

    @Autowired
    static UserRepository userRepository;

    @Test
    public static void userJoin() throws Exception {
        User user = new User();
        user.setUserId("JUnitTest");
        user.setUserName("제이유닛");
        user.setNickname("제이유닛");
        user.setPassword("test");
        user.setEmail("JUnit@ssafy.com");
        user.setInfoLevel(3);
        user.setActivated(true);

        userRepository.save(user);

        Assertions.assertThat(userRepository.findByUserId(user.getUserId()).isPresent());
    }

}
