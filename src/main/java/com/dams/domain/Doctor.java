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

import org.hibernate.validator.constraints.Email;
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
    @NotEmpty(message= "Doctor First Name Can Not be empty")
    private String firstname;
    @NotEmpty(message= "Doctor Last Name Can Not be empty")
    private String lastname;
    @NotEmpty(message= " User Name Can Not be empty")
    private String username;
    @NotEmpty(message= "Password Can Not be empty")
    private String password;
    private String phone;
    private String dob;
    @Email(message="Must be email Format") @NotEmpty(message= "Doctor First Name Can Not be empty")
    private String email;
    @NotEmpty(message= "Registration Can Not be empty")
    private String registration;

    private String specialityId;
    
    public Doctor() {
    }
    
      
    
    public Doctor(String firstname, String lastname, String username, String password, String phone, String dob,
			String email, String registration, String specialityId) {
		
		this.firstname = firstname;
		this.lastname = lastname;
		this.username = username;
		this.password = password;
		this.phone = phone;
		this.dob = dob;
		this.email = email;
		this.registration = registration;
		this.specialityId = specialityId;
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



	public String getSpecialityId() {
		return specialityId;
	}



	public void setSpecialityId(String specialityId) {
		this.specialityId = specialityId;
	}
    
    
    
    
}
