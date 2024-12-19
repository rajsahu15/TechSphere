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


@WebServlet("/contactController")
public class contactController extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String name=request.getParameter("name");
		String email=request.getParameter("email");
		String mode=request.getParameter("mode");
		String message=request.getParameter("message");

		AdminModel adm=new AdminModel();
		ClientDetails cd= new ClientDetails(name, email, mode, message);
		int i=adm.ClientEntry(cd);
		
		RequestDispatcher rd=request.getRequestDispatcher("message.jsp");
		
		
		if(i!=0)
		{
			request.setAttribute("msg", "Message Sent Successfully our Admin Will Contact You Shortly.");
		}else {
			request.setAttribute("msg", "Email Already Exists Try to Edit Your Request.");
				
	}
		rd.forward(request, response);
		}

}
