package project.getMechanic;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.time.LocalDate;
import java.util.Date;

public class customerController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		PrintWriter out=response.getWriter();
		
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		HttpSession session=request.getSession();
		if(session.getAttribute("username")==null)
		{
			response.sendRedirect(request.getContextPath()+"/login.jsp");
		}
		try
		{
		PrintWriter out=response.getWriter();
		databaseModel dbModel=new databaseModel();
		HelpingFunctions hf=new HelpingFunctions();
		String action=request.getParameter("action");

		switch (action) 
		{
		case "getMechanic": 
		{
			System.out.println("customerController.getMechanic() call Success.");
			int cid=(int)session.getAttribute("userId");
			orderEntity oe=new orderEntity();
			oe.setCid(cid);
			oe.setvName(request.getParameter("vName"));
			oe.setvNumber(request.getParameter("vNumber"));
			oe.setcContact(request.getParameter("contact"));
			oe.setAddress(request.getParameter("address"));
			oe.setCity(request.getParameter("city"));
			oe.setZip(request.getParameter("zip"));
			oe.setIssue(request.getParameter("issue"));
			oe.setProgress("Order Not Recieved");
			LocalDate ld = LocalDate.now();
			oe.setDate(hf.convertToDateUsingDate(ld));
			boolean done=dbModel.setOrderCustomer(oe);
			if(done)
			{
				request.getRequestDispatcher(request.getContextPath()+"/mainController?action=customerPage");
				System.out.println("Get Mechanic Success Done Block");
				
			}
			else {
				System.out.println("Get Mechanic Failed Done Block");
			}
			break;
		}
		
		case "forgotPassword":
		{
			System.out.println("customerController.forgotPassword call Success");
			String email=request.getParameter("email");
			dbModel.forgotPassword(email);
		}
		
		default :
		{
			
			break;
		}
		}
		
	}
	catch(Exception e)
	{
		System.out.println("customerController Exception :"+e);
	}
		
	}
	
}
