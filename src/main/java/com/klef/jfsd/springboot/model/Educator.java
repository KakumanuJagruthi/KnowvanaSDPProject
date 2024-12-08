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
   
}
