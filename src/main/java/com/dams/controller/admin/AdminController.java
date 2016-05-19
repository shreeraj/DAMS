/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.dams.controller.admin;

import com.dams.domain.Contact;
import com.dams.domain.Doctor;
import com.dams.service.ContactService;

import java.util.List;
import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import org.codemonkey.simplejavamail.Mailer;
import org.codemonkey.simplejavamail.TransportStrategy;
import org.codemonkey.simplejavamail.email.Email;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 *
 * @author raj
 */
@Controller
public class AdminController {
    @Resource
   private ContactService contactService;
    
    @RequestMapping("/admin")
    public String welcome(Model model){
        
		return "admin";
    }
    
    @RequestMapping("/admin/inquiries")
    public String showInquiries(Model model){
        Contact contact = new Contact();
	model.addAttribute("contact",contact);
        
        
        List<Contact> inquiries = contactService.getAll();
        model.addAttribute("inquiries",inquiries);
		return "inquiries";
    }
    
    @RequestMapping(value = "/admin/reply", method = RequestMethod.POST)
        public @ResponseBody String inquiryReply(@RequestBody Contact contact, HttpServletRequest request) throws InterruptedException {	
		contactService.updateAsReplied(contact);
                Thread.sleep(1000);
                
                String msg = contact.getReplyMessage();
                msg = msg+"======================================================\n"+contact.getMessage();
                String to = contact.getEmail();
                String name = contact.getName();
                
                sendSuccessAffirmation(to,name,msg,"RE:Inquiry");
                return "success";
	}	
    
    private void sendSuccessAffirmation(String emailTo, String name, String msg, String subject) {
		Email email = new Email.Builder()
			    .from("Webmaster", "doctor.a2789@gmail.com") 
			    .to(name, emailTo)
			    .subject(subject)
			    .text(msg)
			    .textHTML(msg)
			    .build();

		
		new Mailer("smtp.gmail.com", 25, "hitsad12@gmail.com", "coder@id", TransportStrategy.SMTP_TLS).sendMail((org.codemonkey.simplejavamail.email.Email) email);
//	    new Mailer("smtp.gmail.com", 587, "hitsad12@gmail.com", "coder@id", TransportStrategy.SMTP_TLS).sendMail((org.codemonkey.simplejavamail.email.Email) email);
//	    new Mailer("smtp.gmail.com", 465, "hitsad12@gmail.com", "coder@id", TransportStrategy.SMTP_SSL).sendMail((org.codemonkey.simplejavamail.email.Email) email);
		
		System.out.println("Email has been sent");
	}

    
    
}
