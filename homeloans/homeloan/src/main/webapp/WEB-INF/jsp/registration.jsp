<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

<style>

body
        {
        margin:0;
        padding:0;
     
        }
        
        #deco table{
          margin:0;
        padding:0px;
        
        }
.error{
    color:#FF0000;
}

 #deco {
                    width:1px;
                    position:absolute;
                    top:10%;
                    left:28%;
                    transform:transalate(-50%,50%);
                    color:white;
               } 
               
               .error{
              
               padding:0px;
              background:none;
              color:red;
                    font-size: 18px;
               }
               
               #deco h1{
                    float:left;
                    text-align:center;
                    font-size: 30px;
                    border-bottom: 6px solid #4caf50;
                    margin-bottom:10px;
                    padding:0px; 
                    color:white;
                   
                    }
                    
                    
                    
                    .a{
                    width:100%;
                    background:none;
                    border:4px solid #4caf50;
                   color:white;
                   
                    font-size: 20px;
                
                    padding:5px;
                    margin:12px;
                    }
                    
                    #deco tr td a
            {
          
                text-align: center;
                text-decoration: none;
                color: black; 
                    display: block;
                    
            }


</style>

<script type="text/javascript">

function valid(){
	var name = document.getElementById('name').value;
	var name1 = document.getElementById('name1').value;
	var name2 = document.getElementById('name2').value;
	
	var pwd = document.getElementById('pwd').value;
	var pwd1 = document.getElementById('pwd1').value;
	 var pass= document.getElementById('eml').value;
	
	
	var id1 = document.getElementById('id1');
	var id1a = document.getElementById('id1a');
	var id1b = document.getElementById('id1b');
	
	var id2 = document.getElementById('id2');
	var id3 = document.getElementById('id3');
	var id4 = document.getElementById('id4');
	

	var regex = /^[a-zA-Z ]{5,}$/;
	var pwdregex = /^[a-zA-Z0-9$#@]{8,}$/;
	 var emailformat = /^([a-z 0-9\.-]+)@([a-z 0-9-]+).([a-z]{2,8})$/;
	
	var flag=true;
	id1.innerHTML='';
	id1a.innerHTML='';
	id1b.innerHTML='';
	id2.innerHTML='';
	
	if(name==''){
	    id1.innerHTML='Please fill FirstName';
	    flag=false;
	  }
	else
	if(regex.test(name) == false){
	     id1.innerHTML="Name must be in alphabets only";
	     flag=false;
	  }
	
	if(name2==''){
	    id1b.innerHTML='Please fill LastName';
	    flag=false;
	  }
	else
	if(regex.test(name2) == false){
	     id1b.innerHTML="Name must be in alphabets only";
	     flag=false;
	  }
	
	if(pwd==''){
	    id2.innerHTML='Please fill password';
	    flag= false;
	  }
	else
	if( pwdregex.test(pwd) == false){
	     id2.innerHTML="Password is improper";
	     flag= false;
	  }  
	if(pwd1==''){
	    id4.innerHTML='ReEnter password';
	    flag= false;
	  }
	
	if (pwd != pwd1) { 
		 id4.innerHTML='Password did not match';
        return false; 
    } 

  
	
	if(pass==''){
	    id3.innerHTML='Please fill email';
	    flag= false;
	  }
	else
	if(emailformat.test(pass) == false){
	     id3.innerHTML="Email is improper";
	     flag= false;
	  }  
	
	
	
	

	return flag;
	}
   
    
</Script>


</head>
<body background="assets/img/d.jpg">

<div id="deco">
<h1>REGISTRATION</h1>
<form action="register.do" modelAttribute="user" method="post" onsubmit="return valid()">
<table>

<tr>
<td><h2>FirstName:</h2></td>
<td><input type='text' id='name' name='firstname'><br>
<div id='id1' class='error'></div></td>
</tr>

<tr>
<td><h2>MiddleName:</h2> </td>
<td><input type='text' id='name1' name='middlename'>
<div id='id1a' class='error'></div></td>
</tr>

<tr>
<td><h2>LastName:</h2> </td>
<td><input type='text' id='name2' name='lastname'>
<div id='id1b' class='error'></div></td>
</tr>

<br>


<tr>
<td><h2>Email:</h2></td>
<td><input type='text' id='eml' name='email'>
<div id='id3' class='error'></div></td>
</tr>
<br> 

<tr>
<td><h2> password:<h2></h2></td>
<td><input type='password' id='pwd' name='password'>
<div id='id2' class='error'></div></td>
</tr>

<tr>
<td><h2>Confirm password:</h2></td>
<td><input type='password' id='pwd1' name='pwd'>
<div id='id4' class='error'></div></td>
</tr>

  
 
 <tr>                 
<td><h2><input type='submit' value='Submit' class="a"></h2></td>
</tr>
</table>
</div>
</form>

</body>
</html>