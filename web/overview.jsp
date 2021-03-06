﻿<html>
   <head>
     <title>Главная страница</title>
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
        <a id="logi" class= "open_modal" href="#modal_log">Выйти</a> </div>
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
		<br><a href="overview.jsp">Обзор</a> 
	   </nav>

       <article>
       <h2>Обзор существующих сканеров</h2>
<h4>Контактные 3D-сканеры</h4>
<p>Контактные 3D-сканеры исследуют (зондируют) объект непосредственно через физический контакт, пока сам предмет пребывает на прецизионной поверочной плите, отшлифованной и отполированной до определённой степени шероховатости поверхности. Если объект сканирования неровный или не может стабильно лежать на горизонтальной поверхности, то его будут удерживать специальные тиски.
Механизм сканера бывает трёх различных форм:
Каретка с фиксированной измерительной рукой, расположенной перпендикулярно, а измерение по осям происходит, пока рука скользит вдоль каретки. Эта система оптимальна для плоских или обычных выпуклых кривых поверхностей.
Манипулятор с фиксированными составляющими и с высокоточными угловыми датчиками. Расположение конца измерительной руки влечет за собой сложные математические вычисления, касающиеся угла вращение шарнира запястья руки, а также угла разворота каждого из соединений руки. Этот механизм идеально подходит для зондирования углублений или внутренних пространств с небольшим входным отверстием.
Одновременное использование предыдущих двух методов. К примеру, манипулятор можно совместить с кареткой, что позволить получить 3D-данные от больших объектов, обладающих внутренними полостями или перекрывающими друг друга поверхностями.
КИМ (координатно-измерительная машина) представляет собой яркий пример контактного 3D-сканера. Они используются в основном в производстве и могут быть сверхточными. К недостаткам КИМ можно отнести необходимость непосредственного контакта с поверхностью объекта. Поэтому существует возможность изменить предмет или даже повредить его. Это весьма важно в том случае, если сканируются тонкие или ценные предметы, например, исторические артефакты. Ещё один недостаток КИМ перед другими методами сканирования – медлительность. Перемещение измерительной руки с установленным зондом может оказаться очень медленным. Самый быстрый результат работы КИМ не превышает несколько сотен герц. В то же время, оптические системы, к примеру, лазерный сканер, может работать от 10 до 500 кГц.
Ещё одним примером могут послужит ручные измерительные зонды, с помощью которых оцифровывают глиняные модели для компьютерной анимации.
</p>
<h4>Бесконтактные активные сканеры</h4>
<p>Активные сканеры используют определённые виды излучения или просто свет и сканируют объект через отражение света или прохождение излучения через объект или среду. В таких устройствах применяется свет, ультразвук или рентгеновские лучи.
</p>
<h4>Времяпролётные сканеры</h4>
<p>Времяпролётный лазерный 3D-сканер – это активный сканер, который использует  лазерный луч, чтобы исследовать объект. В основе этого типа сканера лежит времяпролётный лазерный дальномер. В свою очередь, лазерный дальномер определяет расстояние до поверхности объекта, исходя из времени пролёта лазера туда и обратно. Сам лазер используется для создания светового импульса, в то время как детектор измеряет время до того момента, пока свет не отразится. Учитывая, что скорость света  (c) – величина постоянная, то зная время пролёта луча туда-обратно, можно определить расстояние, на которое переместился свет, оно будет в два раза больше расстояния между сканером и поверхностью объекта. Если (t) – это время полёта луча лазера туда-обратно, тогда расстояние будет равно  (c*t\2). Точность времени пролёта лазерного луча 3D-сканера зависит от того, насколько точно мы можем измерить само время (t): 3,3 пикосекунды (приблизительно) необходимо для того, чтобы лазер преодолел 1 миллиметр.
Лазерный дальномер определяет расстояние только одной точки в заданном направлении. Поэтому устройство сканирует все своё поле зрения по отдельным точкам за раз, меняя при этом направление сканирования. Менять направление лазерного дальномера можно либо путем вращения самого прибора, либо с помощью системы вращающихся зеркал. Зачастую используют последний метод, ведь он намного быстрее, точнее, а также легче в обращении. К примеру, времяпролётные 3D-сканеры могут измерять расстояние от 10 000 до 100 000 точек за одну секунду.
Времяпролётные девайсы также доступны в конфигурации 2D. В основном, это касается времяпролётных камер.
Триангуляционные сканеры
Триангуляционные лазерные 3D-сканеры также относятся к активным сканерам, которые используют лазерный луч для того, чтобы прозондировать объект. Подобно времяпролётным 3D-сканерам триангуляционные устройства посылают на объект сканирования лазер, а отдельная камера фиксирует расположение точки, куда попал лазер. В зависимости от того, как далеко лазер продвигается по поверхности, точка появляется в различных местах поля зрения камеры. Эта технология названа триангуляцией потому, что лазерная точка, камера и сам лазерный излучатель образуют своеобразный треугольник. Известна длина одной стороны этого треугольника – расстояние между камерой и лазерным излучателем. Также известен угол лазерного излучателя. А вот угол камеры можно определить по расположению лазерной точки в поле обзора камеры. Эти 3 показателя полностью определяют форму и размер треугольника и указывают на расположение угла лазерной точки. В большинстве случаев, чтобы ускорить процесс получения данных, вместо лазерной точки пользуются лазерной полосой. Так, Национальный научно-исследовательский совет Канады был среди первых научных организаций, разработавших основы технологии триангуляционного лазерного сканирования ещё в 1978 году.
</p>
<h4>Структурированный свет</h4>
<p>3D-сканеры, работающие по технологии структурированного света, представляют собой проекцию световой сетки непосредственно на объект, деформация этого рисунка и представляет собой модель сканируемого предмета. Сетка проецируется на объект с помощью жидкокристаллического проектора или другого постоянного источника света. Камера, расположенная чуть в стороне от проектора, фиксирует форму сети и вычисляет расстояние до каждой точки в поле зрения.
Сканирование структурированным светом до сих пор остаётся активной областью исследований, которой ежегодно посвящается довольно много научно-исследовательских работ. Идеальные карты также признаны полезными, как структурированные световые узоры, которые могут решить проблемы соответствия и позволяют не только обнаружить ошибки, но и исправить их.
Преимущество 3D-сканеров, использующих структурированный свет, в их скорости и точности работы. Вместо сканирования одной точки в один момент времени, структурированные сканеры сканируют одновременно несколько точек или все поле зрения сразу. Сканирование всего поля зрения занимает долю секунды, а сгенерированные профили являются более точными, чем лазерные триангуляции. Это полностью решает проблему искажения данных, вызванного движением. Кроме того, некоторые существующие системы способны сканировать даже движущиеся объекты в режиме реального времени. К примеру, VisionMaster – сканирующая система в формате 3D – обладает 5-мегапиксельной камерой, благодаря чему каждый кадр содержит 5 миллионов точек.
Сканеры, работающие в режиме реального времени, используют цифровую проекцию края и фазосдвигающую технику (одна из методик применения структурированного света), что позволяет захватить, восстановить и создать компьютерную модель с высокой плотностью деталей динамически изменяющихся объектов (к примеру, мимика) при 40 кадрах в секунду. Недавно был создан новый тип сканера. Различные модели могут быть использованы в этой системе. Частота кадров для захвата и обработки данных достигает 120 кадров в секунду. Этот сканер может обрабатывать и отдельные поверхности. Например, 2 движущиеся руки. Используя метод бинарной дефокусировки, скорость съемки может достигать сотен, а то и тысяч кадров в секунду.
</p>
<h4>Бесконтактные пассивные сканеры</h4>
<p>Пассивные сканеры не излучают свет, вместо этого они используют отраженный свет из окружающего пространства. Большинство сканеров этого типа предназначены для обнаружения видимого света, ведь это наиболее доступный вид окружающего излучения. Другие типы излучения, к примеру, инфракрасное, также может быть задействовано. Пассивные методы сканирования относительно дешёвые, ведь в большинстве случаев они не нуждаются в специальном оборудовании, достаточно обычной цифровой камеры.
Стереоскопические  системы предусматривают использование 2-ух видеокамер, расположенных в разных местах, но в одном направлении. Анализируя различия в снимках каждой камеры, можно определить расстояние до каждой точки на изображении. Этот метод по своему принципу похож на стереоскопическое зрение человека.
Фотометрические системы обычно используют одну камеру, которая производит съемку нескольких кадров при любых условиях освещения. Эти методы пытаются преобразовать модель объекта, чтобы восстановить поверхность по каждому пикселю.
Силуэтные техники используют контуры из последовательных фотографий трехмерного объекта на контрастном фоне. Эти силуэты экструдируют и преобразуют, чтобы получить видимую оболочку объекта. Однако этот метод не позволяет просканировать углубления в объекте (к примеру, внутреннюю полость чаши).
Существуют и другие методы, которые основаны на том, что пользователь сам обнаруживает и идентифицирует некоторые особенности и формы объекта, опираясь на множество различных изображений объекта, которые позволяют создать приблизительную модель этого объекта. Такие методы можно применять для быстрого создания трехмерной модели объектов простых форм, к примеру, здания. Сделать это можно, воспользовавшись одним из программных приложений: D-Sculptor, iModeller, Autodesk ImageModeler или PhotoModeler.
Этот вид 3D-сканирования основан на принципах фотограмметрии. К тому же, эта техника в некоторых моментах похожа на панорамную фотографию, за исключением того, что фотографии объекта сделаны в трехмерном пространстве. Таким образом, можно скопировать сам объект, а не делать серию фото из одной точки трехмерного пространства, что привело бы к воссозданию окружения объекта.
</p> 
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
   <td> <label for=username>ФИО</label> </td>
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
    <td><input id=password name=pass1 type=password ></td>
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
</form>
	</div>
	
	
   	<div id="modal_log" class = "modal_div"><!-- Сaмo oкнo --> 
      <span class="modal_close">X</span> <!-- Кнoпкa зaкрыть --> 
      <form id = "log_form" action = "autor.jsp">
  <table>
   <tr>
    <td><label for=login>Логин</label></td>
    <td><input id=login name=login type=text ></td>
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