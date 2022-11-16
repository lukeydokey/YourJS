package com.project.yourjs.db.repository;

import java.util.Optional;

import com.project.yourjs.db.entity.User;
import org.springframework.data.jpa.repository.JpaRepository;

import com.project.yourjs.db.entity.Notice;

public interface NoticeRepository extends JpaRepository<Notice, Integer>{
    Optional<Notice> findByNoticeSeq(Integer noticeSeq);
    int countAllByUser(User user);
}
