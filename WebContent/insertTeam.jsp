<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<form action="insertTeamServlet" method="post">
		Name: <input type="text" name="teamName"> <br /> 
		Type: <input type="text" name="teamType"> <br /> 
		Preferred Night: <input type="text"name="preferredNight"> <br /> 
		<input type="submit" value="Add Team">
	</form>
	<a href="index.html">Back to Home</a><br />
<a href="viewAllTeamsServlet">View complete list</a><br />
<a href="addPlayer.jsp">Add Player</a>
</body>
</html>