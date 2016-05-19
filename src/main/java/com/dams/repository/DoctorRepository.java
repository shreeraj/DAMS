package com.dams.repository;

import java.awt.print.Pageable;
import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.dams.domain.Doctor;

@Repository
@Transactional(readOnly = true) 
public interface DoctorRepository extends CrudRepository<Doctor, Integer>{
	@Query("from Doctor d where d.firstname = :firstname")
	public Doctor findByFirstname(@Param("firstname") String firstname);
	
	@Query("from Doctor d where d.username = :username")
	public Doctor findByusername(@Param("username") String username);
	
	

}
