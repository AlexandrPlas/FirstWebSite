
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
</head>
<body>
  	<jsp:useBean id="UserAut" scope="page" class="userbeanpack.userbean1" />
  	<jsp:setProperty name="UserAut" property="*" />
	<%@ page import ="userbeanpack.autentification" %>
	<%@ page import ="userbeanpack.userbean1" %>
<div >
<% if (autentification.LogAccess(UserAut,request)) {%>
<h1>Welcome,  <%=UserAut.getUsername()%>!</h1>
<% } else { %>
<h1>Password or username is entered incorrectly!</h1>

<% UserAut = null;} 
session.setAttribute("ActiveUser", UserAut);%>

	<a href="index.jsp">Main page</a>
</div>	

</body>
</html>
