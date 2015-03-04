<%@page import="webapp.model.Dept"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE>
<html>
<head>
<meta charset="UTF-8">
<title>info.jsp</title>
</head>
<body>
<hr>
<h1> 부서 정보 </h1>
<hr>
<%
	Dept dept = (Dept)request.getAttribute("dept");
	out.println("dept = " + dept.getDeptno() + "<br>");
	out.println("dept = " + dept.getDname() + "<br>");
	out.println("dept = " + dept.getLoc() + "<br>");

%>
<hr>

deptno = ${requestScope.dept.deptno}
dname = ${requestScope.dept.dname}
loc = ${requestScope.dept.loc}


</body>
</html>