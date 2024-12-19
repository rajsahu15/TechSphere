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


@WebServlet("/clientController")
public class clientController extends HttpServlet {
	private static final long serialVersionUID = 1L;
  
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		 AdminModel adm=new AdminModel();
	     ArrayList<RegisterClient> list2 = adm.getAllClients();

	     RequestDispatcher rd=request.getRequestDispatcher("clientControl.jsp");
		 request.setAttribute("ClientLIST",list2);
		 rd.forward(request,response);
 }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	}

}
