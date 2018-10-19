<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="f" %>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring" %>
 
<!doctype html>
<html lang="en" >

<head>
<style>


#cssmenu > ul {
  list-style: none;
  margin: 0;
  padding: 0;
  vertical-align: baseline;
  line-height: 1;
  
}
/* The container */
#cssmenu > ul {
  display: block;
  position: relative;
  width: 150px;
  
  
  /* The list elements which contain the links */

}
#cssmenu > ul li {
  display: block;
  position: relative;
  margin: 0;
  padding: 0;
  width: 200%;
}
/* General link styling */
#cssmenu > ul li a {
  /* Layout */

  display: block;
  position: relative;
  margin: 10;
  border-top: 1px dotted #3a3a3a;
  border-bottom: 1px dotted #1b1b1b;
  padding: 22px 20px;
  /* Typography */

  font-family: Helvetica, Arial, sans-serif;
  color: #d8d8d8;
  text-decoration: none;
  text-transform: uppercase;
  text-shadow: 0 1px 1px #000;
  font-size: 13px;
  font-weight: 300;

  /* Background & effects */

  background: #00008B;
}
/* Rounded corners for the first link of the menu/submenus */
#cssmenu > ul li:first-child > a {
  border-top-left-radius: 4px;
  border-top-right-radius: 4px;
  border-top: 0;
}
/* Rounded corners for the last link of the menu/submenus */
#cssmenu > ul li:last-child > a {
  border-bottom-left-radius: 4px;
  border-bottom-right-radius: 4px;
  border-bottom: 0;
}
/* The arrow indicating a submenu */
#cssmenu > ul .has-sub > a::after {
  content: "";
  position: absolute;
  top: 16px;
  right: 10px;
  width: 0px;
  height: 0px;
  /* Creating the arrow using borders */

  border: 4px solid transparent;
  border-left: 4px solid #d8d8d8;
}
/* THE SUBMENUS */
#cssmenu > ul ul {
  position: absolute;
  left: 100%;
  top: -9999px;
  padding-left: 5px;
  opacity: 0;
  width: 140px;
  /* The fade effect, created using an opacity transition */

  -webkit-transition: opacity 0.3s ease-in;
  -moz-transition: opacity 0.3s ease-in;
  transition: opacity 0.3s ease-in;
}
/* Showing the submenu when the user is hovering the parent link */
#cssmenu > ul li:hover > ul {
  top: 0px;
  opacity: 1;
}
</style>
<head>
   <meta charset='utf-8'>
   <meta http-equiv="X-UA-Compatible" content="IE=edge">
   <meta name="viewport" content="width=device-width, initial-scale=1">
   <link rel="stylesheet" href="styles.css">
   <script src="http://code.jquery.com/jquery-latest.min.js" type="text/javascript"></script>
   <script src="script.js"></script>
   <title>CSS MenuMaker</title>
</head>
<body>

<div id='cssmenu'>
<br>
<br>
<br>
<ul>
   <li class='active has-sub'> 
   <a href="${contextPath}/bank-application1/checkaccount"><span>Accounts</span></a>
   </li>
   <li><a href='#'><span>Apply For Credit Card</span></a></li>
   <li><a href='${contextPath}/bank-application1/statement'><span>Bank Statements</span></a></li>
   <li><a href='${contextPath}/bank-application1/paybill'><span>Pay Bills</span></a></li>
   <li><a href='${contextPath}/bank-application1/transfer'><span>Transfer</span></a></li>
</ul>
</div>
</body>
</html>
