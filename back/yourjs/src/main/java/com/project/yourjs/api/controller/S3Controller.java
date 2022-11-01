package com.project.yourjs.api.controller;

import com.amazonaws.services.s3.AmazonS3Client;
import com.amazonaws.services.s3.model.CannedAccessControlList;
import com.amazonaws.services.s3.model.ObjectMetadata;
import com.amazonaws.services.s3.model.PutObjectRequest;
import com.project.yourjs.util.S3Uploader;
import io.swagger.v3.oas.annotations.responses.ApiResponse;
import lombok.RequiredArgsConstructor;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@RestController
@RequiredArgsConstructor
@RequestMapping("aws")
public class S3Controller {

    private final S3Uploader s3Uploader;
    private final AmazonS3Client amazonS3Client;

    @PostMapping()
    public String uploadFile(@RequestPart MultipartFile multipartFile) throws IOException {
        s3Uploader.uploadFiles(multipartFile, "testhibeen1");
        return "확인해보세요!";
    }
}

