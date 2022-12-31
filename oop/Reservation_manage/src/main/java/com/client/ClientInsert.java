package com.client;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

 /** Servlet implementation class ClientInsert**/
@WebServlet("/ClientInsert")
public class ClientInsert extends HttpServlet {
	private static final long serialVersionUID = 1L;

	 
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 
		//make variables to get inserted data from clientinsert.jsp page to servlet class.
		
		//create request.getParameter(""); method to save inserted data.
		    //parameter name = input name in the insert form
		
		String name = request.getParameter("name");
		String phone = request.getParameter("phone");
		String email = request.getParameter("email");
		String NIC = request.getParameter("nic");
		String LicenseNo = request.getParameter("lino");
		String HireType = request.getParameter("hiretype");
		String vehicle = request.getParameter("vehicle");
		String PickupDate = request.getParameter("pickupdate");
		String ReturnDate = request.getParameter("returndate");
		
		//create a variable with boolean type
		boolean isTrue;
		
		//assign isTrue variable to client insert method
		isTrue=ClientDBUtil.insertclient(name, phone, email, NIC, LicenseNo, HireType, vehicle, PickupDate, ReturnDate);
		
		//if successfully data added to the database client directed to the success.jsp page
		if(isTrue == true) {
			RequestDispatcher dis =request.getRequestDispatcher("success.jsp");
			dis.forward(request,response);
		}
		//if not successfully data added to the database client directed to the unsuccess.jsp page
		else {
			RequestDispatcher dis2 =request.getRequestDispatcher("unsuccess.jsp");
			dis2.forward(request,response);
		}
		
	}

}
