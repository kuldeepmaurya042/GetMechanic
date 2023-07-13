package project.getMechanic;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

import com.mysql.cj.Session;
import com.mysql.cj.x.protobuf.MysqlxNotice.Frame.Scope;

public class mainController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	String encodedUrl;
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		
		String action=request.getParameter("action");
		System.out.println("mainController.doGet Action is : "+action);
		encodedUrl=response.encodeURL(request.getContextPath());
		switch(action)
		{
		case "login":
		{
			request.getRequestDispatcher("login.jsp").forward(request, response);
			break;
		}
		case "logout":
		{
			HttpSession session=request.getSession();
			session.invalidate();
			session.setMaxInactiveInterval(0);
			response.sendRedirect(encodedUrl+"/mainController?action=login");
			break;
		}
		case "register": 
		{
			request.getRequestDispatcher("registration.jsp").forward(request, response);
			break;
		}
		case "homePage": 
		{
			request.getRequestDispatcher("index.jsp").forward(request, response);
			break;
		}
		case "forgotPassword": 
		{
			request.getRequestDispatcher("forgotPassword.jsp").forward(request, response);
			break;
		}
		case "customerPage": 
		{
			request.getRequestDispatcher("customer.jsp").forward(request, response);
			break;
		}
		case "mechanicPage":
		{
			request.getRequestDispatcher("mechanic.jsp").forward(request, response);
			break;
		}
		}

	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		try {
		encodedUrl=response.encodeURL(request.getContextPath());
		PrintWriter out=response.getWriter();
		System.out.println("Main servlet Call success");
		databaseModel dbModel=new databaseModel();
		String action=request.getParameter("action");
		System.out.println("mainController.doPost Action is : "+action);
		
		switch (action) 
		{
		case "loginSubmit": 
		{
		String loginType=request.getParameter("loginType");
		System.out.println("Action login call success");
			switch(loginType)
			{
				case "customer":
				{
					System.out.println("Customer login call success");
					String username=request.getParameter("username");
					String password=request.getParameter("password");
			 
					boolean valid=dbModel.validateUser(username,password,loginType);
					if(valid)
					{
						System.out.println("Customer Login Successful");
						int id=dbModel.getCustomerId(username);
						HttpSession session=request.getSession(true);
						session.setMaxInactiveInterval(1000);
				        session.setAttribute("username",username);
				        session.setAttribute("userId", id);
				        response.sendRedirect(encodedUrl+"/mainController?action=customerPage");
					}
					else
					{
						out.println("Wrong Credentials");
						response.sendRedirect(encodedUrl+"/mainController?action=login");
					}
					
					break;
				}
				case "mechanic":
				{
					String username=request.getParameter("username");
					String password=request.getParameter("password");
			 
					boolean valid=dbModel.validateUser(username,password,loginType);
					if(valid)
					{
						System.out.println("Mechanic Login Successful");
						int id=dbModel.getMechanicId(username);
						HttpSession session=request.getSession(true); 
						session.setMaxInactiveInterval(1000);
				        session.setAttribute("username",username);
				        session.setAttribute("userId", id);
				        response.sendRedirect(encodedUrl+"/mainController?action=mechanicPage");
					}
					else
					{
						out.println("Wrong Credentials");
						response.sendRedirect(encodedUrl+"/mainController?action=login");
					}
					break;
				}
				default:
				{
					response.sendRedirect(encodedUrl+"/mainController?action=login");
					break;
				}
			}
			break;
		}
		
		case "registerSubmit": 
		{
			String registerType=request.getParameter("registerType");
			
			switch(registerType)
			{				
				case "customer":
				{
					customerEntity details=new customerEntity();
					details.setName(request.getParameter("name"));
					details.setEmail(request.getParameter("email"));
					details.setContact(request.getParameter("contact"));
					details.setPassword(request.getParameter("pass"));
					
					boolean done=dbModel.registerCustomer(details);
					if(done)
					{
						out.println("Registration Successful");
						request.getRequestDispatcher("additionalJSP/registrationDone.jsp");
					}
					else
					{
						out.println("Error");
					}
					break;
				}
				case "mechanic":
				{
					customerEntity details=new customerEntity();
					details.setName(request.getParameter("name"));
					details.setEmail(request.getParameter("email"));
					details.setContact(request.getParameter("contact"));
					details.setPassword(request.getParameter("pass"));
					
					request.setAttribute("details", details);
					request.getRequestDispatcher("mRegistration.jsp").forward(request, response);
					break;
					
				}
				case "finalMechanic":
				{
					mechanicEntity details=new mechanicEntity();
					details.setName(request.getParameter("name"));
					details.setEmail(request.getParameter("email"));
					details.setContact(request.getParameter("contact"));
					details.setPassword(request.getParameter("pass"));
					details.setShopName(request.getParameter("shopName"));
					details.setShopAddress(request.getParameter("shopAddress"));
					details.setCity(request.getParameter("city"));
					details.setZip(request.getParameter("zip"));
					details.setAadharNo(request.getParameter("aadharNo"));
					
					boolean done=dbModel.registerMechanic(details);
					if(done)
					{
						out.println("Registration Successful");
					}
					else
					{
						out.println("Error");
					}
					break;
				}
				default :
				{
					
					break;
				}
			
			}
			break;
		}
		
		case "resetPassword": 
		{
			
			break;
		}
		
		case "register": 
		{
			response.sendRedirect(encodedUrl+"/mainController?action=registerPage");
			break;
		}
		default:
		{
			
			break;
		}
		}
		
	}
	catch(Exception e)
		{
		System.out.println("mainController Exception :"+e);
		}
		
	}
	
}
