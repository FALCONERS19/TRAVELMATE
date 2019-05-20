package servlet;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class PaymentServlet
 */
@WebServlet("/PaymentServlet")
public class PaymentServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public PaymentServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//doGet(request, response);
		
	try
	{
		
	
		 Class.forName("oracle.jdbc.driver.OracleDriver");
		 Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","system");
		 String sql="select TICKETID,NOOFPERSON from project.TRAVELINFO where TICKETID=?";
		 PreparedStatement stat=con.prepareStatement(sql);
		 stat.setInt(1,tbid);
		 ResultSet rs=stat.executeQuery();
		 while(rs.next())
		 {
		  tbid=rs.getInt("TB_ID");
		 %>
		 <tr><td><%Random r=new Random();
		 int n=r.nextInt();
		 out.print("UR Bill ID : "+n+"<br>");
		 out.print("No of Passengers :"+rs.getInt(2));
		 }
		 catch(Exception e)
		 {
			 
		 }
		
	}

}
	
	
	
	 
	
	 
	 // to generate ticket id to get passenger details from database

	
	
				 
	
	   
	  	
	  