package com.project.yourjs.api.controller;

import com.project.yourjs.api.res.AwardPostRes;
import com.project.yourjs.api.service.FollowService;
import com.project.yourjs.db.entity.Follow;
import io.swagger.v3.oas.annotations.Operation;
import io.swagger.v3.oas.annotations.media.Content;
import io.swagger.v3.oas.annotations.media.Schema;
import io.swagger.v3.oas.annotations.responses.ApiResponse;
import io.swagger.v3.oas.annotations.responses.ApiResponses;
import io.swagger.v3.oas.annotations.tags.Tag;
import lombok.RequiredArgsConstructor;
import org.springframework.http.ResponseEntity;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.security.core.Authentication;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@Tag(name = "Follow",description = "팔로우 신청 API")
@RequiredArgsConstructor
@RestController
@RequestMapping("follow")
public class FollowController {

    private final FollowService followService;

    @Operation(summary = "팔로우 요청 생성", description = "유저의 [팔로우 요청]을 생성한다")
    @ApiResponses({
            @ApiResponse(responseCode = "200", description = "OK", content = @Content(schema = @Schema(implementation = Follow.class))),
            @ApiResponse(responseCode = "400", description = "BAD REQUEST", content = @Content(schema = @Schema(hidden = true))),
            @ApiResponse(responseCode = "404", description = "NOT FOUND", content = @Content(schema = @Schema(hidden = true))),
            @ApiResponse(responseCode = "500", description = "INTERNAL SERVER ERROR", content = @Content(schema = @Schema(hidden = true)))
    })
    @PostMapping
    @PreAuthorize("hasAnyRole('USER','ADMIN')")
    public ResponseEntity<?> requestFollow(Authentication authentication, @RequestBody String responseUserId) {
        String requestUserId = authentication.getName();
        return ResponseEntity.ok(followService.requestFollow(requestUserId, responseUserId));
    }
}
