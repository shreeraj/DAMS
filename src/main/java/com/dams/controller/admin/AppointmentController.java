package com.dams.controller.admin;

import java.text.ParseException;
import java.text.SimpleDateFormat;

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
		String date = appointment.getAppDate();
		SimpleDateFormat dateFormat = new SimpleDateFormat("MM/dd/yyyy");
		try {
			java.util.Date dd = dateFormat.parse(date);
			appointment.setDateTimeStamp(dd.getTime());
			if(appointmentService.checkIfSlotAvailable(appointment)){

				appointmentService.saveAppointment(appointment);
				redirectAttributes.addFlashAttribute("message","Thank you! Your appointment time is fixed.");
			}else{
				redirectAttributes.addFlashAttribute("message","Sorry, the time is already taken, please choose another available time");
			}
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
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
