package com.fzu.pojo;


import javax.persistence.*;

import lombok.Getter;
import lombok.Setter;

@Getter@Setter
@Table(name = "users")
public class User {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "ID")
    private int id;

    @Column(name = "username")
    private String userName;

}
