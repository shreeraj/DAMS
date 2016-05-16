package com.dams.controller.admin;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.dams.domain.Speciality;
import com.dams.service.SpecialityService;

@Controller
@RequestMapping("/admin/specialities")
public class SpecialityController {

	@Resource
	private SpecialityService specialityService;
	
	@RequestMapping
	public String getAllSpecialities(Model model){
		List<Speciality> specialities = specialityService.getAllSpecialities();
		model.addAttribute("specialities", specialities);
		return "allSpecialities";
	}
	
	@RequestMapping(value="/add", method=RequestMethod.POST)
	public String addSpeciality(@ModelAttribute("speciality") Speciality speciality, RedirectAttributes redirectAttributes){
		if(speciality.getSpecialityId()==0){
			redirectAttributes.addFlashAttribute("message","Speciality Added Successfully");
		}else{
			redirectAttributes.addFlashAttribute("message","Speciality Updated Successfully");
		}
		
		specialityService.addSpeciality(speciality);
		
		
		return "redirect:/admin/specialities";
		
	}
	
	@RequestMapping(value="/add", method = RequestMethod.GET)
	public String addSpeciality(Model model){
		Speciality speciality = new Speciality();
		model.addAttribute("speciality", speciality);
		return "addSpeciality";
	}
	
	@RequestMapping(value = "/edit/{specialityId}")
	public String editSpeciality(@PathVariable int specialityId, Model model){
		Speciality speciality = specialityService.findById(specialityId);
		model.addAttribute("speciality",speciality);
		return "addSpeciality";
	}
	
	@RequestMapping(value = "/delete/{specialityId}")
	public String deleteDoctor(@PathVariable int specialityId, Model model, RedirectAttributes redirectAttributes){
		Speciality speciality = specialityService.findById(specialityId);
		specialityService.deleteSpeciality(speciality);
		redirectAttributes.addFlashAttribute("message","Speciality Deleted Successfully");
		return "redirect:/admin/specialities";
	}
}
