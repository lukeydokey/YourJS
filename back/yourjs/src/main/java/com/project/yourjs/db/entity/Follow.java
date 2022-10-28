package com.project.yourjs.db.entity;

import lombok.*;
import org.springframework.data.mongodb.core.mapping.Document;

import javax.persistence.*;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
@Document(collation = "follow")
public class Follow {
    @Id
    private String id;
    private String requestUserId;
    private String responseUserId;



}
