package servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try
		{
			PrintWriter out=response.getWriter();
			String u1=request.getParameter("uid");
			String p1=request.getParameter("pass");
			Class.forName("oracle.jdbc.driver.OracleDriver");
			Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","system");
			Statement stat=con.createStatement();
			ResultSet rs=stat.executeQuery("select * from PROJECT.REGISTRATION2 where USERID='"+u1+"'and password='"+p1+"'");
			if(rs.next())
			{
				response.sendRedirect("Home.jsp");
			}
			else
			{
				response.sendRedirect("Login.jsp");
			}
			
			out.print(u1+" "+p1);
		}
		catch(Exception e)
		{
			e.printStackTrace();
			
		}

	
	
	}

}
