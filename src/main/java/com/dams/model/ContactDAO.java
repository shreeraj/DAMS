package com.dams.model;

import com.dams.domain.Contact;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;


import com.dams.domain.Patient;
import com.dams.repository.ContactRepository;
import com.dams.repository.PatientRepository;
import com.dams.service.ContactService;
import com.dams.service.PatientService;


@Service
@Transactional
public class ContactDAO implements ContactService{

	@Autowired
	private ContactRepository contactRepository;

    @Override
    public List<Contact> getAll() {
        return (List<Contact>) contactRepository.findAll();
    }
    @Override
    public void saveContact(Contact contact) {
        contactRepository.save(contact);
    }

    @Override
    public Contact findById(int id) {
        return contactRepository.findOne(id);
    }

    @Override
    public void updateAsReplied(Contact contact) {
        contact.setReplied(1);
        contactRepository.save(contact);
    }
	


}
