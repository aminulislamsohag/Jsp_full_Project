package servlet;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import doa.Database;


public class UserDeleteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			Database udoa = new Database();
			int id = Integer.parseInt(request.getParameter("id"));
			System.out.println("Delete User ID ="+id);
			udoa.deleteUser(id);
			response.sendRedirect("UserListServlet?deletesuccess=true");
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
	}
}
