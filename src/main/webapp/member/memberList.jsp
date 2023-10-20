<%--
  Created by IntelliJ IDEA.
  User: chans
  Date: 2023-10-20
--%>
<%@ page contentType="text/html;charset=UTF-8"%>
<%@ page import="model.MemberDAO" %>
<%@ page import="java.util.List" %>
<%@ page import="model.MemberVO" %>
<%
    MemberDAO dao = new MemberDAO();
    List<MemberVO> memberList = dao.memberList();
%>
<html>
<head>
    <title>member list</title>

    <!--  start bootstrap3 info  -->
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    <!--  end bootstrap3 info  -->
</head>
<body>
    <table class="table table-bordered">
        <tr>
            <td>번호</td>
            <td>아이디</td>
            <td>비밀번호</td>
            <td>이름</td>
            <td>나이</td>
            <td>이메일</td>
            <td>전화번호</td>
        </tr>
        <% for (MemberVO member : memberList) { %>
        <tr>
            <td><%=member.getNumber()%></td>
            <td><%=member.getId()%></td>
            <td><%=member.getPassword()%></td>
            <td><%=member.getName()%></td>
            <td><%=member.getAge()%></td>
            <td><%=member.getEmail()%></td>
            <td><%=member.getPhone()%></td>
        </tr>
        <% } %>
    </table>
</body>
</html>
