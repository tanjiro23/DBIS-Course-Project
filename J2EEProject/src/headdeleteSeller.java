import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/headdeleteSeller")
public class headdeleteSeller extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
    public headdeleteSeller() {
        super();
        // TODO Auto-generated constructor stub
    }
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try
		{


		//getting input values from jsp page
		String id = request.getParameter("id");

		Connection con = null;
 		String url = "jdbc:mysql://localhost:3306/library"; //mysql URL and followed by the database name
 		String username = "librarian"; //mysql username
 		String password = "librarian"; //mysql password
		
		Class.forName("com.mysql.jdbc.Driver");
		con = DriverManager.getConnection(url, username, password); //attempting to connect to mysql database
 		System.out.println("Printing connection object "+con);
 		ServletContext context=getServletContext();  
 		String hno=(String)context.getAttribute("headID");

		PreparedStatement st = con .prepareStatement("delete from users where user_id=?");
 		st.setString(1,id);
		
		int result1=st.executeUpdate();
		
		if(result1>0)		{
			
			RequestDispatcher rd = request.getRequestDispatcher("Deleted.jsp");
			rd.forward(request, response);
		}
		

		}
		 catch (Exception e) 
 		{
 			e.printStackTrace();
 		}

	
	}


}
