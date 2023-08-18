package com.app.custom_excceptions;

public class ResourceNotFoundException extends RuntimeException {
	public ResourceNotFoundException(String mesg) {
		super(mesg);
	}//we have given RuntimeException as all spring exception are unchecked
}
