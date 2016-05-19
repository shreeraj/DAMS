package com.dams.controller.client;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.List;

import javax.annotation.Resource;
import javax.swing.text.html.HTMLDocument.HTMLReader.SpecialAction;

import org.codemonkey.simplejavamail.Mailer;
import org.codemonkey.simplejavamail.TransportStrategy;
import org.codemonkey.simplejavamail.email.Email;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.dams.domain.Appointment;

import com.dams.domain.DocTime;
import com.dams.domain.Doctor;
import com.dams.domain.Patient;
import com.dams.service.AppointmentService;
import com.dams.service.DoctorService;
import com.dams.service.PatientService;
import com.dams.service.SpecialityService;
import com.dams.service.TimeService;

@Controller
@RequestMapping("/client/doctors")
public class ClientDoctorController {
	@Resource
	private DoctorService doctorService;
	
	@Resource
	private SpecialityService specialityService;
	
	@Resource
	private TimeService timeService;
	
	@Resource
	private AppointmentService appointmentService;
	
	@Resource
	private PatientService patientService;
	
	@RequestMapping
	public String seeDoctors(Model model) {
		model.addAttribute("allDoctors", doctorService.getAll());
		model.addAttribute("speciality", specialityService.getAllSpecialities());
		return "clientDoctors";
	}
	
	@RequestMapping(value="doctorDetail/{doctorId}")
	public String doctorDetail(@PathVariable int doctorId, Model model){
		Doctor doc = doctorService.findById(doctorId);
		List<DocTime> docTimes = timeService.getTimeByDoctorId(doctorId);
		model.addAttribute("doctor",doc);
		model.addAttribute("docTimes",docTimes);
		model.addAttribute("appointmentForm", new Appointment());
		return "doctorDetail";
	}
	
	@RequestMapping(value="processAppointment")
	public String processAppointment(Appointment appointment, Model model, RedirectAttributes redirectAttributes){
		String date = appointment.getAppDate();
		SimpleDateFormat dateFormat = new SimpleDateFormat("MM/dd/yyyy");
		String page = "redirect:/client/doctors/doctorDetail/"+appointment.getDocId();;
		try {
			java.util.Date dd = dateFormat.parse(date);
			appointment.setDateTimeStamp(dd.getTime());
			if(appointmentService.checkIfSlotAvailable(appointment)){
				//changed by ajit, if used else where remove from there or convertdatetimestamp as this one wherever used
				appointmentService.saveAppointment(appointment);
				redirectAttributes.addFlashAttribute("message","Thank you! Your appointment time is fixed.");
				page="redirect:/client/doctors/successAppointment/"+appointment.getAppointmentId();
			}else{
				redirectAttributes.addFlashAttribute("message","Sorry, the time is already taken, please choose another available time");
			}
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return page;
	}
	
	@RequestMapping(value="successAppointment/{appointmentId}")
	public String successAppointment(@PathVariable int appointmentId, Model model){
		Appointment appointment = appointmentService.getAppointmentById(appointmentId);
		Doctor doc = doctorService.findById(appointment.getDocId());
		DocTime docTime = timeService.getTimeById(appointment.getTimeId());
		model.addAttribute("appointment",appointment);
		model.addAttribute("doctor",doc);
		model.addAttribute("doc",docTime);
		Patient p = patientService.findById(appointment.getPatientId());
		
		String msg = "You have booked an appointment with DR. "+doc.getFirstname()+" "+doc.getLastname();
		msg+= " on "+appointment.getAppDate()+" at "+docTime.getStart()+" "+docTime.getEnd();
		
		sendEmail(p.getEmail(),p.getFirstname(),msg,"Appointment Confirmation");
		
		String msg2 = "You have an appointment with "+p.getFirstname()+" "+p.getLastname();
		msg2+= " on "+appointment.getAppDate()+" at "+docTime.getStart()+" "+docTime.getEnd();
		sendEmail(doc.getEmail(),doc.getFirstname(),msg2,"Appointment Confirmation");
		return "successAppointment";
	}
	
	
    
    private void sendEmail(String emailTo, String name, String msg, String subject) {
 		Email email = new Email.Builder()
 			    .from("Webmaster", "doctor.a2789@gmail.com") 
 			    .to(name, emailTo)
 			    .subject(subject)
 			    .text(msg)
 			    .textHTML(msg)
 			    .build();

 		
 		new Mailer("smtp.gmail.com", 25, "hitsad12@gmail.com", "coder@id", TransportStrategy.SMTP_TLS).sendMail((org.codemonkey.simplejavamail.email.Email) email);
// 	    new Mailer("smtp.gmail.com", 587, "hitsad12@gmail.com", "coder@id", TransportStrategy.SMTP_TLS).sendMail((org.codemonkey.simplejavamail.email.Email) email);
// 	    new Mailer("smtp.gmail.com", 465, "hitsad12@gmail.com", "coder@id", TransportStrategy.SMTP_SSL).sendMail((org.codemonkey.simplejavamail.email.Email) email);
 		
 		System.out.println("Email has been sent");
 	}
	

}
