<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<script type="text/javascript">
function CheckAccount(val){
 var element=document.getElementById('account');
 if(val=='To'||val=='others')
   element.style.display='block';
 else  
   element.style.display='none';
}

</script>
</head>
<body>

<body >
<h1 align="left-side" >TRANSFERSE</h1>
<form action="un.do"method="post">
Enter Your Name:
				<input type="text" name="name"><br><br>
FROM
		<select name ="Account_Type" >
  <option value="Checking">Checking</option>
  <option value="Savings">Savings</option>
</select>

To <select name="Account_Type" onchange='CheckAccount(this.value);'> 
    <option>   </option>  
    <option value="Checking">Checking</option>
    <option value="Savings">Savings</option>
    <option value="others">others</option>
  </select><br>
UserName<input type="text" name="Account_Type" id="account" style='display:none;'/><br>
Enter Amount:
<input type="text" name="amount"><br><br>
<br>
<input style="background-color:lightblue" type="submit" value="Submit">
</form>
</body>

</body>
</html>