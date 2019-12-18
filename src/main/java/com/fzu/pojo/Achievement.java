package com.fzu.pojo;

import javax.persistence.*;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter@Setter@ToString
@Entity
@Table(name = "achievement")

public class Achievement {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "ID")
    private int id;

    @Column(name = "testPaperId")
    private int testPaper;

    @Column(name = "scoreResult")
    private float score;

    @Column(name = "judgementResult")
    private float judgementScore;

    @Column(name = "singleChoiceResult")
    private float singleChoiceScore;

    @Column(name = "multipleChoiceResult")
    private float multipleChoiceScore;
}
