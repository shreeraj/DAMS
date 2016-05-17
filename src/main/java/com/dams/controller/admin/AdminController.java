/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.dams.controller.admin;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.dams.service.AppointmentService;

/**
 *
 * @author raj
 */
@Controller
public class AdminController {
 
    @Autowired
    AppointmentService appointmentService;
    
    @RequestMapping("/admin")
    public String welcome(Model model){
        
		return "admin";
    }
}
