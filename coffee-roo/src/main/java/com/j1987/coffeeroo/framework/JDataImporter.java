package com.j1987.coffeeroo.framework;

import org.springframework.stereotype.Component;

/**
 * <tt>JDataImporter</tt> helps import data within the application. 
 * As a Singleton, this process happens only once when the first and only instance is loaded  
 * 
 * @author Franck-Janel Agah
 *
 */
@Component
public class JDataImporter  {
	
	private static JDataImporter sInstance;
	
	
	private JDataImporter() {
	}
	
	private JDataImporter(String fileName, String driver, String url, String userName, String password) {
		JUtils.executeSql(fileName, driver, url, userName, password);
	}
	
	/**
	 * Singleton access from outside
	 * */
	public static JDataImporter getInstance(String fileName, String driver, String url, String userName, String password) {
		if (sInstance == null) {
			sInstance = new JDataImporter(fileName, driver, url, userName, password);
		}
		return sInstance;
	}
	
}
