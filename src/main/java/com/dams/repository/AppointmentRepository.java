package com.dams.repository;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.dams.domain.Appointment;


@Repository


	@Transactional(readOnly = true) 
	public interface AppointmentRepository extends CrudRepository<Appointment, Integer>{
	@Query("from Appointment a where a.docId = :doctorId")
	public List<Appointment> getAllAppointmentByDocId(@Param("doctorId") int doctorId);
	
	@Query("from Appointment a where a.docId = :doctorId and a.dateTimeStamp = :dateTimeStamp")
	public List<Appointment> getAppointmentsByDocIdDate(@Param("doctorId") int doctorId, @Param("dateTimeStamp") long dateTimeStamp);

//	@Query("select app.appointmentId, app.docId, app.timeId, app.appDate, app.patientId, pat.firstname, pat.lastname, time.start, time.end from Appointment app, Patient pat, DocTime time where pat.patientId=app.patientId and time.timeId=app.timeId and app.docId= :docId")
//	public List getDoctorSchedulesById(@Param("docId") int doctorId);
}
