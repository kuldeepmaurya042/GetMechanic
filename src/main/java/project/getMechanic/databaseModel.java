package project.getMechanic;

import java.sql.Connection;
import java.sql.Date;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

public class databaseModel
{
	private static Connection dbConnection()
	{
		Connection con=null;
		try
		{
		Class.forName("com.mysql.cj.jdbc.Driver");				
		con=DriverManager.getConnection("jdbc:mysql://localhost:3306/getmechanic","root","Password");	
		}
		catch(Exception e)
		{
			System.out.println("databaseModel.dbConnection() Exception :"+e);
		}
		return con;
	}
	
	 boolean validateUser(String user,String pass,String LType) 
	{
		boolean valid=false;
		try 
		{
		System.out.println("databaseModel.validateCustomer() call success");
		Connection con=dbConnection();	
		Statement st=con.createStatement();	
		String query="select * from "+LType+" where email='"+user+"' AND password='"+pass+"'";
		ResultSet rs=st.executeQuery(query);		
		while(rs.next())
		{
			valid=true;
		}
		}
		catch (Exception e)
		{
			System.out.println("databaseModel.validateUser() Exception :"+e);		}
		
		return valid;
	}
	
	 boolean registerCustomer(customerEntity ce)
	{
		int no=0;
		System.out.println("databaseModel.registerCustomer() call success");
		try
		{
		Connection con=dbConnection();
		PreparedStatement ps=con.prepareStatement("insert into customer (name,email,cContact,password) values (UCASE(?),UCASE(?),?,?)");
		ps.setString(1, ce.getName());
		ps.setString(2, ce.getEmail());
		ps.setString(3, ce.getContact());
		ps.setString(4, ce.getPassword());
		
		no=ps.executeUpdate();
		}
		catch(Exception e)
		{
			System.out.println("databaseModel.registerCustomer() Exception :"+e);		
		}
		if(no>0)
		{
			return true;	
		}
		else
		{
			return false;
		}
	}
	
	 boolean registerMechanic(mechanicEntity me)
	{
		int no=0;
		System.out.println("databaseModel.registerMechanic() call success");
		try
		{
		Connection con=dbConnection();
		PreparedStatement ps=con.prepareStatement("insert into mechanic (name,email,mContact,password,shopName,shopAddress,city,zip,aadharNo) values (UCASE(?),UCASE(?),?,?,UCASE(?),UCASE(?),UCASE(?),?,?)");
		ps.setString(1, me.getName());
		ps.setString(2, me.getEmail());
		ps.setString(3, me.getContact());
		ps.setString(4, me.getPassword());
		ps.setString(5, me.getShopName());
		ps.setString(6, me.getShopAddress());
		ps.setString(7, me.getCity());
		ps.setString(8, me.getZip());
		ps.setString(9, me.getAadharNo());
		
		no=ps.executeUpdate();
		}
		catch(Exception e)
		{
			System.out.println("databaseModel.registerMechanic Exception :"+e);;
		}
		if(no>0)
		{
			return true;	
		}
		else
		{
			return false;
		}
	}
	
