package com.client;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;


public class ClientDBUtil {
	
	//create objects
	private static boolean isSuccess;
	private static Connection con =null;
	private static Statement stmt =null;
	private static ResultSet rs = null;
	
	//using view method to create connection with database and view entered data in view servlet class to database.
	//create parameters to catch passing argument(name, nic) from servlet class.
	//return boolean value to find data successfully added or not to the sevlet class.
	//validate	
	public static boolean validate(String name, String nic) {
		
		try {
			//call DBConnect with getConnection method to create database Connection
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			//select name and nic from reservation table
		    String sql ="select * from  reservation where name='"+name+"' and NIC='"+nic+"' ";
		    rs= stmt.executeQuery(sql);
		    
		    if(rs.next()) {
		    	isSuccess = true;
		    }
		    else {
		    	isSuccess =false;
		    }
			
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
		return isSuccess;
	}
	
	//return  ListCustomer using getClient method
	public static List<Customer> getClient(String name){
		
		//create object from array list class
		ArrayList<Customer> cus =new ArrayList<>();
		
		//using try catch block to find some error
		try {
			//call DBConnect with getConnection method to create database Connection
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			 //select all details from reservation table belongs to name
		    String sql ="select * from  reservation where name='"+name+"' ";
		    rs= stmt.executeQuery(sql);
		    
		  //if customer id in this table only its true assign variables in while loop to table data.
		   //next method returns boolean value .if boolean value return true only query is successfully works.
		   //if boolean value return false query works not successfully.
		   //put column index to ()
		    while(rs.next()) {
		    	int id = rs.getInt(1);
		    	String Name= rs.getString(2);
		    	String phone= rs.getString(3);
		    	String email= rs.getString(4);
		    	String NIC= rs.getString(5);
		    	String LicenseNo= rs.getString(6);
		    	String HireType= rs.getString(7);
		    	String Vehicle= rs.getString(8);
		    	String PickupDate= rs.getString(9);
		    	String ReturnDate= rs.getString(10);
		    	
		    	
		    	Customer c= new Customer(id,Name,phone,email,NIC,LicenseNo,HireType,Vehicle,PickupDate,ReturnDate);
		    	 
		    	cus.add(c);
		    }
			
		}
		//using exception to catch some errors  in try part
		catch(Exception e) {
			e.printStackTrace();
		}
		
		
		
		//return customer ArrayList object
		return cus;
		
		
	}
	//using insert client method to create connection with database and insert entered data in clientinsert servlet class to database.
	//create parameters to catch passing argument from servlet class.
	//return boolean value to find data successfully added or not to the sevlet class.
	
	public static boolean insertclient(String name, String phone,String email,String NIC,String LicenseNo,String HireType,String vehicle,String PickupDate,String ReturnDate){
	
	
	  boolean isSuccess = false;
	  
	  
	       //using try catch block to find some error
			
			try {
				
				//call DBConnect with getConnection method to create database Connection
				con = DBConnect.getConnection();
				stmt = con.createStatement();
				//passing parameter values to database query
				String sql ="insert into reservation values (0,'"+name+"','"+phone+"','"+email+"','"+NIC+"','"+LicenseNo+"','"+HireType+"','"+vehicle+"','"+PickupDate+"','"+ReturnDate+"') ";
				//assign values in executeUpdate method to integer
				
				int rs = stmt.executeUpdate(sql);
				
				//if insert into query is success this execute method return 1 . 1 assign to rs variable.
				//if insert into query is unsuccess this execute method return 0
				if(rs>0) {
					isSuccess = true;
				}
				else {
					isSuccess = false;
				}
				
				
				
			}
			//using exception to catch some errors  in try part
	       catch(Exception e){
	    	   e.printStackTrace();
	    	   
	       }
	  
	  return isSuccess;
	}
	
	//return type ListCustomer     
public static List<Customer> read(){
		
	//create array list to return all the details in reservation table. 
		ArrayList<Customer> cus =new ArrayList<>();
		
		 
		
		 try {
			//call DBConnect with getConnection method to create database Connection
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			//select all details from reservation table.
			String sql ="select * from  reservation ";
		    rs= stmt.executeQuery(sql);
		    
		    //next method returns boolean value .if boolean value return true only query is successfully works.
			//if boolean value return false query works not successfully.
		    while(rs.next()) {
		    	int id = rs.getInt(1);
		    	String Name= rs.getString(2);
		    	String phone= rs.getString(3);
		    	String email= rs.getString(4);
		    	String NIC= rs.getString(5);
		    	String LicenseNo= rs.getString(6);
		    	String HireType= rs.getString(7);
		    	String Vehicle= rs.getString(8);
		    	String PickupDate= rs.getString(9);
		    	String ReturnDate= rs.getString(10);
		    	
		    	//create customer class object and pass this variables to constructors
		    	Customer c= new Customer(id,Name,phone,email,NIC,LicenseNo,HireType,Vehicle,PickupDate,ReturnDate);
		    	//pass this c object to cus object
		    	cus.add(c);
		    }
			
		}
		//using exception to catch some errors  in try part
		catch(Exception e) {
			e.printStackTrace();
		}
		
		
		
		//return cus Array object
		return cus;
		
		
	}
    //using update client method to create connection with database and entered data in UpdateServlet class to database.
	//create parameters to catch passing argument in servlet class.
	//return boolean value to find data successfully added or not to the sevlet class.
public static boolean updateclient(String id, String name, String phone,String email,String NIC,String LicenseNo,String HireType,String vehicle,String PickupDate,String ReturnDate){
	
	
	  boolean isSuccess = false;
	  
	  
	       
	        //using try catch block to find some error
			try {
				
				//call DBConnect with getConnection method to create database Connection
				con = DBConnect.getConnection();
				stmt = con.createStatement();
				//passing parameter values to database query
				//id is auto increment
				//give where condition to which id should update
				String sql ="update reservation set name='"+name+"',phone='"+phone+"',email='"+email+"',NIC='"+NIC+"',LicenseNo='"+LicenseNo+"',HireType='"+HireType+"',vehicle='"+vehicle+"',PickupDate='"+PickupDate+"',ReturnDate='"+ReturnDate+"' where id='"+id+"' ";
				//assign values in executeUpdate method to integer
				
				int rs = stmt.executeUpdate(sql);
				
				//if update  query is success this execute method return 1 
				//if update  query is unsuccess this execute method return 0
				if(rs>0) {
					isSuccess = true;
				}
				else {
					isSuccess = false;
				}
				
				
				
			}
			//using exception to catch some errors  in try part
	       catch(Exception e){
	    	   e.printStackTrace();
	    	   
	       }
	  
	  return isSuccess;
	}
     //return type ListCustomer using getCustomerDetails method
   public static List<Customer> getCustomerDetails(String Id){
	   
	   //String id covert to the integer id
	   int convertedID = Integer.parseInt(Id);
	   
	 //create object from array list class
	   ArrayList<Customer> cus =new ArrayList<>();
	   
	   //using try catch block to find some error
	   try {
		 //call DBConnect with getConnection method to create database Connection
		   con = DBConnect.getConnection();
	       stmt = con.createStatement();
	       //select all details from reservation table belongs to convert id
	       String sql = "select * from reservation where id='"+convertedID+"' ";
		   rs = stmt.executeQuery(sql);
		   
		    //if customer id in this table only its true assign variables in while loop to table data.
		    //next method returns boolean value .if boolean value return true only query is successfully works.
		   //if boolean value return false query works not successfully.
		   //put column index to ()
		   while(rs.next()) {
			   
			    int id = rs.getInt(1);
		    	String Name= rs.getString(2);
		    	String phone= rs.getString(3);
		    	String email= rs.getString(4);
		    	String NIC= rs.getString(5);
		    	String LicenseNo= rs.getString(6);
		    	String HireType= rs.getString(7);
		    	String Vehicle= rs.getString(8);
		    	String PickupDate= rs.getString(9);
		    	String ReturnDate= rs.getString(10);
		    	
		    	//create customer class object and pass this variables to constructor
		    	Customer c =new Customer(id,Name,phone,email,NIC,LicenseNo,HireType,Vehicle,PickupDate,ReturnDate);
		    	//pass this c object to cus object
		    	cus.add(c);
		    	
		   }
		   
	   }
	 //using exception to catch some errors  in try part
	   catch(Exception e){
    	   e.printStackTrace();
    	   
       }
	 //return cus Array object
	   return cus;
	   
	   
	   
   }
   
   //using delete client method to create connection with database and entered data in DeleteReservationServlet class to database.
 	//create parameters to catch passing argument in servlet class.
 	//return boolean value to find data successfully delete or not to the sevlet class.
   public static boolean deleteclient(String id) {
	   
	        //String id covert to the integer id
	   int convId = Integer.parseInt(id);
	   
	      //using try catch block to find some error
	   try {
		   //call DBConnect with getConnection method to create database Connection
		   con = DBConnect.getConnection();
	       stmt = con.createStatement();
	       String sql = "delete from reservation where id='"+convId+"'";
	       int r = stmt.executeUpdate(sql);
	       
	       if(r>0) {
	    	   isSuccess = true;
	       }
	       else {
	    	   isSuccess= false;
	       }
		   
	   }
	 //using exception to catch some errors  in try part
	   catch(Exception e){
    	   e.printStackTrace();
    	   
       }
	   
	   
	return isSuccess;
   }
		
}
