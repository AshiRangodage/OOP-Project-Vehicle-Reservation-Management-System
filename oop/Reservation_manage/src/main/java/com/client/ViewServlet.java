package com.client;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

 
@WebServlet("/ViewServlet")
public class ViewServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	 
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
        //javaScript error
		PrintWriter out= response.getWriter();
		response.setContentType("text/html");
		//call method using getParameter
		String Name = request.getParameter("name");	
		String NIC = request.getParameter("nic");
		//create a variable with boolean type
		boolean isTure;
		
		//assign isTrue variable to validate  method
		isTure = ClientDBUtil.validate(Name,NIC);
		
		if(isTure == true) {
			//create cusDetails list
			List<Customer> cusDetails = ClientDBUtil.getClient(Name);
			request.setAttribute("cusDetails",cusDetails);
			
			//if successfully data retrieved to the database client directed to the reservation.jsp page 
			RequestDispatcher dis =request.getRequestDispatcher("reservation.jsp");
			dis.forward(request, response);
				
		}
		else {
			//using out.println for print this in browser
			//javaSript error
			 out.println("<script type='text/javascript'>");
			 //printing alert message
			 out.println("alert('Your name or NIC number is incorrect');");
			 //navigate location
			 out.println("location ='view.jsp'");
			 out.println("</script>");
		}
		
	}

}
