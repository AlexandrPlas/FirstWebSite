
var min =1 , max = 5
var znn=Math.floor(Math.random() * (max - min + 1)) + min
var tips=new Array()
var tiptitle=' Совет дня: '
tips[1]='Настройте свое рабочее место'
tips[2]='Избегайте зрительного напряжения'
tips[3]='Полноценный сон'
tips[4]='Работайте качественно'
tips[5]='Уйдите наконец домой'

var Tip1=document.getElementById("Tip");
Tip1.innerHTML= tiptitle + tips[znn];