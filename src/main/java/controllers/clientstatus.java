package controllers;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import DatabaseConnection.AdminModel;
import dtos.ClientDetails;


@WebServlet("/clientstatus")
public class clientstatus extends HttpServlet {
	private static final long serialVersionUID = 1L;
  

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		String user=(String)session.getAttribute("user");
	AdminModel adm=new AdminModel();
		 
		 ClientDetails cf=adm.clientStatus(user);
	if(cf!=null) {
			RequestDispatcher rd=request.getRequestDispatcher("clientrequest.jsp");
			request.setAttribute("data", cf);
		rd.forward(request,response);
	}else {
		RequestDispatcher rd=request.getRequestDispatcher("clientrequest.jsp");
	
	rd.forward(request,response);

		
	}
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

}
