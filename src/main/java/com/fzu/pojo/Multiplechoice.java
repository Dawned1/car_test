package com.fzu.pojo;

import javax.persistence.*;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

import java.sql.Date;

@Getter@Setter@ToString
@Entity
@Table(name = "multiplechoice")

public class Multiplechoice {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "ID")
    private int id;

    @Column(name = "topicId")
    private int id_num;

    @Column(name = "text")
    private String question;

    @Column(name = "optionA")
    private String opa;

    @Column(name = "optionB")
    private String opb;

    @Column(name = "optionC")
    private String opc;

    @Column(name = "optionD")
    private String opd;

    @Column(name = "difficulty")
    private int difficult;

    @Column(name = "createdTime")
    private Date createdTime;

    @Column(name = "updatedTime")
    private Date updatedTime;
}
