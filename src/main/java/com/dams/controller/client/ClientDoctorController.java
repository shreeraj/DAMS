package com.dams.controller.client;

import java.util.List;

import javax.annotation.Resource;
import javax.swing.text.html.HTMLDocument.HTMLReader.SpecialAction;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.dams.domain.DocTime;
import com.dams.domain.Doctor;
import com.dams.service.DoctorService;
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
		return "doctorDetail";
	}
	

}
