package com.project.yourjs.api.controller;

import com.project.yourjs.util.S3Uploader;
import lombok.RequiredArgsConstructor;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequiredArgsConstructor
public class S3Controller {

    private final S3Uploader s3Uploader;

}
