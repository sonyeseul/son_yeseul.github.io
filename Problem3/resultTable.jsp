<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<jsp:useBean id="lb" class="jspbook.pr3.LectureBean" scope="page" />
<jsp:setProperty name="lb" property="*"/>
<jsp:useBean id="lm" class="jspbook.pr3.LectureManager" scope="session" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>timeTable</title>
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
<% 
int i, j;
int[][] lectureType = lm.getTypeMatrix();
int[][] consecutive = lm.getSpanMatrix();
int[][] lectureTitle = lm.getTitleMatrix();

String[] titleNames={"웹프로그래밍","운영체제","소프트웨어프로그래밍","데이터베이스개론","자료구조","네트워크","창의와감성","사회봉사"};
String[] colors={"#B7CBFB","#FAE197","#BDBDBD",""};
%>

<div align=center>
<h3>강의 시간표</h3>
    <table border="1"  width="600px" height="300px">
       <tr>
       <th>2학년</th>
       <th>월</th>
       <th>화</th>
       <th>수</th>
       <th>목</th>
       <th>금</th>
   </tr>
       <%
       for(i = 0; i < 6 ; i++) {
    	      out.println("<tr>");
    	      out.println("<th>" + (i + 1) + "</th>");
    	      for(j = 0; j < 5; j++) {
    	         if(consecutive[i][j] == 0)
    	            continue;
    	         else if(lectureTitle[i][j] == -1) {
    	            out.println("<td></td>");
    	         }
    	         else {
    	            out.println("<td rowspan='" + consecutive[i][j] + "' style='background-color:" + colors[lectureType[i][j] - 1] + "'>" + titleNames[lectureTitle[i][j]]);
    	            out.println("</td>");
    	         }
    	      }
    	      out.println("</tr>");
    	   }
       %>
	</table>
</div>
</body>
</html>