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
    <div class="cadastro-box">
        <h2>Cadastre-se</h2>
        <c:if test="${not empty errors}" >
            <div class="alert alert-danger" role="alert">
                <c:forEach var="error" items="${errors}">
                          ${error.message}<br />
                </c:forEach>
            </div>
</c:if>

                 

        <form method="post" action="web"/>">
         <input type="hidden" name="action" value="InserirAlunoAction">
            <div class="user-box" style="display:inline-block;vertical-align:top;">
                <input  type="text" name="usuario.nome" required="" minlenght="4" maxlenght="20">
                <label>Nome</label>
            </div>
            <div class="user-box" style="display:inline-block" >
                <input type="text" name="usuario.sobrenome" required="" minlenght="4" maxlenght="20">
                <label>Sobrenome</label>
            </div>
            <br>
            <div class="user-box" style="display:inline-block;vertical-align:top;" >
                <input type="email" name="usuario.email" required="" >
                <label>E-mail</label>
            </div>
            <div class="user-box" style="display:inline-block">
                <input type="password" minlenght="6" maxlenght="20" name="usuario.senha" required="" >
                <label>Senha</label>
            </div>

            <button type="submit" >
                <span></span>
                <span></span>
                <span></span>
                <span></span>
                Criar conta
            </button>



        </form>
    </div>
</body>

</html>