package com.client;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/UpdateServlet")
public class UpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		//make variables to get inserted data from updatereservation.jsp page to servlet class.
		
				//create request.getParameter(""); method to save updated data.
				    //parameter name = input name in the update form
		
		String id = request.getParameter("Id");
		String name = request.getParameter("Name");
		String phone = request.getParameter("Phone");
		String email = request.getParameter("Email");
		String NIC = request.getParameter("Nic");
		String LicenseNo = request.getParameter("Lino");
		String HireType = request.getParameter("Hiretype");
		String vehicle = request.getParameter("Vehicle");
		String PickupDate = request.getParameter("Pickupdate");
		String ReturnDate = request.getParameter("Returndate");
	
		//create a variable with boolean type
boolean isTrue;
		
        //assign isTrue variable to client update method
		isTrue = ClientDBUtil.updateclient(id, name,  phone, email, NIC, LicenseNo, HireType, vehicle, PickupDate, ReturnDate);
		
		if(isTrue == true) {
			
			//create rentalDetails list
			List<Customer> rentDetails = ClientDBUtil.getCustomerDetails(id);
			request.setAttribute("rentDetails", rentDetails);
			 
			//if successfully data update to the database admin directed to the ViewReservation.jsp page with updated details
			RequestDispatcher dis3 = request.getRequestDispatcher("ViewReservation.jsp");
			dis3.forward(request, response);
		}else {
			//create rentalDetails list
			List<Customer> rentDetails = ClientDBUtil.getCustomerDetails(id);
			request.setAttribute("rentDetails", rentDetails);
			
			//if not successfully data update to the database admin directed to the ViewReservation.jsp page without updated details
			RequestDispatcher dis3 = request.getRequestDispatcher("ViewReservation.jsp");
			dis3.forward(request, response);
		}

	}

}
