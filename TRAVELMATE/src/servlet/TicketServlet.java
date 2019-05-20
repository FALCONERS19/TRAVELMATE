package servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.Random;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class TicketServlet
 */
@WebServlet("/TicketServlet")
public class TicketServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public TicketServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//doGet(request, response);
		 PrintWriter out=response.getWriter();
		  
		 String ticketid=request.getParameter("tid");
		 String source=request.getParameter("source");
		
		 String destination=request.getParameter("destination");
		
		 String fromdate=request.getParameter("fromdate");
		 String mobilenumber=request.getParameter("mob");
		 String NoofPersons=request.getParameter("nos");
		 
		 String name1=request.getParameter("name1");
		 String age1=request.getParameter("age1");
		 String gender1=request.getParameter("gender1");
		 
		 String name2=request.getParameter("name2");
		 String age2=request.getParameter("age2");
		 String gender2=request.getParameter("gender2");
		 
		 String name3=request.getParameter("name3");
		 String age3=request.getParameter("age3");
		 String gender3=request.getParameter("gender3");
		 
		 
		 String name4=request.getParameter("name4");
		 String age4=request.getParameter("age4");
		 String gender4=request.getParameter("gender4");
		 
		 //variable for ticket bill generation
		 String bookingid=request.getParameter("bid");
	
		 
		 
		 Random rg=new Random();
		 StringBuilder sb=new StringBuilder();
		 for(int i=0;i<5; i++)
		 {
		  sb.append(rg.nextInt(9));
		 }
		 String seq=sb.toString();
		 System.out.println(seq);
		  
		 
		 String Batchname="TravelMate";
			String Batchnumber="19";
		 
			String ticketid1=(Batchname.substring(0,2)+Batchnumber.substring(0,2)+seq);
			System.out.println(ticketid1);
			
			
			// to Generate Bill_ID
			 Random r=new Random();
			 StringBuilder s=new StringBuilder();
			 for(int i=0;i<5; i++)
			 {
			  sb.append(rg.nextInt(5));
			 }
			 String sq=s.toString();
			 System.out.println(sq);
			 
			 String Batchname1="TBook";
			 	String bookingid1=Batchname1.substring(0,2)+sq;
				System.out.println(bookingid1); 
			  
		 try
		 {
		  DriverManager.registerDriver(new oracle.jdbc.driver.OracleDriver());
		  Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","system");
		  
		  Statement stmt = con.createStatement();
		  
		  String sql="insert into project.Travelinfo values(?,?,?,?,?,?)";
		  
		  PreparedStatement pre=con.prepareStatement(sql);
		  pre.setString(1, ticketid1);
		  pre.setString(2, source);
		  pre.setString(3, destination);
		  pre.setString(4, fromdate);
		  pre.setString(5, mobilenumber);
		  pre.setString(6, NoofPersons);
		  int result=pre.executeUpdate();
		  System.out.println("success");
		  
		  
		                                                                                                        	
		   	
		   //out.println("Data is inserted successfully in both tables");
		  String sql1="insert into Project.PassengerInfo values(?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
		  PreparedStatement pre1=con.prepareStatement(sql1);
		  pre1.setString(1, ticketid1);
		  pre1.setString(2, NoofPersons);
		  pre1.setString(3, name1);
		  pre1.setString(4, age1);
		  pre1.setString(5, gender1);
		  pre1.setString(6, name2);
		  pre1.setString(7, age2);
		  pre1.setString(8, gender2);
		  pre1.setString(9, name3);
		  pre1.setString(10, age3);
		  pre1.setString(11, gender3);
		  pre1.setString(12, name4);
		  pre1.setString(13, age4);
		  pre1.setString(14, gender4);
		  int result1=pre1.executeUpdate();  
		  
		  // rate calculation 
		
			String sql3 = "select * from project.SOUTHPACK where source ='"+source+"' and destination = '"+destination+"'";    
		    Statement stat=con.createStatement();
		    ResultSet rs=stat.executeQuery(sql3);
		    int dist = 0;
		    double amount =0.0;
		  
		    while(rs.next())
		    {
		     dist = rs.getInt(3);
		     out.println("Distance : " + dist);
		     //response.sendRedirect("index.jsp");
		     
		   if(dist<=500)
		   {
		    amount = dist*6.5;
		    out.println("Amount : " + amount);
		   
			  
		   // response.sendRedirect("index.jsp");
		    }
		  if(dist>500 && dist<=1000)
		  {
		   
		   int d1 = dist-500;
		   amount = dist*6.5 + d1*5.5;
		   response.sendRedirect("index.jsp");
		  
		   out.println("Amount : " + amount);
		   
		  }
		  if(dist>=1000)
		  {
			int d1 = dist-500;
			amount = dist*6.5 + d1*4.5;
		//	response.sendRedirect("index.jsp");
			 
		   out.println("Amount : " + amount);
		  }
		 
		 }
		 	
//insert into TravelBill table


String sql2="insert into Project.TravelBill values(?,?,?,?)"; 
PreparedStatement sta=con.prepareStatement(sql2);
System.out.println("success");
	sta.setString(1,ticketid1);
	sta.setString(2, bookingid1);
	sta.setString(3, NoofPersons);
	sta.setDouble(4, amount);
		  sta.executeUpdate();
		 
		
		//out.println( "Amount :"+amount+"<br>");
			 
		 }
		 
		 catch(Exception e)
		 {
		   e.printStackTrace();
		     	 }

		 request.getRequestDispatcher("index.jsp").include(request, response);
	}

}
