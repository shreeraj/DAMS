package com.dams.controller.admin;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.dams.domain.Doctor;
import com.dams.domain.Speciality;
import com.dams.service.DoctorService;
import com.dams.service.SpecialityService;


@Controller
@RequestMapping("/admin/doctors")
public class DoctorController {
	@Resource
	private DoctorService doctorService;

	@Resource
	private SpecialityService specialityService;

	// @NotNull
	private Speciality speciality;

	@RequestMapping
	public String allDoctors(Model model) {
		List<Doctor> docs = doctorService.getAll();
		model.addAttribute("doctors", docs);

		return "allDoctors";
	}

	@RequestMapping(value = "/add")
	public String addDoctor(Model model) {
		Doctor doc = new Doctor();
		model.addAttribute("doctorForm", doc);
		List<Speciality> specs = new ArrayList<Speciality>();
		specs.add(new Speciality(-1, "Select Speciality"));
		specs.addAll(specialityService.getAllSpecialities());
		model.addAttribute("specialities", specs);
		return "addDoctor";
	}

	@RequestMapping(value = "/add", method = RequestMethod.POST)
	public String saveDoctor(@ModelAttribute("doctorForm") @Valid Doctor doctor, BindingResult result,
			RedirectAttributes redirectAttributes, @RequestParam(value="file", required=false) MultipartFile file, HttpServletRequest request) throws IOException {
		if (doctor.getDoctorId() == 0) {
			redirectAttributes.addFlashAttribute("message", "Doctor Added Successfully");
		} else {
			redirectAttributes.addFlashAttribute("message", "Doctor Updated Successfully");
		}
		//image testing
		
		if(!file.isEmpty()){
			String directoryPath = request.getSession().getServletContext().getRealPath("/")+"resources\\img\\";
			String absolutePath = directoryPath+new Date().getTime()+".jpg";
			file.transferTo(new File(absolutePath));
			
		}else{
			System.out.println("khali thiyo");
		}
		
		//end image testing

		if (!result.hasErrors()) {
//			doctor.setImage(file[0].getBytes());
			doctorService.saveDoctor(doctor);
		}else{
			return "addDoctor";
		}

		return "redirect:/admin/doctors";
	}

	@RequestMapping(value = "/edit/{doctorId}")
	public String editDoctor(@PathVariable int doctorId, Model model) {

		Doctor doc = doctorService.findById(doctorId);
		model.addAttribute("doctorForm", doc);
		List<Speciality> specs = new ArrayList<Speciality>();
		specs.add(new Speciality(-1, "Select Speciality"));
		specs.addAll(specialityService.getAllSpecialities());
		model.addAttribute("specialities", specs);
		return "addDoctor";
	}

	@RequestMapping(value = "/delete/{doctorId}")
	public String deleteDoctor(@PathVariable int doctorId, Model model, RedirectAttributes redirectAttributes) {
		Doctor doctor = doctorService.findById(doctorId);
		doctorService.deleteDoctor(doctor);
		redirectAttributes.addFlashAttribute("message", "Doctor Deleted Successfully");
		return "redirect:/admin/doctors";
	}

	public Speciality getSpeciality() {
		return speciality;
	}

	public void setSpeciality(Speciality speciality) {
		this.speciality = speciality;
	}
}
