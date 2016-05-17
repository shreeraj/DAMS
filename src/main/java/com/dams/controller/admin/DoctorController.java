package com.dams.controller.admin;

import java.io.File;
import java.io.IOException;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
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
	public String saveDoctor(@ModelAttribute("doctorForm") Doctor doctor, HttpServletRequest request,
			@RequestParam(value = "imgData", required = false) MultipartFile image){
		/*		if(doctor.getDoctorId()==0){
			redirectAttributes.addFlashAttribute("message","Doctor Added Successfully");
		}else{
			redirectAttributes.addFlashAttribute("message","Doctor Updated Successfully");
		}
		 */		
		if (!image.isEmpty()) {
			/*	try {
				validateImage(image);
			} catch (RuntimeException re) {
				//	bindingResult.reject(re.getMessage());
				//return "redirect:/person?new";
			}*/

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

	private void validateImage(MultipartFile image) {
		if (!image.getContentType().equals("image/jpeg")) {
			throw new RuntimeException("Only JPG images are accepted");
		}
	}

	private void saveImage(String filename, MultipartFile image) throws RuntimeException, IOException {
		
	//	String saveDirectory = servletContext.getRealPath("/") + "resources/img/";
		try{
			image.transferTo(new File(filename));   //Here I Added
		}catch(IOException ex){
			ex.printStackTrace();
		}
		
		/*try {
			File file = new File(servletContext.getRealPath("/") + "/"
					+ filename);

			
			FileUtils.writeByteArrayToFile(file, image.getBytes());
			System.out.println("Go to the location:  " + file.toString()
			+ " on your computer and verify that the image has been stored.");
		} catch (IOException e) {
			throw e;
		}*/
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
