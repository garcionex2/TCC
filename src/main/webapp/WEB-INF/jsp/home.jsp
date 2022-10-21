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
                <ul>
                    <li><a href="?action=FrmLoginAction">Login</a></li>
                    <li><a href="#About">Sobre</a></li>
                    <li><a href="#Services">Serviços</a></li>
                    <li><a href="#Contato">Contato</a></li>
                </ul>
            </div>
            <div class="content">
                <h1>Barber Kings</h1>
                <p></p>
            </div>
        </div>
    </header>
    <main>
        <div id="gallery">
            <h1>Ultimos cortes</h1>
            <div class="gallery">
                <div class="image-box first">
                    <img
                        src="https://voguemoda.ru/wp-content/uploads/2018/04/modniye-mujskiye-strijki-tendencii-foto-8.jpg">
                </div>
                <div class="image-box">
                    <img src="https://cdn.discordapp.com/attachments/599724051358941186/980857717180747836/unknown.png">
                </div>
                <div class="image-box">
                    <img src="https://cdn.discordapp.com/attachments/599724051358941186/980857307229487114/unknown.png">
                </div>
                <div class="image-box">
                    <img src="https://i.pinimg.com/originals/d8/4b/02/d84b0287de94533dd06fd4dbec2d1593.jpg">
                </div>
                <div class="image-box last">
                    <img
                        src="https://haircutsimages.org/wp-content/uploads/2020/02/Mens-Long-Undercut-Hairstyles-2020.jpg">
                </div>
            </div>
        </div>
    </main>
    <div class="container">

        <div class="about">
            <div class="left">
                <h1 id="About">Sobre nós</h1>
                <hr>
                <p>Barber Kings continua a tradição de uma família de barbeiros desde a década de 1950 com um serviço
                    profissional, acolhedor e simpático. Gustavo Alexandre, filho de barbeiro, trabalhou
                    muito tempo na barbearia do pai. Formou-se então como psicólogo e
                    trabalhou em saúde mental, mas depois de alguns anos decidiu voltar às raízes e fundou
                    o Barber Kings em 2014, não fora de moda,
                    mas fora de profissão.​Cabelos, barbas e barbas: triviais, combinados com os melhores.</p>
            </div>
            <div class="right">
                <img src="https://cdn.discordapp.com/attachments/599724051358941186/1008206606120538132/unknown.png">
            </div>
            <div class="clear"></div>
        </div>
        </footer>

        <!-- ======================== PRICES AND SERVICES ==================     -->
        <section ID="Services" class="services" class="about">
            <h2 class="title"> SERVIÇOS E PREÇOS</h2>
            <div class="separator"></div>
            <div class="service-wrapper">
                <div class="prices-container">
                    <div class="col-3-img">
                        <h5 class="name-icon"></h5>
                        <img src="https://cdn.discordapp.com/attachments/878840667504271450/980578504192192582/logo.png"
                            alt="" class="barber-icon" width="60%">
                    </div>
                    <div class="text-col-wrapper">
                        <div class="col-3">
                            <div class="service-line">
                                <h4 class="service-name">
                                    Americano navalhado
                                </h4>
                                <p class="price">R$ 30.00</p>
                            </div>
                            <div class="service-line">
                                <h4 class="service-name">
                                    low Fade
                                </h4>
                                <p class="price">R$ 25.00</p>
                            </div>
                            <div class="service-line">
                                <h4 class="service-name">
                                    Barba e Degrade
                                </h4>
                                <p class="price">R$ 45.00</p>
                            </div>
                            <div class="service-line">
                                <h4 class="service-name">
                                    Hide Fade
                                </h4>
                                <p class="price">R$ 25.00</p>
                            </div>
                            <div class="service-line">
                                <h4 class="service-name">
                                    Barba e Sobrancelha
                                </h4>
                                <p class="price">R$ 20.00</p>
                            </div>
                        </div>

                        <div class="col-3">
                            <div class="service-line">
                                <h4 class="service-name">
                                    Sobrancelha
                                </h4>
                                <p class="price">R$ 10.00</p>
                            </div>
                            <div class="service-line">
                                <h4 class="service-name">
                                    Barba
                                </h4>
                                <p class="price">R$ 10.00</p>
                            </div>
                            <div class="service-line">
                                <h4 class="service-name">
                                    Skin Care e Sobrancelha
                                </h4>
                                <p class="price">R$ 30.00</p>
                            </div>
                            <div class="service-line">
                                <h4 class="service-name">
                                    Social Classic
                                </h4>
                                <p class="price">R$ 20.00</p>
                            </div>
                            <div class="service-line">
                                <h4 class="service-name">
                                    Mid fade
                                </h4>
                                <p class="price">R$ 25.00</p>
                            </div>
                        </div>
                    </div>
                    <div class="services-note">
                        <h6 class="note"><br>RESERVAS DISPONIVEIS</h6>
                    </div>
                    <p class="services-small-note">Por favor, note que todos os cortes de barba e cabelo na
                        sexta-feira, sábado e feriados
                        acrescentam R$ 5.00</p>
                </div>
            </div>
        </section>

        <footer id="Contato" class="footer">
            <div class="footer-container">

                <div id="CONTATO" class="contact-details">

                    <div class="opening-times footer-col-3">
                        <h4 class="footer-titles">HORARIO ABERTO </h4>
                        <div class="footer-line">
                            <p class="line-left-side">Seg - Sexta: <span class="line-right-side">10:00 am -
                                    18:00pm</span>
                            </p>
                        </div>
                        <div class="footer-line">
                            <p class="line-left-side">Sabado: <span class="line-right-side">10:00 am - 17:00pm</span>
                            </p>

                        </div>
                        <div class="footer-line">
                            <p class="line-left-side">Domingo: <span class="line-right-side">10:00 am - 16:00pm</span>
                            </p>
                        </div>
                        <div class="separator"></div>
                    </div>

                    <div class="contacts footer-col-3">
                        <h4 class="footer-titles">Contatos</h4>
                        <div class="footer-line">
                            <p class="line-left-side">Telefone: <span class="line-right-side">123-123-123</span></p>
                        </div>
                        <div class="footer-line">
                            <p class="line-left-side">E-mail: <span class="line-right-side">barberben@gmail.com</span>
                            </p>
                        </div>
                        <div class="separator"></div>
                    </div>
                    <div class="address footer-col-3">
                        <h4 class="footer-titles">Nosso Endereço</h4>
                        <div class="footer-line">
                            <p class="address">R. Interna Grupo Bandeirante, 138 - Jardim Belval </p>
                        </div>
                        <div class="footer-line">
                            <p class="post-code"> Barueri - SP, 06420-150</p>
                        </div>
                        <div class="separator"></div>
                    </div>
                </div>
                <div class="map col-2">
                    <iframe width="100%"
                        src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3658.5604115623687!2d-46.891975049974306!3d-23.512337965592565!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x94cf03e63bc7a06d%3A0xc14462a7d6d04032!2sITB%20Bras%C3%ADlio%20Flores%20de%20Azevedo%20(FIEB)!5e0!3m2!1spt-BR!2sbr!4v1653927631546!5m2!1spt-BR!2sbr"
                        width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy"
                        referrerpolicy="no-referrer-when-downgrade"></iframe>"
                    </iframe>
                </div>
                <div class="footer-bottom">©2022 Kings Barber <br>
                    Website developed by tcc@gmail.com <a href="#" class="policy">Voltar ao topo</a></div>
            </div>

</body>

</html>