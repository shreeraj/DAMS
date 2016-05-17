/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.dams.controller.client;

import com.dams.domain.Doctor;
import com.dams.domain.Patient;
import com.dams.service.DoctorService;

import com.dams.service.PatientService;
import com.dams.service.SpecialityService;


import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

/**
 *
 * @author raj
 */
@Controller
public class ClientController {
   @Resource
   private DoctorService doctorService;

    @Resource
   private PatientService patientService;

   @Resource
   private SpecialityService specialityService;

   
   
    
    @RequestMapping("/")
    public String start(){
        return "redirect:/client"; // How would it differ if it was forward instead?
    }
    
    @RequestMapping("/client")
    public String welcome(Model model){
      
        
       
        return "home";
    }
    @RequestMapping("/client/signup")
    public String register(Model model){
        Patient user = new Patient();
	model.addAttribute("patient",user);
        return "signup";
    }
    @RequestMapping(value = "/client/signup", method = RequestMethod.POST)
	public String processRegister(@ModelAttribute("patient") Patient patient, RedirectAttributes redirectAttributes){
		patientService.savePatient(patient);
		redirectAttributes.addFlashAttribute("message","Registered Successfully");
		return "redirect:/client/doctors";
	}
    
       
}
