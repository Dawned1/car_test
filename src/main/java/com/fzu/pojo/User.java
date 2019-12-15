package com.fzu.pojo;


import javax.persistence.*;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

import java.sql.Date;

@Getter@Setter@ToString
@Entity
@Table(name = "users")
public class User {
    //Id为主键且自增长
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "ID")
    private int id;

    @Column(name = "username")
    private String userName;

    @Column(name = "pwd")
    private String password;

    @Column(name = "fullName")
    private String name;

    @Column(name = "sex")
    private String sex;

    @Column(name = "cardID")
    private  String cardId;

    @Column(name = "mail")
    private  String email;

    @Column(name = "phone")
    private  String phoneNumber;

    @Column(name = "address")
    private  String address;

    @Column(name = "roleId")
    private  int role;

    @Column(name = "createdTime")
    private Date userCreatedTime;

    @Column(name = "updatedTime")
    private Date userUpdatedTime;
}
