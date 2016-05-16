package com.dams.repository;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.dams.domain.Speciality;



@Repository
@Transactional(readOnly = true) 
public interface SpecialityRepository extends CrudRepository<Speciality, Integer>{
	
}
