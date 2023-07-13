
function verifyPass()
{
  
  var pw = document.getElementById("pass").value;  
  //check empty password field  
  if(pw == "") {  
     document.getElementById("msg1").innerHTML = "**Fill the password please!";  
     return false;  
  }  
   
 //minimum password length validation  
  if(pw.length < 5) {  
     document.getElementById("msg1").innerHTML = "**Password length must be atleast 5 characters";  
     return false;  
  }  
  
//maximum length of password validation  
  if(pw.length > 15) {  
     document.getElementById("msg1").innerHTML = "**Password length must not exceed 15 characters";  
     return false;  
  } 
  else {  
     document.getElementById("msg1").innerHTML = "🗸";  
     return true;
  }    
	
}




function verifyRepass()
{
	 var pw = document.getElementById("pass").value;  

	if(pw==null || pw=="")
	{
	}
	else
	{
	var a=document.getElementById("pass").value;
	var b=document.getElementById("re_pass").value;
	if(a!=b)
	{
		document.getElementById("msg2").innerHTML="**Password did't Match";
		return false;
	}
	else
	{
		document.getElementById("msg2").innerHTML='🗸';
		return true;
	}
	}
}
function verifyEmail()
{
	
	
}

function verifyContact()
{
	var a=document.getElementById("contact").value;
	//var phoneno = /^\d{10}$/;
	if(a.length!=10 || isNaN(a))
	{
		document.getElementById("msg3").innerHTML="**Enter Valid Contact Number";
		return false;
		
	}
	else
	{
		document.getElementById("msg3").innerHTML='🗸';
		return true;
	}
}

