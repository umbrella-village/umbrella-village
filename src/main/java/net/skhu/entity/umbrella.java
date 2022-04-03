package net.skhu.entity;

import java.util.List;

import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;

import com.fasterxml.jackson.annotation.JsonIgnore;

import lombok.Data;
import lombok.ToString;

@Data
@Entity
public class Umbrella {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    int id; //우산번호
    int location_id; //건물번호


    @JsonIgnore
    @ToString.Exclude
    @OneToMany(mappedBy = "location", fetch = FetchType.EAGER)
    List<Location> Locations;
}
