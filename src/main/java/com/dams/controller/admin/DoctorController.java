package com.dams.controller.admin;

import java.io.File;
import java.io.IOException;
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
		System.out.println("form entered");
		Doctor doc = new Doctor();
		model.addAttribute("doctorForm",doc);
		return "addDoctor";
	}

	@RequestMapping(value = "/add", method = RequestMethod.POST)
	public String saveDoctor(@Valid @ModelAttribute("doctorForm")  Doctor doctor, BindingResult result, 
			@RequestParam(value = "imgData", required = false) MultipartFile image,
			HttpServletRequest request){
		 
		/* if(doctor.getDoctorId()==0){
			redirectAttributes.addFlashAttribute("message","Doctor Added Successfully");
		}else{
			redirectAttributes.addFlashAttribute("message","Doctor Updated Successfully");
		}
		 */		
		
		if(result.hasErrors()) {return "addDoctor";}
       /* String[] suppressedFields = result.getSuppressedFields();
                if (suppressedFields.length > 0) {
                    throw new RuntimeException("Attempting to bind disallowed fields: " + StringUtils.arrayToCommaDelimitedString(suppressedFields));
                   }*/
		
		if (!image.isEmpty()) {
			try {
				String directoryPath = request.getSession().getServletContext().getRealPath("/") + "resources\\img\\";
				String absolutePath = directoryPath + doctor.getLastname() + ".jpg";
				saveImage(absolutePath, image);
				doctorService.saveDoctor(doctor);
			} catch (IOException e) {
				//bindingResult.reject(e.getMessage());
				//return "redirect:/person?new";
			}
		}

		return "redirect:/admin/doctors";
	}


	private void saveImage(String filename, MultipartFile image) throws RuntimeException, IOException {
			//Here I Added the file to the root of the project i.e inside resource/img/ folder.
			image.transferTo(new File(filename)); 
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
