package com.fzu.pojo;

import javax.persistence.*;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

import java.sql.Date;

@Getter@Setter@ToString
@Entity
@Table(name = "completion")

public class Completion {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "ID")
    private int id;

    @Column(name = "topicId")
    private int topicId;

    @Column(name = "text")
    private String textContent;

    @Column(name = "difficulty")
    private int compDifficulty;

    @Column(name = "createdTime")
    private Date compCreatedTime;

    @Column(name = "updatedTime")
    private Date compUpdatedTime;
}
