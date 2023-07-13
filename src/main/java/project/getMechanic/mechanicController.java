package project.getMechanic;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.io.PrintWriter;
import java.time.LocalDate;

public class mechanicController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		PrintWriter out=response.getWriter();
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		PrintWriter out=response.getWriter();
		try
		{
			databaseModel dbModel=new databaseModel();
			String action=request.getParameter("action");
			HttpSession session=request.getSession();
			orderEntity oe=new orderEntity();
			HelpingFunctions hf=new HelpingFunctions();
			customerEntity ce=new customerEntity();
			switch (action) 
			{
			case "acceptOrder": 
			{
				System.out.println("mechanicController.acceptOrder call Success");
				oe.setOid(Integer.parseInt(request.getParameter("oid")));
				oe.setMid((int)session.getAttribute("userId"));
				oe.setProgress("Order Received");
				dbModel.setOrderMechanic(oe);
				request.getRequestDispatcher("mechanic.jsp").forward(request, response);
				break;
			}
			case "registerTask":
			{
				System.out.println("mechanicController.registerTask call Success");
				boolean customerRegistered=false;
				String email=request.getParameter("email").toUpperCase();
				int cid=dbModel.getCustomerId(email);
				if(cid==0)
				{
				ce.setName(request.getParameter("name"));
				ce.setEmail(request.getParameter("email"));
				ce.setContact(request.getParameter("contact"));
				ce.setPassword(request.getParameter("contact"));
				customerRegistered=dbModel.registerCustomer(ce);
				cid=dbModel.getCustomerId(email);
				customerRegistered=true;
				}
				else
				{
					customerRegistered=true;
				}
				if(customerRegistered)
				{
					
					orderEntity oe1=new orderEntity();
					oe1.setCid(cid);
					oe1.setvName(request.getParameter("vName"));
					oe1.setvNumber(request.getParameter("vNumber"));
					oe1.setcContact(request.getParameter("contact"));
					oe1.setAddress(request.getParameter("address"));
					oe1.setCity(request.getParameter("city"));
					oe1.setZip(request.getParameter("zip"));
					oe1.setIssue(request.getParameter("issue"));
					oe1.setProgress("Done (Bill Generated)");
					LocalDate ld = LocalDate.now();
					oe1.setDate(hf.convertToDateUsingDate(ld));
					
					oe1.setMid((int)session.getAttribute("userId"));
					
					boolean done=dbModel.setOrderCustomer(oe1);

					if(done)
					{
						request.getRequestDispatcher("mechanic.jsp").forward(request, response);
					}
					
				}
				
				break;
			}
			case "previousTask":
			{
				
				break;
			}
			case "createBill":
			{
				request.setAttribute("oid",request.getParameter("oid"));
				request.getRequestDispatcher("generateBill.jsp").forward(request, response);
				break;
			}
			case "generateBill":
			{
				int oid=(int)request.getAttribute("oid");
				String [] work=request.getParameterValues("work");
				String [] cost=request.getParameterValues("cost");
				System.out.println("Put Feedback after bill is generated");
				
				break;
			}
			default :
			{
				System.out.println("No Action Found");
			}
			}
		}
		catch(Exception e)
		{
			System.out.println("mechanicController Exception :"+e);
		}
	}

}
