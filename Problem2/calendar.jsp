<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
 <head>
  <meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
  <title>calendar</title>
 </head>
 <body>
  <%
  java.util.Calendar cal=java.util.Calendar.getInstance(); 
  int currentYear=cal.get(java.util.Calendar.YEAR); 
  int currentMonth=cal.get(java.util.Calendar.MONTH);
  int currentDate=cal.get(java.util.Calendar.DATE);
  String Year=request.getParameter("year"); 
  String Month=request.getParameter("month");
  int year, month;
  
  if(Year == null && Month == null){ 
	  year=currentYear;
	  month=currentMonth;
	  }
	  else { 
	   year=Integer.parseInt(Year);
	   month=Integer.parseInt(Month);
	   if(month<0) { month=11; year=year-1; } 
	   if(month>11) { month=0; year=year+1; }
	  }
  %>
  <center>
  <table border=0> 
   <tr>
    <td align=left width=200> 
    <a href="calendar.jsp?year=<%out.print(year-1);%>&month=<%out.print(month);%>">��</a>
    <% out.print(year); %>��
    <a href="calendar.jsp?year=<%out.print(year+1);%>&month=<%out.print(month);%>">��</a>
  </td>
    <td align=center width=300>
    <a href="calendar.jsp?year=<%out.print(year);%>&month=<%out.print(month-1);%>">��</a>
    <% out.print(month+1); %>��
    <a href="calendar.jsp?year=<%out.print(year);%>&month=<%out.print(month+1);%>">��</a>
    </td>
    <td align=right width=200><% out.print(currentYear + "-" + (currentMonth+1) + "-" + currentDate); %></td>
   </tr>
  </table>
  <table border=1 cellspacing=0>
   <tr>
    <td width=100>��</td> 
    <td width=100>��</td> 
    <td width=100>ȭ</td>
    <td width=100>��</td> 
    <td width=100>��</td> 
    <td width=100>��</td> 
    <td width=100>��</td> 
   </tr>
   <tr height=30>
   <%
   cal.set(year, month, 1); 
   int startDay=cal.get(java.util.Calendar.DAY_OF_WEEK); 
   int end=cal.getActualMaximum(java.util.Calendar.DAY_OF_MONTH);
   int br=0; 
   for(int i=0; i<(startDay-1); i++) { 
    out.println("<td>&nbsp;</td>");
    br++;
    if((br%7)==0) {
     out.println("<br>");
    }
   }
   for(int i=1; i<=end; i++) {
    out.println("<td>" + i + "</td>");
    br++;
    if((br%7)==0 && i!=end) {
     out.println("</tr><tr height=30>");
    }
   }
   while((br++)%7!=0) 
    out.println("<td>&nbsp;</td>");
   %>
   </tr>
  </table>
  </center>
<a href="../main.html">�������� ����</a>
 </body>
</html>