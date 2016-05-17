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
	public boolean checkIfSlotAvailable(Appointment appointment) {
		// TODO Auto-generated method stub
		System.out.println(appointment.getDocId() +":" + appointment.getTime() + ": " + appointment.getTimeId() + appointmentRepository.getAppointmentsByDocIdDate(appointment.getDocId(), appointment.getDateTimeStamp()));
		List<Appointment> appointments = getAppointmentsByDocId(appointment.getDocId(), appointment.getDateTimeStamp());
		for(Appointment temp : appointments){
			if(temp.getTimeId()==appointment.getTimeId()){
				return false;
			}
		}
		return true;
	}

	
}
