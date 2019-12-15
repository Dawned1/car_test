package com.fzu.pojo;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

import javax.naming.Name;
import javax.persistence.*;

@Getter@Setter@ToString
@Entity
@Table(name = "topic")

public class Topic {
    @Id
    @Column(name = "id")
    private int Id;

    @Column(name = "type")
    private int type;

    @Column(name = "answer")
    private String answer;

    @Column(name = "score")
    private float perScore;

    @Column(name = "state")
    private int state;
}
