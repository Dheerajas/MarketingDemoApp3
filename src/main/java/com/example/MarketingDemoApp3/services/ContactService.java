package com.example.MarketingDemoApp3.services;

import java.util.List;

import com.example.MarketingDemoApp3.entity.Contact;

public interface ContactService {

	public Contact saveContact(Contact contact);
	public List<Contact> listContacts(Contact contact);
	public Contact contactById(Long id);
	public Contact updateContact(Long id, Contact contact);
	public void deleteContact(Long id);
}
