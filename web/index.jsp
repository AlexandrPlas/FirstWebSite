<html>
   <head>
     <title>Главная страница</title>
     <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
     <link rel="stylesheet" type="text/css" href="style.css">
	 <script type="text/javascript" src="js/jquery-2.2.3.js"></script>
	 
	 <meta charset="UTF-8">
   </head>
   <body>
       <header>     
       <img alt="Logo" src="Images/logo.png" class = "logo">
       <div class = "rega" align = "right" > 
       <%@ page import ="userbeanpack.userbean1" %>
	   <%userbean1 ActiveUser = (userbean1) session.getAttribute("ActiveUser");%>
        
        <% 
        if(ActiveUser!=null) {%>
        <a href=""><%= ActiveUser.getUsername()%></a>
        <a id="logi" class= "open_modal" href="#modal_log">Войти под другим логином</a> </div>
        <%} else {%>
		<a id="regi" class= "open_modal" href="#modal_form">Регистрация</a>
		<a id="logi" class= "open_modal" href="#modal_log">Войти</a> </div>
		<%}%>
		<div id= "Tip" ></div>
	   <script type="text/javascript" src="js/TipoftheDay.js"></script>
		Разработка высокоточного сканера для определения профиля объекта
       </header>
       <nav>
       <h2>Меню</h2>
		<a href="index.jsp">Главная страница</a>
		<br><a href="overview.jsp">Обзор</a> </nav>

       <article>
       3D-сканер представляет собой специальное устройство, которое анализирует определённый физический объект или же пространство, чтобы получить данные о форме предмета и, по возможности, о его внешнем виде (к примеру, о цвете). Собранные данные в дальнейшем применяются для создания цифровой трехмерной модели этого объекта.
Создать 3D-сканер позволяют сразу несколько технологий, различающиеся между собой определёнными преимуществами, недостатками, а также стоимостью. К тому же, существуют некоторые ограничения по объектам, которые могут быть оцифрованы. В частности, возникают трудности с блестящими, прозрачными или обладающими зеркальными поверхностями предметами.
Не стоит забывать и том, что сбор 3D-данных важен и для других применений. Так, они необходимы в индустрии развлечений для создания фильмов и видеоигр. Также эта технология востребована в промышленном дизайне, ортопедии и протезировании, реверс-инжиниринге, разработке прототипов, а также для контроля качества, осмотре и документировании культурных артефактов.

       </article>
       <footer>
       	Контактный номер: 8-(923)-129-96-63<br>
		<a href="index.jsp"  >На главную</a>
       </footer>
       
       
  <div id="modal_form" class ="modal_div"><!-- Сaмo oкнo --> 
      <span class="modal_close">X</span> <!-- Кнoпкa зaкрыть --> 
      <form id = "reg_form" action = "rega.jsp">
  <table class="alignment" style="width: 351px; ">
    <tr>
   <td> <label for=username>Логин</label> </td>
   <td> <input id=username name=username type=text> </td>
  </tr>
    <tr>
   <td> <label for=email>Email</label> </td>
   <td> <input id=email name=email type=email> </td>
    </tr>
  <tr>
   <td> <label for=phone>Номер телефона</label> </td>
   <td> <input id=phone name=phone type=tel> </td>
  </tr>
  <tr>
   <td><label for=burndate>Дата рождения</label></td>
   <td><input id=burndate name=burndate type="date" /></td>
  </tr>
   <tr>
    <td><label for=adress>Адрес</label></td>
    <td><textarea id=adress name=adress rows=5 ></textarea></td>
   </tr>
   <tr>
    <td><label for=password>Пороль</label></td>
    <td><input id=password name=password type=password ></td>
   </tr>
   <tr>
    <td><label for=pass2>Повторите пороль</label></td>
    <td><input id=pass2 name=pass2 type=password ></td>
   </tr>
   <tr>
    <td><label for=capcha>Решите пример:</label></td>
    <td><span id=capcha ></span>
   </tr>
    
   <tr>
    <td><label for=capcha2>Ответ:</label></td>
    <td><input id=capcha2 name=capcha2 type=text ></td>
   </tr>
  </table>
  <div align = "center" style = "margin-top: 15px;"><button id="reg_but" type=submit>Отправить данные</button></div>
<p id="error_modal1" > </p>
</form >
	</div>
	
	
   	<div id="modal_log" class = "modal_div"><!-- Сaмo oкнo --> 
      <span class="modal_close">X</span> <!-- Кнoпкa зaкрыть --> 
      <form id = "log_form" action = "autor.jsp" >
  <table>
   <tr>
    <td><label for=username>Логин</label></td>
    <td><input id=username name=username type=text ></td>
   </tr>
   <tr>
    <td><label for=password>Пороль</label></td>
    <td><input id=password name=password type=password ></td>
   </tr>
  </table><br>
  <div align = "center" style = "margin-top: 0px;"><button id="log_but" type=submit >Подтвердить</button> </div>        
  <p id="error_modal2" > </p>
</form>
	</div>
	<div id="overlay"></div><!-- Пoдлoжкa -->
	<script type="text/javascript" src="js/Reg_log_modal.js"></script>	
	
   </body>
   
 </html>