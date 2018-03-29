!DOCTYPE html>
<html>
<head>

<style>



</style>


</head>
<body bgcolor="#E6E6FA" >
<h2 align="left" >Enter Your Details Below</h2>
<form action="un.do"method="post">
Enter Your Name:
<input type="text" name="name"><br><br>
						Select e-Bill  <select name ="billpay" >
  				<option value="Powerbill">PowerBill</option>
				  <option value="Mobilebill">MobileBill</option>
  					<option value="Internetbill">InternetBill</option>
  					<option value="Creditbill">CreditBill</option>
				</select><br><br>
				Select Account Type	<select name ="Account_Type" >
  						<option value="Checking">Checking</option>
  						<option value="Savings">Savings</option>
							</select><br><br>
							Enter Amount:
					<input type="text" name="amount"><br><br>
						<br>
						<input style="background-color:lightblue" type="submit" value="Submit">
</form>
</body>
</html>
