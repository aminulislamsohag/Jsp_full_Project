package servlet;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import doa.CustomerDatabase;

public class DeleteSevlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		try {
			CustomerDatabase cdoa = new CustomerDatabase();
			int id = Integer.parseInt(request.getParameter("id"));
			cdoa.deleteCustomer(id);
			response.sendRedirect("List");
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
	}

}
