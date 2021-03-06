<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" contant="text/html"; charset="UTF-8">
    <meta name="viewport" content="width=device-width",initial-scale="1">
    <script src="https://kit.fontawesome.com/f696815b8c.js" crossorigin="anonymous"></script>
    <title>로그인 페이지</title>
    <style>
        body{
            background:white;
        }
        h1{
            font-size: 50px;
            color:#EEE3F8;
            margin-top: 100px
        }
        .container{
            border: 1px solid #B5B5B5;
            width: 396px;
            height: 320px;
            margin:0 auto;
            border-radius: 32px;
        }
        header{
            display:flex;
            justify-content: center;
        }
        .id{
            margin-top: 12px;
            border:none;
        }
        .passward{
            margin-top: 14px;
            border:none;

        }
        .idbox,.passwardbox{
            width: 366px;
            height: 53px;
            border:solid 1px #B5B5B5;
            border-radius:17px;
            display: flex;
            justify-content:center;
        }
        .idbox{
            margin-top:12px;
            margin-left: 14px;
        }
        .passwardbox{
            margin-top:12px;
            margin-left: 14px;
        }
        .id, .passward{
            width: 307px;
            height: 22px;
            border-radius: 7px;
            background: #F7F8E3;
        }

        .push{
            width: 339px;
            height: 52px;
            border-radius: 14px;
            border: 1px solid #B5B5B5;
            background:#EEE3F8 ;
            color: white;
            font-size: 30px;
        }
        .loginbt{
            display:flex;
            justify-content: center;
            margin-top:15px;
        }

        #id,#pass{
            margin-top: 15px;
            margin-right: 10px;
        }
        #rename{
            display: flex;
            justify-content:center;
            margin-top: 30px;
        }
        a{
            text-decoration-line: none;
            color: #B5B5B5;
        }
    </style>
</head>
<body>
<header>
    <h1>LuLuLaLa</h1>
</header>

<div class="container">
    <form action="main.jsp">
    <div class="idbox">
        <i id="id" class="fa-regular fa-user"></i>
        <input class="id" type="text" name="userID">
    </div>
    <div class="passwardbox">
        <i id="pass" class="fa-solid fa-lock"></i>
        <input class="passward" type="text" name="userPassward">
    </div>
    <div class="loginbt">
        <input class="push" type="submit" value="로그인">
    </div>
    </form>
    <div id="rename">
        <a href="#" >비밀번호 찾기|</a>
        <a href="#" >아이디 찾기|</a>
        <a href="Join_User.jsp">회원가입</a>
    </div>
</div>
</body>
</html>