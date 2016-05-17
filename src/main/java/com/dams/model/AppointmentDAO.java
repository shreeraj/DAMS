package com.dams.model;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.dams.domain.Appointment;
import com.dams.repository.AppointmentRepository;
import com.dams.service.AppointmentService;

@Service
@Transactional
public class AppointmentDAO implements AppointmentService{

	@Autowired
	private AppointmentRepository appointmentRepository;
	
	@Override
	public List<Appointment> getAppointmentsByDocId(int docId, long date) {
		// TODO Auto-generated method stub
		return appointmentRepository.getAppointmentsByDocIdDate(docId, date);
	}

	@Override
	public void saveAppointment(Appointment appointment) {
		// TODO Auto-generated method stub
		appointmentRepository.save(appointment);
	}

	@Override
	public boolean checkIfSlotAvailable(int docId, long date, int timeSlotId) {
		// TODO Auto-generated method stub
		System.out.println(docId +":" + date + ": " + timeSlotId + appointmentRepository.getAppointmentsByDocIdDate(docId, date));
		List<Appointment> appointments = getAppointmentsByDocId(docId, date);
		for(Appointment appointment : appointments){
			if(appointment.getTimeId()==timeSlotId){
				return false;
			}
		}
		return true;
	}

	
}
