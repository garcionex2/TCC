<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>   
<html>

<head>
    <title>Barber Kings</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-wdith, initial-scale=1.0">
    <link rel="stylesheet" href="css/styles.css" />
    <link rel="icon" href="https://media.discordapp.net/attachments/599724051358941186/1008139452633317426/icon.png">
    <style>
        @import url('https://fonts.googleapis.com/css2?family=Raleway:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&display=swap');
        @import url('https://fonts.googleapis.com/css2?family=Albert+Sans:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;1,100;1,200;1,300;1,400;1,500;1,600;1,700&family=Raleway:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&display=swap');
    </style>
</head>

<body>
    <header>
        <div class="banner" id="banner">
            <div class="navbar">
                <a href="?action=FrmHomeAction">
                    <h1 id="title"><img
                            src="https://cdn.discordapp.com/attachments/599724051358941186/1008187893577158656/logo2.png">
                    </h1>
                </a>
            </div>
    </header>
    <div class="login-box">
        <h2>Login</h2>
        
        <form method="post" action="auth">
        <input type="hidden" name="action" value="loginAction">
        
            <div class="user-box">
                <input type="email" name="email" required="">
                <label>E-mail</label>
            </div>
            <div class="user-box">
                <input type="password" name="senha" required="">
                <label>Senha</label>
            </div>
            <a href="?action=FrmCortesAction">
                <span></span>
                <span></span>
                <span></span>
                <span></span>
                Login
            </a>
            <a href="?action=FrmInserirAlunoAction" input style="margin-right: 12px;">
                <span></span>
                <span></span>
                <span></span>
                <span></span>
                Criar conta
            </a>
        </form>
    </div>

</body>

</html>