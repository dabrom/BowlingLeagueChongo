<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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
  <option value="1">Cubs</option>
  <option value="2">Bears</option>
</select>
<input type="submit" value="AddPlayer">
</form>
<a href="index.html">Back to List</a><br />
<a href="viewAllItemsServlet">View complete list</a>

</body>
</html>