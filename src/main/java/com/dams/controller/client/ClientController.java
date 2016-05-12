/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.dams.controller.client;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 *
 * @author raj
 */
@Controller
public class ClientController {
    
    @RequestMapping("/")
    public String start(){
        return "redirect:/client"; // How would it differ if it was forward instead?
    }
    
    @RequestMapping("/client")
    public String welcome(Model model){
        return "home";
    }
    
}
