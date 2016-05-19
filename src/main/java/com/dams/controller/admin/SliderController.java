package com.dams.controller.admin;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;


import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import java.io.File;

import com.dams.domain.Doctor;
import com.dams.domain.Slider;
import com.dams.domain.Speciality;
import com.dams.service.DoctorService;
import com.dams.service.SliderService;
import com.dams.service.SpecialityService;
import java.io.IOException;
import javax.servlet.http.HttpServletRequest;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

@Controller
@RequestMapping("/admin/sliders")
public class SliderController {
	@Resource
	private SliderService sliderService;
	
	
	@RequestMapping
	public String allSliders(Model model){
		List<Slider> sliders = sliderService.getAll();
			model.addAttribute("sliders",sliders);
	
		return "allSliders";
	}
	
	@RequestMapping(value = "/add")
	public String addSlider(Model model){
		Slider slider = new Slider();
		model.addAttribute("sliderForm",slider);
		
		return "addSlider";
	}
	
	@RequestMapping(value = "/add", method = RequestMethod.POST)
	public String saveSlider(@ModelAttribute("sliderForm") Slider slider, @RequestParam(value = "imgData", required = false) MultipartFile img,HttpServletRequest request, RedirectAttributes redirectAttributes){
		if(slider.getSliderId()==0){
			redirectAttributes.addFlashAttribute("message","Slider Added Successfully");
		}else{
			redirectAttributes.addFlashAttribute("message","Slider Updated Successfully");
		}
		if (!img.isEmpty()) {
			try {
				String directoryPath = request.getSession().getServletContext().getRealPath("/") + "resources/img/";
				String absolutePath = directoryPath + slider.getTitle() + ".jpg";
				saveImage(absolutePath, img);
                                slider.setImage(slider.getTitle() + ".jpg");
				sliderService.saveSlider(slider);
			} catch (IOException e) {
				//bindingResult.reject(e.getMessage());
				//return "redirect:/person?new";
			}
		}
		
		
		return "redirect:/admin/sliders";
	}
	
        private void saveImage(String filename, MultipartFile image) throws RuntimeException, IOException {
			//Here I Added the file to the root of the project i.e inside resource/img/ folder.
			image.transferTo(new File(filename)); 
	}
        
	@RequestMapping(value = "/edit/{sliderId}")
	public String editDoctor(@PathVariable int sliderId, Model model){
		
		Slider slide = sliderService.findById(sliderId);
		model.addAttribute("sliderForm",slide);
		return "addSlider";
	}
	
	@RequestMapping(value = "/delete/{sliderId}")
	public String deleteDoctor(@PathVariable int sliderId, Model model, RedirectAttributes redirectAttributes){
		Slider slider = sliderService.findById(sliderId);
		sliderService.deleteSlider(slider);
		redirectAttributes.addFlashAttribute("message","Slider Deleted Successfully");
		return "redirect:/admin/sliders";
	}

        
}
