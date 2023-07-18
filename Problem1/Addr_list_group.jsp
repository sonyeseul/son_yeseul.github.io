<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import = "jspbook.ch07.pr01.AddrBean" %>
<!DOCTYPE html>

<jsp:useBean id = "am" class = "jspbook.ch07.pr01.AddrManager" scope = "session" />
 <%@taglib prefix="ddwutag" tagdir="/WEB-INF/tags" %>
<html>
<head>
<meta http-equiv = "Content-Type" content ="text/html; charset=UTF-8">
<title>주소록 목록</title>
</head>
<style>
div {
text-align : center;
}
table {
width : 500px;
margin : 0px auto;
}
table , td {
border : 1px solid;
border-collapse : collapse;
}
</style>
<body>
<div>
<h2>주소록(그룹별 보기)</h2>
<hr>
<a href = "addr_form.jsp">주소추가</a><br>
<P>
<table>
<tr><td>이름</td><td>전화번호</td><td>이메일</td><td>성별</td><td>그룹</td></tr>
<ddwutag:menu type="가족" />
<ddwutag:menu type="직장" />
<ddwutag:menu type="친구" />
</table>
</div>
<a href="../main.html">메인으로 가기</a>
</body>
</html>