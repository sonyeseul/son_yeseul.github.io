<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import = "jspbook.ch07.pr01.*"%>
    <!DOCTYPE html>
    <%request.setCharacterEncoding("UTF-8"); %>

<jsp:useBean id = "addr" class = "jspbook.ch07.pr01.AddrBean"/>
<jsp:setProperty name = "addr" property = "*" />
<jsp:useBean id = "am" class = "jspbook.ch07.pr01.AddrManager" scope = "session" />
<%
am.add(addr);
%>
<html>
<head>
<meta http-equiv = "Content-Type" content = "text/html; charset = UTF-8">
<title>주소록 추가 화면</title>
</head>
<body>
<div align = "center">
<H2>등록내용</H2>
이름 : <jsp:getProperty property = "username" name = "addr" /><P>
전화번호 : <jsp:getProperty name = "addr" property = "tel" /><P>
이메일 : <%=addr.getEmail() %><P>
성별 : <%=addr.getGender() %><P>
그룹 : <%=addr.getGroup() %><P>
<hr>
<a href = "Addr_list.jsp">전체 목록 보기</a>
&nbsp;&nbsp;&nbsp;&nbsp;
<a href = "Addr_list_group.jsp">그룹별 목록보기</a>
</div>
</body>
</html>