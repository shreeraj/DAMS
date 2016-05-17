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
import com.dams.domain.Patient;
import com.dams.service.PatientService;

@Controller
@RequestMapping("/admin/patients")
public class PatientController {
	@Resource
	private PatientService patientService;

	@RequestMapping
	public String allPatients(Model model){
		List<Patient> docs = patientService.getAll();
		model.addAttribute("patients",docs);
		return "allPatients";
	}
	
	@RequestMapping(value = "/add")
	public String addPatient(Model model){
		Patient doc = new Patient();
		model.addAttribute("patientForm",doc);
		return "addPatient";
	}
	
	@RequestMapping(value = "/add", method = RequestMethod.POST)
	public String savePatient(@ModelAttribute("patientForm") Patient patient, RedirectAttributes redirectAttributes){
		if(patient.getPatientId()==0){
			redirectAttributes.addFlashAttribute("message","Patient Added Successfully");
		}else{
			redirectAttributes.addFlashAttribute("message","Patient Updated Successfully");
		}
		
		patientService.savePatient(patient);
		
		
		return "redirect:/admin/patients";
	}
	
	@RequestMapping(value = "/edit/{patientId}")
	public String editPatient(@PathVariable int patientId, Model model){
		
		Patient doc = patientService.findById(patientId);
		model.addAttribute("patientForm",doc);
		return "addPatient";
	}
	
	@RequestMapping(value = "/delete/{patientId}")
	public String deletePatient(@PathVariable int patientId, Model model, RedirectAttributes redirectAttributes){
		Patient patient = patientService.findById(patientId);
		patientService.deletePatient(patient);
		redirectAttributes.addFlashAttribute("message","Patient Deleted Successfully");
		return "redirect:/admin/patients";
	}
}
