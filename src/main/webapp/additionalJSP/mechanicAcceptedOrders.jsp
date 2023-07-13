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
		int mid=(int)request.getSession().getAttribute("userId");
		response.setContentType("text/html");
		databaseModel db=new databaseModel();
		ArrayList<orderEntity> al =db.getAcceptedOrders(mid);
		//System.out.println(al.isEmpty());
		out.println("<div><table border=2><tr><th>");
		out.println("Vehicle Name</th><th>Vehicle Number</th><th>Customer Contact</th><th>Address</th><th>Progress</th><th>Issue</th><th>Update</th><th>Final Bill</th></tr>");
		
		for(int i=0;i<al.size();i++)
		{	
			orderEntity oe=al.get(i);
			
			out.println("<tr>");
			out.println("<td>"+oe.getvName()+"</td>");
			out.println("<td>"+oe.getvNumber()+"</td>");
			out.println("<td>"+oe.getcContact()+"</td>");
			out.println("<td>"+oe.getAddress()+"</td>");
			out.println("<td>"+oe.getProgress()+"</td>");
			out.println("<td>"+oe.getIssue()+"</td>");
			out.println("<td><form action="+request.getContextPath()+"/mechanicController?action=updateOrder method=post>"+
			"<input type=hidden name=oid value="+oe.getOid()+"><input type=submit value='Update Progress'></form></td>");
			out.println("<td><form action="+request.getContextPath()+"/mechanicController?action=createBill method=post>"+
					"<input type=hidden name=oid value="+oe.getOid()+"><input type=submit value='Create Bill'></form></td>");
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