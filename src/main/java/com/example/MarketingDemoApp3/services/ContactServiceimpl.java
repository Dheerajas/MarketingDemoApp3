package com.example.MarketingDemoApp3.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;

import com.example.MarketingDemoApp3.entity.Contact;
import com.example.MarketingDemoApp3.repository.ContactRepository;

@Service
public class ContactServiceimpl implements ContactService {

	@Autowired
	private ContactRepository contactRepository;
	
	@Override
	public Contact saveContact(Contact contact) {
		return contactRepository.saveAndFlush(contact);
	}
	
	@Override
	public List<Contact> listContacts(Contact contact){
		return contactRepository.findAll(Sort.by("id").descending());
	}
	
	@Override
	public Contact contactById(Long id) {
		return contactRepository.findById(id).get();
	}
	
	@Override
	public Contact updateContact(Long id,Contact contact) {
		Contact contactById = contactRepository.findById(id).get();
		contactById.setFirstName(contact.getFirstName());
		contactById.setLastName(contact.getLastName());
		contactById.setEmail(contact.getEmail());
		contactById.setMobile(contact.getMobile());
		contactById.setContactSource(contact.getContactSource());
		return contactRepository.saveAndFlush(contactById);
	}

	@Override
	public void deleteContact(Long id) {
		contactRepository.deleteById(id);		
	}
}
