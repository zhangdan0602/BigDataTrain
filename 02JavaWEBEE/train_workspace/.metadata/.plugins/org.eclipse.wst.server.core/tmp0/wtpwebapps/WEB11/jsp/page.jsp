<%@ page language="Java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
session.setAttribute("name", "zd");
/* pageContext操作其他3个域 操作某个域后 取值时也要对应 */
pageContext.setAttribute("name", "xzh",pageContext.REQUEST_SCOPE);
%>
${sessionScope.name}
${pageScope.name}
${pageContext.request.contextPath }
<form action="${pageContext.request.contextPath }/Login"></form>
</body>
</html>