package com.client;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBConnect {

	 //create database connection
	// create static variable to save url,username and password
	
	private static String url ="jdbc:mysql://localhost:3306/gorent";
	private static String userName= "root";
	private static String password ="Ashi815*/";
	private static Connection con;
	
	//create method to return getConnection connection
	public static Connection getConnection() {
		
		//using try catch block to find some error
		
		try {
			//create driver
			Class.forName("com.mysql.jdbc.Driver");
			
			//assign database connection to con connection type object
			// passing declared url,username and password as parameters
			con = DriverManager.getConnection(url,userName,password );
			
		}
		catch(Exception e){
			System.out.println("Database connection is not success!!!");
		}
		//return connection type object
		return con;
	}
	
}
