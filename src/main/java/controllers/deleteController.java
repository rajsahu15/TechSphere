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
import dtos.ClientDetails;



@WebServlet("/deleteController")
public class deleteController extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String name=request.getParameter("name");
		AdminModel adm=new AdminModel();
		int i=adm.DeleteEnquiry(name);//datadeleted
		ArrayList<ClientDetails>list=adm.getAllEnquiries();//updated list
		
		RequestDispatcher rd=request.getRequestDispatcher("contacts.jsp");
		if(i!=0) {
			request.setAttribute("msg", "Record Deleted");
		    request.setAttribute("LIST", list);
		}
		else {
			request.setAttribute("msg", "Record Not Deleted");
				
		}
		rd.forward(request,response);
		}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	}

}
