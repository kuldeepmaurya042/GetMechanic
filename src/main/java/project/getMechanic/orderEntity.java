package project.getMechanic;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

public class orderEntity 
{
	int oid=0,cid=0,mid=0;
	String vName=null,vNumber=null,cContact=null,mContact=null,address=null,city=null,zip=null,shopName=null,progress=null,issue=null;
	Date date=null;
	public int getOid() {
		return oid;
	}
	public void setOid(int oid) {
		this.oid = oid;
	}
	public int getCid() {
		return cid;
	}
	public void setCid(int cid) {
		this.cid = cid;
	}
	public int getMid() {
		return mid;
	}
	public void setMid(int mid) {
		this.mid = mid;
	}
	public String getvName() {
		return vName;
	}
	public void setvName(String vName) {
		this.vName = vName;
	}
	public String getvNumber() {
		return vNumber;
	}
	public void setvNumber(String vNumber) {
		this.vNumber = vNumber;
	}
	public String getcContact() {
		return cContact;
	}
	public void setcContact(String cContact) {
		this.cContact = cContact;
	}
	public String getmContact() {
		return mContact;
	}
	public void setmContact(String mContact) {
		this.mContact = mContact;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public String getZip() {
		return zip;
	}
	public void setZip(String zip) {
		this.zip = zip;
	}
	public String getShopName() {
		return shopName;
	}
	public void setShopName(String shopName) {
		this.shopName = shopName;
	}
	public String getProgress() {
		return progress;
	}
	public void setProgress(String progress) {
		this.progress = progress;
	}
	public String getIssue() {
		return issue;
	}
	public void setIssue(String issue) {
		this.issue = issue;
	}
	public Date getDate()
	{
		return this.date;
	}
	public void setDate(Date d)
	{
		this.date=d;
	}
	public String getDateString()
	{
		if(date!=null)
		{
		return new SimpleDateFormat("dd/MM/yyyy").format(date);
		}
		else
		{
			return "";
		}
	}
	public void setDate(String d)
	{
		try {
			this.date=new SimpleDateFormat("dd/MM/yyyy").parse(d);
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	
	
	
}
