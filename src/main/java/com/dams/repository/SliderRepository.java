package com.dams.repository;

import com.dams.domain.Contact;
import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.dams.domain.Doctor;
import com.dams.domain.Patient;
import com.dams.domain.Slider;



@Repository
@Transactional(readOnly = true) 
public interface SliderRepository extends CrudRepository<Slider, Integer>{
	
}
