<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="/resources/css/main.css">
    <link rel="stylesheet" href="/resources/css/bootstrap.min.css">
    <style>
        table {
            margin: auto;
        }
    </style>
</head>
<body>
<%@include file="component/header.jsp" %>
<%@include file="component/nav.jsp" %>
<h2 align="center">회원 리스트 </h2>
<div class="container">
    <div id="member-list">
        <table class="table table-bordered">
            <tr>
                <td>회원번호</td>
                <td>이메일</td>
                <td>이름</td>
                 <td>전화번호</td>
                <td>조회</td>
                 <td>삭제</td>
            </tr>
            <c:forEach items="${memberList}" var="member">
                <tr>
                    <td>${member.mId}</td>
                    <td>${member.memberEmail}</td>
                    <td>${member.memberName}</td>
                    <td>${member.memberMobile}</td>
                    <td>
                    <button class="btn btn-info" onclick="detail_fn('${member.mId}')">조회</button>
                     </td>
                    <td>
                        <button class="btn btn-danger" onclick="delete_fn('${member.mId}')">삭제</button>
                    </td>
                </tr>
            </c:forEach>
        </table>
    </div>
</div>

<%@include file="component/footer.jsp" %>
</body>
<script>
    const detail_fn = (mId) => {
        location.href = "/member/member?mId=" + mId;
    }

    const delete_fn = (mId) => {
        location.href = "/member/delete?mId=" + mId;
    }
</script>
</html>