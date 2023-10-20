<%--
  Created by IntelliJ IDEA.
  User: chans
  Date: 2023-10-20
--%>
<%@ page contentType="text/html;charset=UTF-8"%>
<%@ page import="model.MyCalc" %>
<%
    MyCalc cal = new MyCalc();
    int result = cal.sum(1, 300);
%>
<html>
<head>
    <title>test</title>
</head>
<body>
    <table>
        <tr>
            <td>1 ~ 300 까지의 총합</td>
            <tb><%=result%></tb>
        </tr>
    </table>
</body>
</html>
