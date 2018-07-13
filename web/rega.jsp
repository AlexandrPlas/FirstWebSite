
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
</head>
<body>
	<jsp:useBean id="userclass" scope="page" class="userbeanpack.userbean1" />
	<%@ page import ="userbeanpack.autentification" %>
	<jsp:setProperty name="userclass" property="*" />
<div >
<%if (autentification.regAccess(userclass,request)) {%>
<%=autentification.regtoAccess(userclass,request)%>
<h1>Welcome,  <jsp:getProperty name="userclass" property="username" />!</h1>
<% } else { %>
<h1>Username or email already exists!</h1>
<% } %>
	<a href="index.jsp">Main page</a>
</div>	

</body>
</html>
