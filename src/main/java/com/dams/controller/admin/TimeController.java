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

import com.dams.domain.Doctor;
import com.dams.domain.DocTime;
import com.dams.service.DoctorService;
import com.dams.service.TimeService;

@Controller
public class TimeController {
	@Resource
	private DoctorService doctorService;

	@Resource
	private TimeService timeService;

	@RequestMapping(value = "admin/time/{doctorId}")
	public String docTimes(@PathVariable int doctorId, Model model) {

		Doctor doc = doctorService.findById(doctorId);
		List<DocTime> docTimes = timeService.getTimeByDoctorId(doctorId);
		model.addAttribute("doc", doc);
		model.addAttribute("docTimes", docTimes);
		return "docTime";
	}

	@RequestMapping(value = "admin/time/add/{doctorId}")
	public String addTime(@PathVariable int doctorId, Model model) {

		Doctor doc = doctorService.findById(doctorId);
		DocTime docTime = new DocTime();
		model.addAttribute("doc", doc);
		model.addAttribute("timeForm", docTime);
		return "timeForm";
	}
	
	@RequestMapping(value = "admin/time/add/{doctorId}",method=RequestMethod.POST)
	public String saveTime(@PathVariable int doctorId, Model model, @ModelAttribute("timeForm") DocTime docTime, RedirectAttributes redirectAttribute) {
		docTime.setDoctor(doctorService.findById(doctorId));
		if(docTime.getTimeId()!=0){
			redirectAttribute.addFlashAttribute("message","Time slot Updated successfully");
		}else{
			redirectAttribute.addFlashAttribute("message","Time slot Added successfully");
		}
		timeService.saveTime(docTime);	
		
		return "redirect:/admin/time/"+doctorId;
	}
	
	@RequestMapping(value = "admin/time/edit/{timeId}",method=RequestMethod.GET)
	public String saveTime(@PathVariable int timeId, Model model) {
		DocTime docTime = timeService.getTimeById(timeId);
		Doctor doc = doctorService.findById(docTime.getDoctor().getDoctorId());
		
		model.addAttribute("doc", doc);
		model.addAttribute("timeForm", docTime);
		return "timeForm";
	}
	
	@RequestMapping(value = "admin/time/delete/{timeId}",method=RequestMethod.GET)
	public String deleteTime(@PathVariable int timeId, Model model, RedirectAttributes redirectAttribute) {
		int doctorId = timeService.getTimeById(timeId).getDoctor().getDoctorId();
		timeService.deleteTime(timeService.getTimeById(timeId));
		redirectAttribute.addFlashAttribute("message","Time slot deleted successfully");
		return "redirect:/admin/time/"+doctorId;
	}
	
	
}
