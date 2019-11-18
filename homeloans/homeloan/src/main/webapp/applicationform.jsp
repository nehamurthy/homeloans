<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Apply for a Home Loan</title>

 <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css">
<link rel='stylesheet' href='https://fonts.googleapis.com/css?family=Overpass:300,400,600,800'>
<link rel="stylesheet" href="assets/css/style.css">

<script>
	function displayFields() {
		var typeofemp = document.getElementById("typeofemp").value;
		if(typeofemp == "salaried") {
			document.getElementById("field1").style.display = 'block';
			document.getElementById("field2").style.display = 'block';
			document.getElementById("field3").style.display = 'none';
			document.getElementById("field4").style.display = 'none';
			document.getElementById("field5").style.display = 'none';
			document.getElementById("field6").style.display = 'none';
			document.getElementById("field7").style.display = 'block';
			document.getElementById("field8").style.display = 'block';
			document.getElementById("toe").style.display = 'block';
			
		}
		else if(typeofemp == "self-employed") {
			document.getElementById("field1").style.display = 'none';
			document.getElementById("field2").style.display = 'none';
			document.getElementById("field3").style.display = 'block';
			document.getElementById("field4").style.display = 'block';
			document.getElementById("field5").style.display = 'block';
			document.getElementById("field6").style.display = 'block';
			document.getElementById("field7").style.display = 'block';
			document.getElementById("field8").style.display = 'block';
			document.getElementById("toe").style.display = 'block';
		}
		else if(typeofemp == "-1") {
			document.getElementById("field1").style.display = 'none';
			document.getElementById("field2").style.display = 'none';
			document.getElementById("field3").style.display = 'none';
			document.getElementById("field4").style.display = 'none';
			document.getElementById("field5").style.display = 'none';
			document.getElementById("field6").style.display = 'none';
			document.getElementById("field7").style.display = 'none';
			document.getElementById("field8").style.display = 'none';
		}
		//alert(typeofemp);
	}
</script>

