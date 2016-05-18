package com.dams.service;

import com.dams.domain.Contact;
import java.util.List;


public interface ContactService {
	
	public List<Contact> getAll();
	public void saveContact(Contact contact);
	public Contact findById(int id);
        public void updateAsReplied(Contact contact);
	
}
