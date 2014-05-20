package com.j1987.coffeeroo.services.security;

import org.springframework.security.core.userdetails.UserDetailsService;

public interface JSecurityService extends UserDetailsService {
	
	public static final String SECURITY_UNAUTHENTICATED_USER 	= "anonymousUser";
	/**
	 * Password encoding as specified in 'asuivre.properties' 
	 * */
	public static final String PASSWD_ENCODING_MD5 		= "Md5";
	public static final String PASSWD_ENCODING_SHA 		= "Sha";
	public static final String PASSWD_ENCODING_SHA256 	= "Sha-256";

	/**
	 * Encodes a password for authentication based on the value specified 
	 * for 'password.encoding' in 'asuivre.properties'. 
	 * Encoding type defaults to Sha-256
	 * */
	public String encodePassword(String rawPassword);
	
	/**
	 * Retrieves the current user's 'username'
	 * @return The login name of the current user
	 * */
	public String currentUser();
	
}
