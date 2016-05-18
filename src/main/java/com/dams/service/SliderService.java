package com.dams.service;

import com.dams.domain.Contact;
import com.dams.domain.Slider;
import java.util.List;


public interface SliderService {
	
	public List<Slider> getAll();
	public void saveSlider(Slider slider);
	public Slider findById(int id);
        public void deleteSlider(Slider slider);

	
}
