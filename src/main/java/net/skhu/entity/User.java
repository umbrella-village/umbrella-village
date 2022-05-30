package net.skhu.entity;

import java.util.List;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;

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

    @OneToMany(mappedBy="user")
    List<Rental> rentals;

}


