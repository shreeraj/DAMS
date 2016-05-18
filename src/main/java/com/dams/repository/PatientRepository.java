package com.dams.repository;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.dams.domain.Doctor;
import com.dams.domain.Patient;

@Repository
@Transactional(readOnly = true)
public interface PatientRepository extends CrudRepository<Patient, Integer> {
	// If we want custom CRUD Services then we define here......raj
	@Query("from Patient d where d.firstname = :firstname")
	public Patient findByFirstname(@Param("firstname") String firstname);
	
	@Query("from Patient d where d.username = :username")
	public Patient findByUsername(@Param("username") String username);
}
