<%@page import ="project.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<%@include file="changeDetailsHeader.jsp" %>
<%@include file="footer.jsp" %>
<html>
<head>
<link rel="stylesheet" href="css/changeDetails.css">
<script src='https://kit.fontawesome.com/a076d05399.js'></script>
<title>Change Security Question</title>
</head>
<body>
<%
String msg = request.getParameter("msg");
if("done".equals(msg))
{
	%>
	<h3 class="alert"> Your Security Question Successfully Updated !</h3>
<%}%>

<%
if("wrong".equals(msg))
{
	%>
<h3 class="alert">Your Password is Wrong! Try Again!</h3>
<%}%>

<form action="changeSecurityQuestionAction.jsp" method ="post">
		<h3>Select Your New Security Question </h3>
		 <select class ="input-style" name ="securityQuestion">
		 <option value ="What was your first car?"> What was your first car?</option>
		 <option value ="what is name of your first pet?">what is name of your first pet? </option>
		 <option value ="what elementary school did you passed?"> what elementary school did you passed?</option>
		 <option value ="what is the name of your town where you born?"> what is the name of your town where you born?</option>  
		 </select>
		 <hr>
		 <h3>Enter Your New Answer</h3>
		 <input class ="input-style" type ="text" name ="newAnswer" placeholder ="Enter Your New Answer" required>
		 
		<hr>
		<h3>Enter Password (For Security)</h3>
		 <input class ="input-style" type ="password" name ="state" placeholder ="Enter Password (For Security)" required>
		
		<hr>
		<button class ="button" type ="submit"> Save <i class='far fa-arrow-alt-circle-right'></i> </button>
</form>
</body>
<br><br><br>
</html>