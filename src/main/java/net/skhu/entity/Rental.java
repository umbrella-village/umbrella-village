package net.skhu.entity;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

import lombok.Data;

@Data
@Entity
public class Rental {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    int rentalid;

    Date startdate;
    Date returndate;

    @ManyToOne
    @JoinColumn(name="user_id")
    User user;
    
    @ManyToOne
    @JoinColumn(name="location_id")
    Location location;
    
    @ManyToOne
    @JoinColumn(name="umbrella_id")
    Umbrella umbrella;

}

