package com.example.MarketingDemoApp3.exceptions;

import java.util.Date;
import java.util.List;

import org.springframework.http.HttpStatus;

public class ErrorDetails {

	private HttpStatus status;//which statue code you are sending
	private Date date;//current timestamp
	private String message;//client side issue or server side issue
	private List<String> details;
	public ErrorDetails(HttpStatus status, Date date, String message, List<String> details) {
		super();
		this.status = status;
		this.date = date;
		this.message = message;
		this.details = details;
	}
	public HttpStatus getStatus() {
		return status;
	}
	public void setStatus(HttpStatus status) {
		this.status = status;
	}
	public Date getDate() {
		return date;
	}
	public void setDate(Date date) {
		this.date = date;
	}
	public String getMessage() {
		return message;
	}
	public void setMessage(String message) {
		this.message = message;
	}
	public List<String> getDetails() {
		return details;
	}
	public void setDetails(List<String> details) {
		this.details = details;
	}
	
}
