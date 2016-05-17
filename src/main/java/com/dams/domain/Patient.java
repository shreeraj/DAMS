/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.dams.domain;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.validation.constraints.NotNull;

/**
 *
 * @author raj
 */
@Entity
public class Patient extends Address{
    @Id
    @GeneratedValue
    private int patientId;
    @NotNull(message= "First Name can not be empty")
    private String firstname;
    private String lastname;
    @NotNull(message= "Username can not be empty")
    private String username;
    @NotNull(message= "Password can not be empty")
    private String password;
    private String phone;
    private String dob;
    @NotNull(message= "Email can not be empty")
    private String email;

    public Patient() {
    }

    public Patient(String firstname, String lastname, String phone, String dob, String email) {
        this.firstname = firstname;
        this.lastname = lastname;
        this.phone = phone;
        this.dob = dob;
        this.email = email;
    }

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
    
    public int getPatientId() {
        return patientId;
    }

    public void setPatientId(int patientId) {
        this.patientId = patientId;
    }

    public String getFirstname() {
        return firstname;
    }

    public void setFirstname(String firstname) {
        this.firstname = firstname;
    }

    public String getLastname() {
        return lastname;
    }

    public void setLastname(String lastname) {
        this.lastname = lastname;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getDob() {
        return dob;
    }

    public void setDob(String dob) {
        this.dob = dob;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }
    
    
}
