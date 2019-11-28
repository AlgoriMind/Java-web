<%@ page language="java" import= "java.util.*,java.text.*" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title><link rel="stylesheet"href="css/timestyle.css">
<script>
	function time(){var h=new Date().getHours();h=h<10?("0"+h):h;var m=new Date().getMinutes();m=m<10?("0"+m):m;var s=new Date().getSeconds();s=s<10?("0"+s):s;document.getElementById("time").innerHTML=h+":"+m+":"+s}
	function date(){var m=new Date().getMonth();m=m+1;var d=new Date().getDate();d=d<10?("0"+d):d;document.getElementById("date").innerHTML=m+"月"+d+"日，"}
	function day(){var x;var day=new Date().getDay();switch(day){case 0:x="日";break;case 1:x="一";break;case 2:x="二";break;case 3:x="三";break;case 4:x="四";break;case 5:x="五";break;case 6:x="六";break}document.getElementById("day").innerHTML=" 星期"+x}setInterval(time,500);setInterval(date,700);setInterval(day,1000);
</script>
</head>
<body>
<div class="bodyBox">
	<div class="Box">
		<div class="timebox">
			<p id="time"class="time"></p></div>
		<div class="date-dayBox">
			<a id="date"class="date-day"></a>
			<a id="day"class="date-day"></a>
		</div>
	</div>
</div>
</body>
</html>