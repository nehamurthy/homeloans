<%@page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<!-- <link rel="stylesheet" href="assets/css/home.css"> -->
<style>

	.main_banner {
            margin: 0px;
            padding: 0px;
            width: 100%;
            background-image: url("assets/img/d.jpg");
            background-position: top;
            background-repeat: no-repeat;
            background-size: cover;
            height: 417px;
        }
        
        .logo_new {
        position: absolute;
        left: 7vw;
        top: 1vw;
    }
    
     .top_banner_content {
        float: right;
        position: relative;
        right: 6vw;
        top: 4vw;
    }
    
    .interest_box {
        margin: 0px auto;
        height: auto;
        width: 260px;
       	border: 4px solid white;
        text-align: center;
        margin-top: 2vw;
        background: #1abc9c;
       /*  background: -moz-linear-gradient(top, rgba(225, 0, 26, 1) 0%, rgba(225, 0, 26, 1) 70%, rgba(137, 6, 28, 1) 96%, rgba(137, 6, 28, 1) 100%);
        background: -webkit-gradient(left top, left bottom, color-stop(0%, rgba(225, 0, 26, 1)), color-stop(70%, rgba(225, 0, 26, 1)), color-stop(96%, rgba(137, 6, 28, 1)), color-stop(100%, rgba(137, 6, 28, 1)));
        background: -webkit-linear-gradient(top, rgba(225, 0, 26, 1) 0%, rgba(225, 0, 26, 1) 70%, rgba(137, 6, 28, 1) 96%, rgba(137, 6, 28, 1) 100%);
        background: -o-linear-gradient(top, rgba(225, 0, 26, 1) 0%, rgba(225, 0, 26, 1) 70%, rgba(137, 6, 28, 1) 96%, rgba(137, 6, 28, 1) 100%);
        background: -ms-linear-gradient(top, rgba(225, 0, 26, 1) 0%, rgba(225, 0, 26, 1) 70%, rgba(137, 6, 28, 1) 96%, rgba(137, 6, 28, 1) 100%);
        background: linear-gradient(to bottom, rgba(225, 0, 26, 1) 0%, rgba(225, 0, 26, 1) 70%, rgba(137, 6, 28, 1) 96%, rgba(137, 6, 28, 1) 100%);
        filter: progid:DXImageTransform.Microsoft.gradient(startColorstr='#e1001a', endColorstr='#89061c', GradientType=0);
        */ font-size: 1.7em;
        vertical-align: middle;
        color: white;
        padding: 23px;
        border-radius: 10px;
        box-shadow: -1px 2px 11px #2c2727;
        letter-spacing: 0.5px;
        font-weight: 800;
    }
    
    .rwd-table tr td{
    
    text-align: center;
    }
    
    a {
    	text-decoration: none;
    }
    
    h2, h4 {
    	margin-right: 97px;
    	margin-top: 50px;
    	
    }

</style>
</head>
<body>
	<jsp:include page="includes/homepage.html"></jsp:include>
	
	<div class="main_banner">
    <div class="logo_new">
       
    </div>
    <div class="top_banner_content">
        <h2> Wondering how much loan you are eligible for ? </h2>
        <h4> Check Your EMI Eligibility Information </h4>
        <a href="calculator.do"><div class="interest_box">Calculate</div></a>
    </div>
    <br><br>
    <br><br>
    <br><br>
    <br><br>
    <br><br>
    <br><br>
     <br><br>
     
     <br><br>
    <br><br>
    <br><br>
    <br><br>
    <br><br>
     
     
     
     
     
       <div> 
   <h2><b>CURRENT HOME LOAN INTREST RATES</b></h2> 
 <table class="rwd-table" border="12%" width="55%"> 
   <tr> 
     <th>Category</th> 
    <th>Upto(lakhs)</th>
     <th>Intrest Rate</th> 
    
   </tr> 
  <tr> 
     <td data-th="Movie Title">Women</td>
     <td data-th="Genre">30</td> 
     <td data-th="Year">8.5% to8.75%</td> 
   
   </tr> 
   <tr> 
     <td data-th="Movie Title">Others</td> 
     <td data-th="Genre">30</td> 
     <td data-th="Year">8.5% to8.75%</td> 
    
   </tr>    <tr> 
     <td data-th="Movie Title">Others</td> 
   <td data-th="Genre">30-75</td> 
    <td data-th="Year">8.5% to 9.00%</td> 
   </tr> 
</table> 


   </div> 
   <p> 
   <b> 
  <h2> Processing Fees:</h2></b> 
 <h3>Up to 0.50% of the loan amount or Rs. 3,000 whichever is higher, plus applicable taxes. </h3>
  
      <jsp:include page="includes/aside.html"></jsp:include>
    <br><br>
    <br><br>
   
    
    
    
    
    <jsp:include page="includes/footer.html"></jsp:include>
    
    
    

</body>

</html>