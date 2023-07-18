<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="jspbook.ch07.pr01.AddrBean"
	%>
<jsp:useBean id="am" class="jspbook.ch07.pr01.AddrManager"	scope="session" />
<%@ page import = "java.util.ArrayList"%>
<%@ page import="java.util.*"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset = UTF-8">
<title>주소록 목록</title>
</head>
<body>
<div align=center>
<h2>주소록(전체보기)</h2>
<hr>
<a href="addr_form.jsp">주소추가</a>
<P>
<table border=1 width=500>
<tr>
<td>이름</td>
<td>전화번호</td>
<td>이메일</td>
<td>성별</td>
<td>그룹</td>
</tr>			
<%
	int rpp=3;   
	int currentPage;
	String sindex=request.getParameter("sindex");
   	int startIndex;
   	int lastIndex;
   	int totalCnt=am.getAddrList().size();
    int allpage=totalCnt/rpp;
   
    if (sindex==null) {
		currentPage=1;
	}
	else {
		currentPage=Integer.parseInt(sindex);
	}
      
	startIndex=(currentPage-1)*rpp;
	lastIndex=currentPage*rpp - 1;

	if (totalCnt % rpp > 0)
		allpage = am.getAddrList().size() / rpp + 1;
	else if (totalCnt % rpp == 0)
		allpage = am.getAddrList().size() / rpp;

	int i; 
	for (i = startIndex; i <= lastIndex; i++){
		if (totalCnt==i) {
			break;
		}
		AddrBean ab = am.getAddrList().get(i);
%>
		<tr>
		<td><%=ab.getUsername()%></td>
		<td><%=ab.getTel()%></td>
		<td><%=ab.getEmail()%></td>
		<td><%=ab.getGender()%></td>
 		<td><%=ab.getGroup()%></td>
		</tr>   
                     
<%
	}
%>
</table>
</div>
         
<div style = " text-align :center; margin-top : 10px;">
<% 
	for (i=1; i<=allpage; i++) {
	if (i==currentPage) {
		out.println(i);
	}
	else {
%>
		<a href="Addr_list.jsp?sindex=<%=i %>" > <%=i %> </a>
<%
         }
   	}
%>

</div>
<a href="Addr_list_group.jsp">그룹별 목록 보기</a>
<a href="../main.html">메인으로 가기</a>
</body>
</html>