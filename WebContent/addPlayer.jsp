<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form action ="addPlayerServlet" method="post">
Player First Name:<input type="text" name="playerFirstName"><br />
Last Name: <input type="text" name="playerLastName"><br />
Phone Number: <input type="text" name="phoneNumber"><br />
Screen Name: <input type="text" name="screenName"><br />
<label for="teamID">Team:</label>
<select name="teamID">
  <c:forEach items="${requestScope.allTeams}" var="currentitem">
			<option value="${currentitem.teamId}">${currentitem.teamName}</option>
		</c:forEach>
</select>
<input type="submit" value="AddPlayer">
</form>
<a href="index.html">Back to List</a><br />
<a href="viewAllPlayersServlet">View complete list</a>

</body>
</html>