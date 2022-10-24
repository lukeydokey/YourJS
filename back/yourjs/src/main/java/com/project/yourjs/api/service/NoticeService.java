package com.project.yourjs.api.service;

import java.time.LocalDateTime;
import java.util.List;
import java.util.Optional;

import org.apache.commons.lang3.StringUtils;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.project.yourjs.api.req.NoticeReq;
import com.project.yourjs.api.res.NoticeDeleteRes;
import com.project.yourjs.api.res.NoticePatchRes;
import com.project.yourjs.api.res.NoticePostRes;
import com.project.yourjs.db.entity.Notice;
import com.project.yourjs.db.repository.NoticeRepository;

@Service
public class NoticeService {
    private final NoticeRepository noticeRepository;

    public NoticeService(NoticeRepository noticeRepository) {
        this.noticeRepository = noticeRepository;
    }
    public List<Notice> getAllNotice(){
        return noticeRepository.findAll();
    }

    @Transactional
    public NoticePostRes createNotice(String userName, NoticeReq noticeReq){
        NoticePostRes noticePostRes = new NoticePostRes();
        Notice notice = new Notice();
        notice.setUserName(userName);
        notice.setNoticeName(noticeReq.getNoticeName());
        notice.setLink(noticeReq.getLink());
        notice.setProgress(noticeReq.getProgress());
        notice.setModDtm(LocalDateTime.now());
        notice.setRegDtm(LocalDateTime.now());
        notice = noticeRepository.save(notice);
        if(notice != null){noticePostRes.setResult("success");}
        else{noticePostRes.setResult("fail");}
        return noticePostRes;
    }

    @Transactional
    public NoticePatchRes updateNotice(String userName, Integer noticeSeq, NoticeReq noticeReq){
        NoticePatchRes noticePatchRes = new NoticePatchRes();
        noticePatchRes.setResult("fail");
        Optional<Notice> oNotice = noticeRepository.findById(noticeSeq);
        if(oNotice.isPresent()){
            Notice notice = oNotice.get();
            if(StringUtils.isNotBlank(noticeReq.getNoticeName()))
                notice.setNoticeName(noticeReq.getNoticeName());
            if(StringUtils.isNotBlank(noticeReq.getLink()))
                notice.setLink(noticeReq.getLink());
            if(StringUtils.isNotBlank(noticeReq.getProgress()))
                notice.setProgress(noticeReq.getProgress());
            notice.setModDtm(LocalDateTime.now());
            notice = noticeRepository.save(notice);
            if(notice != null){
                noticePatchRes.setResult("success");
            }
        }
        return noticePatchRes; 
    }

    @Transactional
    public NoticeDeleteRes deleteNotice(String userName, Integer noticeSeq){
        NoticeDeleteRes noticeDeleteRes = new NoticeDeleteRes();
        noticeDeleteRes.setResult("fail");
        Optional<Notice> oNotice = noticeRepository.findById(noticeSeq);
        if(oNotice.isPresent()){
            Notice notice = oNotice.get();
            if(notice.getUserName().equals(userName)){
                noticeRepository.deleteById(noticeSeq);
                noticeDeleteRes.setResult("success");
            }
        }
        return noticeDeleteRes;
    }
}
