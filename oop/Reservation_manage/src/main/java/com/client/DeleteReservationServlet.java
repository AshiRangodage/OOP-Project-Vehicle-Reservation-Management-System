package com.client;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

 
@WebServlet("/DeleteReservationServlet")
public class DeleteReservationServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	 
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 //call method using getParameter
		String id= request.getParameter("Id");
		//create a variable with boolean type
		boolean isTrue;
		
		//assign isTrue variable to delete client  method
		isTrue = ClientDBUtil.deleteclient(id);
		
		//if successfully data delete to the database admin directed to the management.jsp page 
		if(isTrue == true) {
			RequestDispatcher dispatcher = request.getRequestDispatcher("management.jsp");
			dispatcher.forward(request, response);
		}
		else {
			//create rentalDetails list
			List<Customer> rentDetails = ClientDBUtil.getCustomerDetails(id);
			request.setAttribute("rentDetails",rentDetails);
			
			//if not successfully data delete to the database admin directed to the ViewReservation.jsp page 
			RequestDispatcher dispatcher = request.getRequestDispatcher("ViewReservation.jsp");
			dispatcher.forward(request, response);
		}
			
	}

}
