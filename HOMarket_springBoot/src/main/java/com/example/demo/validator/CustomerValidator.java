package com.example.demo.validator;

import org.springframework.validation.Errors;
import org.springframework.validation.Validator;

import com.example.demo.model.Customer;

public class CustomerValidator implements Validator {

	@Override
	public boolean supports(Class<?> arg0) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public void validate(Object obj, Errors errors) {
		Customer cust = (Customer) obj;

		if (cust.getName() == null) {
			errors.rejectValue("Name", " The name is empty try again");
		} else if (cust.getName().length() < 5 || cust.getName().length() > 20) {
			errors.rejectValue("Name", "Try to enter the name again ");
		}

	}

}
