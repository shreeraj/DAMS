/**
 *
 **/
package com.dams.controller.doctor;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.dams.domain.Appointment;
import com.dams.domain.AppointmentHelperBean;
import com.dams.domain.Doctor;
import com.dams.service.AppointmentService;
import com.dams.service.DoctorService;
import com.dams.service.PatientService;
import com.dams.service.TimeService;

/**
 * @author Ajit
 *
 *         May 17, 2016
 */

@Controller
@RequestMapping("/doctor")
public class DoctorDashboardController {

	@Resource
	private DoctorService doctorService;

	@Resource
	private PatientService patientService;

	@Resource
	private AppointmentService appointmentService;

	@Resource
	private TimeService timeService;

	Doctor doctor;

	@InitBinder
	public void initialiseBinder(WebDataBinder binder) {
		binder.setDisallowedFields("specialityId", "registration");
	}

	@RequestMapping(value = "/{doctorId}")
	public String dashboard(@PathVariable int doctorId, Model model) {
		this.doctor = doctorService.findById(doctorId);
		model.addAttribute("doctor", doctor);
		return "doctorDashboard";
	}

	@RequestMapping(value = "/profile")
	public String profile(@RequestParam("id") int doctorId, Model model) {
		System.out.println(doctorId);
		model.addAttribute("doctor", doctorService.findById(doctorId));
		return "doctorDashboard";
	}

	@RequestMapping(value = "/profile/edit")
	public String editProfile(@RequestParam("id") int doctorId, Model model) {
		System.out.println(doctorId);
		Doctor doc = doctorService.findById(doctorId);
		model.addAttribute("doctorForm", doc);
		model.addAttribute("doctor", doctor);
		return "doctorEditProfile";
	}

	@RequestMapping(value = "/profile/save")
	public String saveProfile(@ModelAttribute("doctorForm") Doctor doctor, RedirectAttributes redirectAttributes,
			BindingResult result) {
		String[] suppressed = result.getSuppressedFields();
		if (suppressed.length > 0) {
			throw new RuntimeException("Attempting to bind disallowed fields");

		}
		redirectAttributes.addFlashAttribute("message", "Profile Updated Successfully");
		doctor.setRegistration(this.doctor.getRegistration());
		doctor.setSpecialityId(this.doctor.getSpecialityId());
		doctorService.saveDoctor(doctor);

		return "redirect:/doctor/" + doctor.getDoctorId();
	}

	@RequestMapping(value = "/appointments")
	public String appointments(@RequestParam("id") int doctorId, Model model) {
		model.addAttribute("doctor", doctor);
		List<Appointment> appointments = appointmentService.getAppointmentsByDocId(doctorId, 0);
		List<AppointmentHelperBean> appointmentHelpersList = new ArrayList<AppointmentHelperBean>();
		for (Appointment app : appointments) {
			AppointmentHelperBean helperBean = new AppointmentHelperBean();
			helperBean.setAppointment(app);
			helperBean.setDocTime(timeService.getTimeById(app.getTimeId()));
			helperBean.setPatient(patientService.findById(app.getPatientId()));
			appointmentHelpersList.add(helperBean);
		}
		// System.out.println("doc:"
		// +appointmentService.getAppointmentsByDocId(doctorId).size());
		model.addAttribute("appointments", appointmentHelpersList);

		return "doctorAppointments";
	}

	@RequestMapping(value = "/appointments/complete")
	public String completeAppointments(@RequestParam("id") int appointmentId, Model model) {
		model.addAttribute("doctor", doctor);
		Appointment appointment = appointmentService.getAppointmentById(appointmentId);
		appointment.setIsCompleted(1);
		appointmentService.saveAppointment(appointment);
		System.out.println(doctor.getDoctorId());
		List<Appointment> appointments = appointmentService.getAppointmentsByDocId(doctor.getDoctorId(), 0);
		List<AppointmentHelperBean> appointmentHelpersList = new ArrayList<>();
		for (Appointment app : appointments) {
			AppointmentHelperBean helperBean = new AppointmentHelperBean();
			helperBean.setAppointment(app);
			helperBean.setDocTime(timeService.getTimeById(app.getTimeId()));
			helperBean.setPatient(patientService.findById(app.getPatientId()));
			appointmentHelpersList.add(helperBean);
		}
		// System.out.println("doc:"
		// +appointmentService.getAppointmentsByDocId(doctorId).size());
		model.addAttribute("appointments", appointmentHelpersList);

		return "doctorAppointments";
	}

}
