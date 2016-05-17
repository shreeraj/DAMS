package com.dams.controller.admin;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.dams.domain.Appointment;
import com.dams.service.AppointmentService;

@Controller
@RequestMapping("/client/appointments")
public class AppointmentController {
	
	@Resource
	private AppointmentService appointmentService;
	
	@RequestMapping
	public String saveAppointment(@ModelAttribute("appointmentForm") Appointment appointment, RedirectAttributes redirectAttributes){
		if(appointmentService.checkIfSlotAvailable(appointment.getDocId(),appointment.getDateTimeStamp(), appointment.getTime())){
			redirectAttributes.addFlashAttribute("message","Thank you! Your appointment time is fixed.");
		}else{
			redirectAttributes.addFlashAttribute("message","Sorry, the time is already taken, please choose another available time");
		}
		return "appointment";
	}
	
	@RequestMapping(value = "/register")
	public String registerAppointment(Model model){
		Appointment appointment = new Appointment();
		model.addAttribute("appointment", appointment);
		return "registerAppointment";
	}
	
}
