package controllers;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DatabaseConnection.AdminModel;
import dtos.RegisterClient;


@WebServlet("/passwordUpdate")
public class passwordUpdate extends HttpServlet {
	private static final long serialVersionUID = 1L;
 
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String username=request.getParameter("username");
		AdminModel adm=new AdminModel();
		
		RegisterClient rc=adm.CheckClient(username);
		 if("admin".equalsIgnoreCase(rc.getLogtype()))
			 
		 {
		       RequestDispatcher rd = request.getRequestDispatcher("admpassupdate.jsp");
				request.setAttribute("data", rc);
				rd.forward(request, response);
				
		 }
		
		 else {
			
		RequestDispatcher rd = request.getRequestDispatcher("passwordUpdate.jsp");
		request.setAttribute("data", rc);
		rd.forward(request, response);
		 }
		
		
	
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {


		String username = request.getParameter("username");
		String password = request.getParameter("password");
		String logtype = request.getParameter("logtype");
		
		RegisterClient rc=new RegisterClient(username, password, logtype);
		AdminModel adm = new AdminModel();
		int i = adm.updateClientPassword(rc);
		
		 if("admin".equalsIgnoreCase(rc.getLogtype()))
		 {				
		RequestDispatcher rd = request.getRequestDispatcher("adminpassword.jsp");
		if (i != 0) {
			request.setAttribute("ms", "Password Successfully Updated");
			request.setAttribute("data",rc);
}else {
	request.setAttribute("ms", "Failed To Update Password");
	request.setAttribute("data",rc);
	
}
		rd.forward(request, response);
		
		 }else {
			 
			 RequestDispatcher rd = request.getRequestDispatcher("ClientUpdate.jsp");
				if (i != 0) {
					request.setAttribute("ms", "Password Successfully Updated");
					request.setAttribute("data",rc);
		}else {
			request.setAttribute("ms", "Failed To Update Password");
			request.setAttribute("data",rc);
			
		}
				rd.forward(request, response);
				 
			 
		 }
		
		
	}
	}


