package net.skhu.entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

import lombok.Data;

@Data
@Entity
public class User {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    int id;

    String userid;
    String password;
    String name;
    String studentNumber;
    String email;
    String phone;
    boolean enabled;
    String userType;
    boolean admin;

}