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
import javax.validation.constraints.Size;

import org.hibernate.validator.constraints.NotEmpty;

/**
 *
 * @author shreerajkarki
 */
@Entity
public class Doctor extends Address{
    @Id
    @GeneratedValue
    private int doctorId;
    @NotEmpty(message="This field cannot be empty")
    private String firstname;
    @NotEmpty(message="This field cannot be empty")
    private String lastname;
    @NotEmpty(message="This field cannot be empty")
    private String username;
    @Size(min=8, max=24, message="Must be 8 or more and less than 25")
    @NotEmpty(message="This field cannot be empty")
    private String password;
    private String phone;
    private String dob;
    
    private String email;
    @NotEmpty(message="This field cannot be empty")
    private String registration;

    public Doctor() {
    }
    
    public Doctor(String firstname, String lastname, String username, String password, String phone, String dob,
			String email, String registration) {
		this.firstname = firstname;
		this.lastname = lastname;
		this.username = username;
		this.password = password;
		this.phone = phone;
		this.dob = dob;
		this.email = email;
		this.registration = registration;
	}

	public int getDoctorId() {
        return doctorId;
    }

    public void setDoctorId(int doctorId) {
        this.doctorId = doctorId;
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

    public String getRegistration() {
        return registration;
    }

    public void setRegistration(String registration) {
        this.registration = registration;
    }

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}
    
}