	 boolean setOrderCustomer(orderEntity oe)
	{
		int no1=0,no2=0;
		System.out.println("databaseModel.setOrderCustomer() call Success");
		try
		{
			System.out.println("Hii this test is success");
		Connection con=dbConnection();
		PreparedStatement ps=con.prepareStatement("INSERT INTO `order` (cid,mid,vName,vNo,cContact,address,city,zip,progress,issue,date) VALUES (?,?,UCASE(?),?,?,UCASE(?),UCASE(?),?,UCASE(?),UCASE(?),?)");
		
		ps.setInt(1, oe.getCid());
		ps.setInt(2, oe.getMid());
		ps.setString(3, oe.getvName());
		ps.setString(4, oe.getvNumber());
		ps.setString(5, oe.getcContact());
		ps.setString(6, oe.getAddress());
		ps.setString(7, oe.getCity());
		ps.setString(8, oe.getZip());
		ps.setString(9, oe.getProgress());
		ps.setString(10, oe.getIssue());
		ps.setDate(11, (Date)oe.getDate());
		System.out.println("Hii this test is success");
		
		no1=ps.executeUpdate();
		PreparedStatement ps1=con.prepareStatement("INSERT INTO `vehicle` (cid,vName,vNo) VALUES (?,UCASE(?),UCASE(?))");
		ps1.setInt(1, oe.getCid());
		ps1.setString(2, oe.getvName());
		ps1.setString(3, oe.getvNumber());
		no2=ps1.executeUpdate();
		}  
		
		catch(Exception e)
		{
			System.out.println("databaseModel.setOrderCustomer Exception :"+e);
		}
		if(no1>0 && no2>0)
		{
			System.out.println("databaseModel.setOrderCustomer Return TRUE");
			return true;
			
		}
		else
		{
			System.out.println("databaseModel.setOrderCustomer Return FALSE");
			return false;
		}
	}
	boolean setOrderMechanic(orderEntity oe)
	{
		int no=0;
		System.out.println("databaseModel.setOrderMechanic() call success");
		try
		{
		Connection con=dbConnection();
		PreparedStatement ps=con.prepareStatement("UPDATE getmechanic.order SET mid=?,progress=? WHERE oid =?");
		
		ps.setInt(1, oe.getMid());
		ps.setString(2, oe.getProgress());
		ps.setInt(3,oe.getOid());
		no=ps.executeUpdate();
		}
		catch(Exception e)
		{
			System.out.println("databaseModel.setOrderMechanic Exception :"+e);
		}
		if(no>0)
		{
			return true;	
		}
		else
		{
			return false;
		}
	}
	
	boolean registerTask(orderEntity oe)
	{
		int no1=0,no2=0;
		System.out.println("databaseModel.registerTask() call success");
		try
		{
		Connection con=dbConnection();
		PreparedStatement ps=con.prepareStatement("INSERT INTO `order` (cid,mid,vName,vNo,cContact,address,city,zip,progress,issue,date) VALUES (?,?,UCASE(?),?,?,UCASE(?),UCASE(?),?,UCASE(?),UCASE(?),?)");
		
		ps.setInt(1, oe.getCid());
		ps.setInt(2, oe.getMid());
		ps.setString(3, oe.getvName());
		ps.setString(4, oe.getvNumber());
		ps.setString(5, oe.getcContact());
		ps.setString(6, oe.getAddress());
		ps.setString(7, oe.getCity());
		ps.setString(8, oe.getZip());
		ps.setString(9, oe.getProgress());
		ps.setString(10, oe.getIssue());
		ps.setDate(11, (Date)oe.getDate());
		
		no1=ps.executeUpdate();
		PreparedStatement ps1=con.prepareStatement("INSERT INTO `vehicle` (cid,vName,vNo) VALUES (?,UCASE(?),UCASE(?))");
		ps1.setInt(1, oe.getCid());
		ps1.setString(2, oe.getvName());
		ps1.setString(3, oe.getvNumber());
		no2=ps1.executeUpdate();
		}  
		catch(Exception e)
		{
			System.out.println("databaseModel.registerTask Exception :"+e);
		}
		if(no1>0 && no2>0)
		{
			return true;	
		}
		else
		{
			return false;
		}
	}
	public ArrayList<orderEntity> getOrders(int cid)
	{
		System.out.println("databaseModel.getOrders() call success");
		
		ArrayList<orderEntity> orders=new ArrayList<orderEntity>();
		try
		{
		Connection con=dbConnection();
		Statement st=con.createStatement();
		String query=null;
		
		if(cid!=0)
		{
		query="SELECT * FROM  `order` WHERE `cid`="+cid;
		}
		else
		{
			query="SELECT * FROM  `order`";
		}
		ResultSet rs=st.executeQuery(query);
		while(rs.next())
		{
			orderEntity oe=new orderEntity();
			oe.setOid(rs.getInt("oid"));
			oe.setCid(rs.getInt("cid"));
			oe.setMid(rs.getInt("mid"));
			int mid=rs.getInt("mid");
			oe.setvName(rs.getString("vName"));
			oe.setvNumber(rs.getString("vNo"));
			oe.setcContact(rs.getString("cContact"));
			if(mid!=0)
			{
			Connection Lcon=dbConnection();
			Statement Lst=Lcon.createStatement();
			ResultSet rsMechanic=Lst.executeQuery("select mContact,shopName from mechanic where mid="+mid);
			while(rsMechanic.next())
			{	
				oe.setmContact(rsMechanic.getString("mContact"));
				oe.setShopName(rsMechanic.getString("shopName"));
			}
			}else
			{
				oe.setmContact("N/A");
				oe.setShopName("N/A");
			}
			
			oe.setAddress(rs.getString("address"));
			oe.setCity(rs.getString("city"));
			oe.setZip(rs.getString("zip"));
			oe.setProgress(rs.getString("progress"));
			oe.setIssue(rs.getString("issue"));
			oe.setDate(rs.getDate("date"));
			orders.add(oe);
		}
		
		}
		catch(Exception e)
		{
			System.out.println("databaseModel.getOrders Exception :"+e );
		}
		return orders;
	}
	
