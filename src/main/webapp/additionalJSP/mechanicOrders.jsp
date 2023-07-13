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
	<%
	try
	{
		System.out.println("mechanic.jsp Java block Working");
		response.setContentType("text/html");
		databaseModel db=new databaseModel();
		ArrayList<orderEntity> al =db.getOrders(0);
		//System.out.println(al.isEmpty());
		out.println("<div><table border=2><tr><th>");
		out.println("Vehicle Name</th><th>Vehicle Number</th><th>Customer Contact</th><th>Address</th><th>Progress</th><th>Issue</th><th>Date</th><th>Grab</th></tr>");
		String date;
		for(int i=0;i<al.size();i++)
		{	
			orderEntity oe=al.get(i);
			date=oe.getDateString();
			out.println("<tr>");
			out.println("<td>"+oe.getvName()+"</td>");
			out.println("<td>"+oe.getvNumber()+"</td>");
			out.println("<td>"+oe.getcContact()+"</td>");
			out.println("<td>"+oe.getAddress()+"</td>");
			out.println("<td>"+oe.getProgress()+"</td>");
			out.println("<td>"+oe.getIssue()+"</td>");
			out.println("<td>"+date+"</td>");
			if(oe.getMid()==0)
			{
			out.println("<td> <form action="+request.getContextPath()+"/mechanicController?action=acceptOrder method=post >"+
			"<input type=hidden name=oid value="+oe.getOid()+"><input type=submit value='Accept Order'></form></td>");
			}
			
			else
			{
			out.println("<td>Order Accepted</td>");
			}
			out.println("</tr>");
			
		}
		out.println("</table></div>");
	}
	catch(Exception e)
	{
		System.out.println("mechanic.jsp Exception :"+e);
	}
	
	%>
</body>
</html>