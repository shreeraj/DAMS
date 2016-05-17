/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.dams.domain;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

/**
 *
 * @author raj
 */
@Entity
public class Admin extends Address{
    @Id
    @GeneratedValue
    private int adminId;
    private String username;
    private String password;
    private String role;
   
    
    
    
}
