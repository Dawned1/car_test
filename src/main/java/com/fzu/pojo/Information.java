package com.fzu.pojo;

import javax.persistence.*;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

import java.sql.Date;

@Getter@Setter@ToString
@Entity
@Table(name = "information")

public class Information {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "ID")
    private int id;

    @Column(name = "infoContent")
    private String info;

    @Column(name = "createdTime")
    private Date infoCreatedTime;

    @Column(name = "updatedTime")
    private Date infoUpdatedTime;
}
