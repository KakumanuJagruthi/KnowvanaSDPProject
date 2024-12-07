package com.klef.jfsd.springboot.model;

import jakarta.persistence.*;
import java.util.List;

@Entity
@Table(name = "educator_table")
public class Educator {
    
    @Id
    @Column(name = "educator_username", length = 50)
    private String username;
    
    @Column(name = "educator_password", length = 50)
    private String password;
    
    @Column(name = "educator_email", nullable = false, unique = true, length = 50)
    private String email;
    
    // One-to-many relationship with Course
    @OneToMany(mappedBy = "educator", cascade = CascadeType.ALL, fetch = FetchType.LAZY)
    private List<Course> courses;

    // Getters and Setters
    public String getUsername() {
        return username;
    }
    public void setUsername(String username) {
        this.username = username;
    }
    public String getPassword() {
        return password;
    }
    public void setPassword(String password) {
        this.password = password;
    }
    public String getEmail() {
        return email;
    }
    public void setEmail(String email) {
        this.email = email;
    }
    public List<Course> getCourses() {
        return courses;
    }
    public void setCourses(List<Course> courses) {
        this.courses = courses;
    }
}
