package com.dams.model;

import com.dams.domain.Contact;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;


import com.dams.domain.Patient;
import com.dams.domain.Slider;
import com.dams.repository.ContactRepository;
import com.dams.repository.PatientRepository;
import com.dams.repository.SliderRepository;
import com.dams.service.ContactService;
import com.dams.service.PatientService;
import com.dams.service.SliderService;


@Service
@Transactional
public class SliderDAO implements SliderService{

	@Autowired
	private SliderRepository sliderRepository;

    @Override
    public List<Slider> getAll() {
        return (List<Slider>) sliderRepository.findAll();
    }
    @Override
    public void saveSlider(Slider slider) {
        sliderRepository.save(slider);
    }

    @Override
    public Slider findById(int id) {
        return sliderRepository.findOne(id);
    }

    @Override
    public void deleteSlider(Slider slider) {
        sliderRepository.delete(slider);
    }
    
	


}
