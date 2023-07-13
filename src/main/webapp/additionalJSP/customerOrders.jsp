<%
if(session.getAttribute("username")==null)
{
	response.sendRedirect(request.getContextPath()+"/login.jsp");
}
%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="project.getMechanic.orderEntity" %>
<%@ page import="project.getMechanic.databaseModel" %>
<%@ page import="java.util.ArrayList" %>
<!DOCTYPE html>
<html>
<head>
<style>
    table, th, td 
    {
       border: 1px solid black;
       padding: 3px;
    }
</style>
<meta charset="ISO-8859-1">
</head>
<body>
	<div>
		<%
		try
		{
			System.out.println("customer.jsp Java block Working");
			response.setContentType("text/html");
			databaseModel db=new databaseModel();
			int cid=(int)session.getAttribute("userId");
			ArrayList<orderEntity> al =db.getOrders(cid);
			//System.out.println(al.isEmpty());
			out.println("<div><table border=2><tr><th>");
			out.println("Vehicle Name</th><th>Vehicle Number</th><th>Customer Contact</th><th>Address</th><th>Progress</th><th>Mechanic Contact</th><th>Shop Name</th><th>Issue</th><th>Modify</th></tr>");
			
			for(int i=0;i<al.size();i++)
			{	
				orderEntity oe=al.get(i);
				out.println("<tr>");
				out.println("<td>"+oe.getvName()+"</td>");
				out.println("<td>"+oe.getvNumber()+"</td>");
				out.println("<td>"+oe.getcContact()+"</td>");
				out.println("<td>"+oe.getAddress()+"</td>");
				out.println("<td>"+oe.getProgress()+"</td>");
				out.println("<td>"+oe.getmContact()+"</td>");
				out.println("<td>"+oe.getShopName()+"</td>");
				out.println("<td>"+oe.getIssue()+"</td>");
				out.println("<td><a href=#>Edit details<a></td>");
				out.println("</tr>");
				
			}
			out.println("</table></div>");
		}
		catch(Exception e)
		{
			System.out.println("customer.jsp Exception :"+e);
		}
		
		%>
	</div>
</body>
</html>