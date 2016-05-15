package com.dams.controller.admin;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.dams.domain.Doctor;
import com.dams.service.DoctorService;

@Controller
@RequestMapping("/admin/doctors")
public class DoctorController {
	@Resource
	private DoctorService doctorService;

	@RequestMapping
	public String allDoctors(Model model){
		List<Doctor> docs = doctorService.getAll();
		model.addAttribute("doctors",docs);
		return "allDoctors";
	}
	
	@RequestMapping(value = "/add")
	public String addDoctor(Model model){
		Doctor doc = new Doctor();
		model.addAttribute("doctorForm",doc);
		return "addDoctor";
	}
	
	@RequestMapping(value = "/add", method = RequestMethod.POST)
	public String saveDoctor(@ModelAttribute("doctorForm") Doctor doctor, RedirectAttributes redirectAttributes){
		if(doctor.getDoctorId()==0){
			redirectAttributes.addFlashAttribute("message","Doctor Added Successfully");
		}else{
			redirectAttributes.addFlashAttribute("message","Doctor Updated Successfully");
		}
		
		doctorService.saveDoctor(doctor);
		
		
		return "redirect:/admin/doctors";
	}
	
	@RequestMapping(value = "/edit/{doctorId}")
	public String editDoctor(@PathVariable int doctorId, Model model){
		
		Doctor doc = doctorService.findById(doctorId);
		model.addAttribute("doctorForm",doc);
		return "addDoctor";
	}
	
	@RequestMapping(value = "/delete/{doctorId}")
	public String deleteDoctor(@PathVariable int doctorId, Model model, RedirectAttributes redirectAttributes){
		Doctor doctor = doctorService.findById(doctorId);
		doctorService.deleteDoctor(doctor);
		redirectAttributes.addFlashAttribute("message","Doctor Deleted Successfully");
		return "redirect:/admin/doctors";
	}
}
