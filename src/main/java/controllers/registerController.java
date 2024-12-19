package controllers;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DatabaseConnection.AdminModel;


@WebServlet("/registerController")
public class registerController extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String username = request.getParameter("username");
		String password = request.getParameter("password");
		String logtype = request.getParameter("logtype");
	    AdminModel adm=new AdminModel();
		int i=adm.RegisterClient(username,password,logtype);
		 
		
		if (i != 0) {
			request.setAttribute("m1", "Login Successful Go To LoginPage And Login Again");
			request.setAttribute("ack", "one");
	         
			RequestDispatcher rd =	request.getRequestDispatcher("successregister.jsp");

			rd.forward(request, response);
		} else {
			request.setAttribute("m1", "Login Failed Username is already taken!!!!!");
			request.setAttribute("ack", "two");
	          
			RequestDispatcher rd =	request.getRequestDispatcher("successregister.jsp");

			rd.forward(request, response);
		}
	
	}

}
