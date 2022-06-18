<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ page import="user.USERDB"%>
<%@ page import="java.io.PrintWriter"%>
<% request.setCharacterEncoding("UTF-8");%>

<jsp:useBean id="user" class="user.USER" scope="page"/>
<jsp:setProperty name="user" property="userID"/>
<jsp:setProperty name="user" property="userPassword"/>

<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" contant="text/html"; charset="UTF-8">
    <meta name="viewport" content="width=device-width",initial-scale="1">
    <link rel="stylesheet" href="css/style.css">
    <script src="https://kit.fontawesome.com/f696815b8c.js" crossorigin="anonymous"></script>
    <title>로그인 엑션 페이지</title>
</head>
<body>
    <%
    USERDB userdb=new USERDB();
    int result=userdb.login(user.getUserID(), user.getUserPassword());
    PrintWriter script=response.getWriter();
    if (result==1){
        script.println("<script>");
        script.println("<location.href=main.jsp");
        script.println("<script>");
    }
    else if (result==0){
            script.println("<script>");
            script.println("alert('비밀번호가 틀립니다')");
            script.println("history.back");
            script.println("<script>");
        }
    else if (result==-1){
        script.println("<script>");
        script.println("alert('존재하지 않는 아이디입니다.')");
        script.println("history.back");
        script.println("<script>");
    }
    else if (result==-2){
        script.println("<script>");
        script.println("alert('데이터베이스의 오류가 있습니다.')");
        script.println("history.back");
        script.println("<script>");
    }
    %>
</body>
</html>