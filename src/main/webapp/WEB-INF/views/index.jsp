<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="/resources/css/main.css">
</head>
<body>
<%@include file="component/header.jsp" %>
<%@include file="component/nav.jsp" %>
<br>
<h2>회원제 게시판</h2>

<%--로그인이메일: ${sessionScope.loginEmail} <br>--%>

<%@include file="component/footer.jsp" %>
</body>
</html>