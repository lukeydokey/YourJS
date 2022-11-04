package com.project.yourjs.util;

import com.amazonaws.services.s3.AmazonS3Client;
import lombok.RequiredArgsConstructor;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Component;

@Component
@RequiredArgsConstructor
public class S3Downloader {

    private final AmazonS3Client amazonS3Client;
    //    @Value("${env.s3.bucketName}")
    @Value("yourjs-bucket")
    private String bucket;
}
