package controllers;

import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import DatabaseConnection.AdminModel;
import dtos.ClientDetails;

/**
 * Servlet implementation class updatecontroller
 */
@WebServlet("/updatecontroller")
public class updatecontroller extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
 
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String name = request.getParameter("name");
		AdminModel adm = new AdminModel();
		 ClientDetails cf=adm.clientStatus(name);
		RequestDispatcher rd = request.getRequestDispatcher("updateMssg.jsp");
		request.setAttribute("client", cf);
		rd.forward(request, response);
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String mode = request.getParameter("mode");
		String message = request.getParameter("message");
		
		
		ClientDetails cpp = new ClientDetails(name,email,mode,message);
		AdminModel adm = new AdminModel();
		int i = adm.updateClientContact(cpp);
		
		RequestDispatcher rd = request.getRequestDispatcher("clientrequest.jsp");
		if (i != 0) {
			request.setAttribute("ms", "Request Successfully Updated");
			request.setAttribute("data",cpp);
} else {
			request.setAttribute("ms", "Record Not Updated");
}
		rd.forward(request, response);
		
	}

}