</head>
<body>
	<div class="tabset">
  <!-- Tab 1 -->
  <input type="radio" name="tabset" id="tab1" aria-controls="personaldetails" checked>
  <label for="tab1">Personal Details</label>
  <!-- Tab 2 -->
  <input type="radio" name="tabset" id="tab2" aria-controls="incomedetails">
  <label for="tab2">Income Details</label>
  <!-- Tab 3 -->
  <input type="radio" name="tabset" id="tab3" aria-controls="propertydetails">
  <label for="tab3">Property Details</label>
  <!-- Tab 4 -->
  <input type="radio" name="tabset" id="tab4" aria-controls="loandetails">
  <label for="tab4">Loan Details</label>
  <!-- Tab 5 -->
  <input type="radio" name="tabset" id="tab5" aria-controls="uploaddocuments">
  <label for="tab5">Upload Documents</label>
  
  <div class="tab-panels">
    <section id="personaldetails" class="tab-panel">
      <h2>Personal Details</h2>
		<div class="personaldetails_form">
			<form action="Login.html">
				<table cellpadding=10>
					<!--<tr>
						<td>First Name</td>
						<td><input type="text" name="fname" id="fname"></td>
					</tr>
					<tr>
						<td>Middle Name</td>
						<td><input type="text" name="mname" id="mname"></td>
					</tr>
					<tr>
						<td>Last Name</td>
						<td><input type="text" name="lname" id="lname"></td>
					</tr>
					<tr>
						<td>Email ID</td>
						<td><input type="email" name="email" id="email"></td>
					</tr>
					<tr>
						<td>Password</td>
						<td><input type="password" name="password" id="password"></td>
					</tr>
					<tr>
						<td>Confirm Password</td>
						<td><input type="password" name="cpassword" id="cpassword"></td>
					</tr>-->
					<tr>
						<td>Phone Number</td>
						<td><input type="text" name="phone" id="phone"></td>
					</tr>
					<tr>
						<td>Date Of Birth</td>
						<td><input type="date" name="dob" id="dob"></td>
					</tr>
					<tr>
						<td>Gender</td>
						<td>
							<input type="radio" name="gender" id="gender" value="male">Male
							<input type="radio" name="gender" id="gender" value="female">Female
						</td>
					</tr>
					<tr>
						<td>Nationality</td>
						<td><input type="text" name="nationality" id="nationality"></td>
					</tr>
					<tr>
						<td>Aadhar Number</td>
						<td><input type="text" name="aadhar" id="aadhar"></td>
					</tr>
					<tr>
						<td>PAN Number</td>
						<td><input type="text" name="pan" id="pan"></td>
					</tr>
					<tr>
						<td colspan="2"><input type="submit" value="Submit"></td>
					</tr>
				</table>
			</form>
		</div>
  </section>
    <section id="incomedetails" class="tab-panel">
      <h2>Income Details</h2>
		<div class="personaldetails_form">
			<form action="Login.html">
				<table border=0 cellpadding=10>
					<tr id="toe">
						<td>Type of Employment</td>
						<td>
							<select name="typeofemp" id="typeofemp" onchange="displayFields()">
								<option value="-1">--Select--</option>
								<option value="salaried">Salaried</option>
								<option value="self-employed">Self-Employed</option>
							</select>
						</td>
					</tr>
					
					<tr class="f1" id="field1">
						<td>Retirement Age</td>
						<td>
							<select name="retire">
								<option value="-1">--Select--</option>
								<option value="58">58</option>
								<option value="59">59</option>
								<option value="60">60</option>
								<option value="61">61</option>
							</select>
						</td>
					</tr>
					
					<tr class="f1" id="field2">
						<td>Monthly Salary</td>
						<td><input type="text" name="msal" id="msal"></td>
					</tr>
					
					<tr class="f1" id="field3">
						<td>Turnover</td>
						<td><input type="text" name="turnover" id="turnover"></td>
					</tr>
					
					<tr class="f1" id="field4">
						<td>Nature of Business</td>
						<td><input type="text" name="nob" id="nob"></td>
					</tr>
					
					<tr class="f1" id="field5">
						<td>Business Vintage</td>
						<td><input type="text" name="vintage" id="vintage"></td>
					</tr>
					
					<tr class="f1" id="field6">
						<td>Income Tax Return</td>
						<td><input type="text" name="itr" id="itr"></td>
					</tr>
					
					<tr class="f1" id="field7">
						<td>Organization Type</td>
						<td><input type="text" name="otype" id="otype"></td>
					</tr>
					
					<tr class="f1" id="field8">
						<td>Employer Name</td>
						<td><input type="text" name="ename" id="ename"></td>
					</tr>
					
					<tr>
						
						<td colspan="2" align=center><input type="submit" value="Submit"></td>
					</tr>
					
				</table>
			</form>
		</div>
    </section>
    <section id="propertydetails" class="tab-panel">
      <h2>Property Details</h2>
      <div class="personaldetails_form">
			<form action="Login.html">
				<table cellpadding=10>
					<tr>
						<td>Property Location</td>
						<td><input type="text" name="ploc" id="ploc"></td>
					</tr>
					<tr>
						<td>Property Name</td>
						<td><input type="text" name="pname" id="pname"></td>
					</tr>
					<tr>
						<td>Estimated Amount</td>
						<td><input type="text" name="eamt" id="eamt"></td>
					</tr>
					<tr>
						<td></td>
						<td><input type="submit" value="Submit"></td>
					</tr>
				</table>
			</form>
		</div>
    </section>
	 <section id="loandetails" class="tab-panel">
      <h2>Loan Details</h2>
     <div class="personaldetails_form">
			<form action="Login.html">
				<table cellpadding=10>
					<tr>
						<td>Maximum Loan Amount Grantable</td>
						<td><input type="text" name="maxloanamt" id="maxloanamt"></td>
					</tr>
					<tr>
						<td>Interest Rate</td>
						<td><input type="text" name="ir" id="ir"></td>
					</tr>
					<tr>
						<td>Tenure</td>
						<td><input type="text" name="tenure" id="tenure"></td>
					</tr>
					<tr>
						<td>Loan Amount</td>
						<td><input type="text" name="lamt" id="lamt"></td>
					</tr>
					<tr>
						<td></td>
						<td><input type="submit" value="Submit"></td>
					</tr>
				</table>
			</form>
		</div>
    </section>
	 <section id="uploaddocuments" class="tab-panel">
      <h2>Upload Documents</h2>
      <!-- <p><strong>Overall Impression:</strong> A dark, strong, malty German lager beer that emphasizes the malty-rich and somewhat toasty qualities of continental malts without being sweet in the finish.</p>
      <p><strong>History:</strong> Originated in the Northern German city of Einbeck, which was a brewing center and popular exporter in the days of the Hanseatic League (14th to 17th century). Recreated in Munich starting in the 17th century. The name “bock” is based on a corruption of the name “Einbeck” in the Bavarian dialect, and was thus only used after the beer came to Munich. “Bock” also means “Ram” in German, and is often used in logos and advertisements.</p> -->
    </section>
  </div>
  
</div>
</body>
</html>