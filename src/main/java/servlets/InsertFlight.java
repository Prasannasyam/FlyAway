package servlets;

import javax.servlet.annotation.WebServlet;

import javax.servlet.http.HttpServlet;
import java.io.IOException;
import java.sql.SQLException;
import java.util.HashMap;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import com.ConnectDatabase.JdbcConnectUtil;

@WebServlet("/InsertFlight")
public class InsertFlight extends HttpServlet {
	private static final long serialVersionUID= 1L;
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String source=request.getParameter("source");
		String destination=request.getParameter("destination");
		String name=request.getParameter("name");
		String time=request.getParameter("time");
		String price=request.getParameter("price");
		String departure=request.getParameter("departure");
		
		HashMap<String,String>flight=new HashMap<>();
		
		flight.put("flight_from",source);
		flight.put("flight_to",destination);
		flight.put("name",name);
		flight.put("time_of_flight",time);
		flight.put("ticket_price",price);
		flight.put("date",departure);
		try {
			JdbcConnectUtil dao = new JdbcConnectUtil();
			HttpSession session=request.getSession();
			if(dao.insertFlight(flight)) {
				session.setAttribute("message", "Flight added successfully");
				}
			else {		
			session.setAttribute("message","Invalid Details");
			} 
	   }catch (ClassNotFoundException | SQLException e) {
			System.out.print("error");
			e.printStackTrace();
			}
		    response.sendRedirect("AdminHome.jsp");
		}
}
