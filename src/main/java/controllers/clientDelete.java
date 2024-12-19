package controllers;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DatabaseConnection.AdminModel;
import dtos.RegisterClient;


@WebServlet("/clientDelete")
public class clientDelete extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String username=request.getParameter("username");
		AdminModel adm=new AdminModel();
		int i=adm.DeleteClient(username);//datadeleted
		ArrayList<RegisterClient>list=adm.getAllClients();//updated list
		
		RequestDispatcher rd=request.getRequestDispatcher("clientControl.jsp");
		if(i!=0) {
			request.setAttribute("msg", "Client Deleted");
		    request.setAttribute("ClientLIST", list);
		}
		else {
			request.setAttribute("msg", "Client not Deleted");
				
		}
		rd.forward(request,response);
		}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	}

}
