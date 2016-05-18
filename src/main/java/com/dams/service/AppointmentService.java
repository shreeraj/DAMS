package com.dams.service;

import java.util.List;

import com.dams.domain.Appointment;

public interface AppointmentService {

	public List<Appointment> getAppointmentsByDocId(int docId, long date);
	
	public void saveAppointment(Appointment appointment);
	
	public boolean checkIfSlotAvailable(Appointment appointment);
	

	public Appointment getAppointmentById(int appointmentId);

	
}
