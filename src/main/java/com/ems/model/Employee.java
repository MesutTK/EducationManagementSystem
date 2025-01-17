package com.ems.model;

import lombok.Data;
import lombok.NoArgsConstructor;
import jakarta.persistence.*;

@Entity
@Data
@NoArgsConstructor
public class Employee {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    private String name;
    private String role;

    @ManyToOne
    @JoinColumn(name = "department_id")
    private Department department;
}
