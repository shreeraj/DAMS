/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.dams.controller.client;

import com.dams.domain.Doctor;
import com.dams.service.DoctorService;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 *
 * @author raj
 */
@Controller
public class ClientController {
   @Resource
   private DoctorService doctorService;
    
    @RequestMapping("/")
    public String start(){
        return "redirect:/client"; // How would it differ if it was forward instead?
    }
    
    @RequestMapping("/client")
    public String welcome(Model model){
      
        
       
        return "home";
    }
    
}
