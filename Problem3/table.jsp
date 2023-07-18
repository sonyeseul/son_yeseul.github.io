<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>강의 시간표</title>
<style>
        table {
            align-content: center;
            border: solid 1px;
            border-collapse: collapse;
            border-color: black;
            margin-right:auto;
            margin-left:auto;
        }

        th {
            width: 100px;
            height: 60px;
            font-size: 20pt;
            font-family: "굴림";
        }

        td {
            text-align: center;
            font-family: "굴림";
        }

        h3{
            font-family: "굴림";
            font-size: x-large;
            text-align:center;
        }
    </style>
</head>
<body>

<div align=center>
<h3>강의 시간표</h3>
    <table border="1" width="600px" height="300px">
       <tr>
       <th>2학년</th>
       <th>월</th>
       <th>화</th>
       <th>수</th>
       <th>목</th>
       <th>금</th>
   </tr>
       <%
       int i, j;
       for(i = 0; i < 6 ; i++) {
    	      out.println("<tr>");
    	      out.println("<th>" + (i + 1) + "</th>");
    	      for(j = 0; j < 5; j++) {
    	            out.println("<td></td>");
    	      }
    	      out.println("</tr>");
    	   }
       %>
	</table>
	</div>
</body>
</html>