	public ArrayList<orderEntity> getAcceptedOrders(int mid)
	{
		System.out.println("databaseModel.getAcceptedOrders() call success");
		
		ArrayList<orderEntity> orders=new ArrayList<orderEntity>();
		try
		{
		Connection con=dbConnection();
		Statement st=con.createStatement();
		String query="SELECT * FROM  `order` WHERE `mid`="+mid;
		
		ResultSet rs=st.executeQuery(query);
		while(rs.next())
		{
			orderEntity oe=new orderEntity();
			oe.setOid(rs.getInt("oid"));
			oe.setCid(rs.getInt("cid"));
			oe.setMid(rs.getInt("mid"));
			oe.setvName(rs.getString("vName"));
			oe.setvNumber(rs.getString("vNo"));
			oe.setcContact(rs.getString("cContact"));
			oe.setAddress(rs.getString("address"));
			oe.setCity(rs.getString("city"));
			oe.setZip(rs.getString("zip"));
			oe.setProgress(rs.getString("progress"));
			oe.setIssue(rs.getString("issue"));
			
			orders.add(oe);
		}
		
		}
		catch(Exception e)
		{
			System.out.println("databaseModel.getAcceptedOrders Exception :"+e );
		}
		return orders;
	}
		int getCustomerId(String username) 
	 	{
			int id=0;
			try 
			{
			System.out.println("databaseModel.getUserId() call Success");
			Connection con=dbConnection();	
			Statement st=con.createStatement();	
			String query="select cid from customer where email='"+username+"'";
			ResultSet rs=st.executeQuery(query);		
			while(rs.next())
			{
				id=rs.getInt("cid");
			}
			}
			catch (Exception e)
			{
				System.out.println("databaseModel.getCustomerId Exception :"+e);		}
			
			return id;
	 	}
	 
		int getMechanicId(String username) 
		{
			int id=0;
			try 
			{
			System.out.println("databaseModel.getUserId() call Success");
			Connection con=dbConnection();	
			Statement st=con.createStatement();	
			String query="select mid from mechanic where email='"+username+"'";
			ResultSet rs=st.executeQuery(query);		
			while(rs.next())
			{
				id=rs.getInt("mid");
			}
			}
			catch (Exception e)
			{
				System.out.println("databaseModel.getMechanicId Exception :"+e);		}
			
			return id;
		}
		
		int forgotPassword(String email)
		{
			System.out.println("databaseModel.forgotPassword() call Success");
			
			return 0;
		}
		
		int generateBill(int oid, String[] work, int[] cost)
		{
			
			return 0;
		}
//		int getOrderId(String vNo) 
//	 	{
//			int id=0;
//			try 
//			{
//			System.out.println("databaseModel.getUserId() call Success");
//			Connection con=dbConnection();	
//			Statement st=con.createStatement();	
//			String query="select oid from order where vNo='"+vNo+"'";
//			ResultSet rs=st.executeQuery(query);		
//			while(rs.next())
//			{
//				id=rs.getInt("cid");
//			}
//			}
//			catch (Exception e)
//			{
//				System.out.println("databaseModel.orderId Exception :"+e);		}
//			
//			return id;
//	 	}
		
}
