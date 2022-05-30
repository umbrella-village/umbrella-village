package net.skhu.entity;

import java.util.List;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;

import lombok.Data;

@Data
@Entity
public class Umbrella {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    int id;

    String fileName;
    boolean rentedOrNot;

    @ManyToOne
    @JoinColumn(name = "location_id")
    Location location;

    @OneToMany(mappedBy="umbrella")
    List<Rental> rentals;

}