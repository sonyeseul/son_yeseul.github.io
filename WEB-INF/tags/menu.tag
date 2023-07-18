<%@ tag language="java" pageEncoding="UTF-8"%>
<%@ tag body-content="empty"%>
 <%@ tag import = "jspbook.ch07.pr01.*" %>
    <jsp:useBean id = "am" class = "jspbook.ch07.pr01.AddrManager" scope = "session" />
    
    <%@ attribute name = "type" %>
    <style>
    td {
border : 1px solid;
border-collapse : collapse;
}
</style>

<%
String str = type;
String str2;
for(AddrBean ab: am.getAddrList()) {
	str2 = ab.getGroup();
	if(str2.equals(str)) {

%>

<tr>
<td><%=ab.getUsername() %></td>
<td><%=ab.getTel() %></td>
<td><%=ab.getEmail() %></td>
<td><%=ab.getGender() %></td>
<td><%=ab.getGroup() %></td><tr>

<%
}
}
%>