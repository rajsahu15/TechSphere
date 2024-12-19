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

import dtos.RegisterClient;

/**
 * Servlet implementation class passwordController
 */
@WebServlet("/passwordController")
public class passwordController extends HttpServlet {
	private static final long serialVersionUID = 1L;
 
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		String user=(String)session.getAttribute("user");
	AdminModel adm=new AdminModel();
	RegisterClient rc=adm.CheckClient(user);
	 if("client".equalsIgnoreCase(rc.getLogtype())) {
		RequestDispatcher rd = request.getRequestDispatcher("ClientUpdate.jsp");
		request.setAttribute("data", rc);
		rd.forward(request, response);
	}
	 else {
      RequestDispatcher rd = request.getRequestDispatcher("adminpassword.jsp");
			request.setAttribute("data", rc);
			rd.forward(request, response);
	 }
}
	
	

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	}


}
