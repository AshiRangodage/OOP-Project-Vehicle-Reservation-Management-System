package com.client;

public class Customer {
//create variables
	private int id;
	private String name;
	private String phone;
	private String email;
	private String nic;
	private String licenseNo;
	private String hireType;
	private String vehicle;
	private String pickupDate;
	private String returnDate;
	
	//create constructors
	public Customer(int id, String name, String phone, String email, String nic, String licenseNo, String hireType,
			String vehicle, String pickupDate, String returnDate) {
		super();
		this.id = id;
		this.name = name;
		this.phone = phone;
		this.email = email;
		this.nic = nic;
		this.licenseNo = licenseNo;
		this.hireType = hireType;
		this.vehicle = vehicle;
		this.pickupDate = pickupDate;
		this.returnDate = returnDate;
	}
//create getters to return values
	public int getId() {
		return id;
	}

	 

	public String getName() {
		return name;
	}

	 

	public String getPhone() {
		return phone;
	}

	 

	public String getEmail() {
		return email;
	}

	 

	public String getNic() {
		return nic;
	}

	 

	public String getLicenseNo() {
		return licenseNo;
	}

	 

	public String getHireType() {
		return hireType;
	}

	 

	public String getVehicle() {
		return vehicle;
	}

	 

	public String getPickupDate() {
		return pickupDate;
	}

	 

	public String getReturnDate() {
		return returnDate;
	}

	 
	
	
	 
	
	
	
}
