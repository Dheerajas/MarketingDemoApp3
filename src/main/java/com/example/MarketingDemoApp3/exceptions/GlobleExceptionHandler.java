package com.example.MarketingDemoApp3.exceptions;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.context.request.WebRequest;
import org.springframework.web.servlet.mvc.method.annotation.ResponseEntityExceptionHandler;

@ControllerAdvice
public class GlobleExceptionHandler extends ResponseEntityExceptionHandler {

	@ExceptionHandler({ LeadNotFoundException.class })
	public ResponseEntity<ErrorDetails> handleException(LeadNotFoundException ex, WebRequest req) {
		List<String> details = new ArrayList<>();
		details.add(ex.getLocalizedMessage());

		ErrorDetails errorDetails = new ErrorDetails(HttpStatus.BAD_REQUEST, new Date(), "Client Error", details);
		return new ResponseEntity<>(errorDetails, HttpStatus.BAD_REQUEST);
	}

//	@ExceptionHandler({ Exception.class })
//	public ResponseEntity<ErrorDetails> handleInternalException(Exception ex, WebRequest req) {
//		List<String> details = new ArrayList<>();
//		details.add(ex.getLocalizedMessage());
//
//		ErrorDetails errorDetails = new ErrorDetails(HttpStatus.INTERNAL_SERVER_ERROR, new Date(), "Server  Error",
//				details);
//		return new ResponseEntity<>(errorDetails, HttpStatus.INTERNAL_SERVER_ERROR);
//	}

	
//
}
