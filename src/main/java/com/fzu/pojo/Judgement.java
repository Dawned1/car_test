package com.fzu.pojo;

import javax.persistence.*;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

import java.sql.Date;

@Getter@Setter@ToString
@Entity
@Table(name = "judgement")

public class Judgement {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "ID")
    private int id;

    @Column(name = "topicId")
    private int topicId;

    @Column(name = "text")
    private String textContent;

    @Column(name = "difficulty")
    private int judDifficulty;

    @Column(name = "createdTime")
    private Date judCreatedTime;

    @Column(name = "updatedTime")
    private Date judUpdatedTime;
}
