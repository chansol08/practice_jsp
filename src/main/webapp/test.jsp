<%--
  Created by IntelliJ IDEA.
  User: chans
  Date: 2023-10-20

  <%@ page  %> : page 지시자
  <%@ include  %> : include 지시자
  <%@ taglib  %> : taglib 지시자
  <%  %> : 스크립트릿
  <%= %> : 출력식
  <%! %> : 선언문

  Jsp 내장 객체 : request, response, session, out, config, application, pageContext
--%>
<%@ page contentType="text/html;charset=UTF-8" %>
<%!
    public int sum(int a, int b) {
        int sum = 0;

        for (int i = a; i <= b; i++) {
            sum += i;
        }

        return sum;
    }
%>
<%
    int sum = 0;

    for (int i = 1; i <= 10; i++) {
        sum += i;
    }
%>
<html>
<head>
    <title>test jsp</title>
</head>
<body>
    <table>
        <tr>
            <td>1 ~ 10 까지의 총 합</td>
            <td><%=sum%></td>
        </tr>
        <tr>
            <td>55 ~ 350 까지의 총 합</td>
            <td><%=sum(55, 350)%></td>
        </tr>
    </table>
</body>
</html>
