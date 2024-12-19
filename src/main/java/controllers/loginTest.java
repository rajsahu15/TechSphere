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


@WebServlet("/loginTest")
public class loginTest extends HttpServlet {
	private static final long serialVersionUID = 1L;
 
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String username = request.getParameter("username");
		String password = request.getParameter("password");
		String logtype=request.getParameter("logtype");
	     
	AdminModel adm = new AdminModel();
		int i = adm.checkLogin(username,password,logtype);
		HttpSession session = request.getSession();
		
		if (i != 0 ) {
  
			if("admin".equalsIgnoreCase(logtype))
			{
				session.setAttribute("user", username);
			response.sendRedirect("adminhome.jsp");
			
			

			}
			else {
				session.setAttribute("user", username);
				
				response.sendRedirect("clienthome.jsp");

			}
			
		}

		 else {
			RequestDispatcher rd = request.getRequestDispatcher("login.jsp");
			request.setAttribute("msg", "Incorrect User Name or Password");
			rd.forward(request, response);
		
	}

}
}
