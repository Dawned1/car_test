package com.fzu.pojo;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

import javax.naming.Name;
import javax.persistence.*;

@Getter@Setter@ToString
@Entity
@Table(name = "testpaper")

public class Testpaper {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "ID")
    private int id;

    @Column(name = "text")
    private String textAll;

    @Column(name = "userId")
    private int userNumber;
}
