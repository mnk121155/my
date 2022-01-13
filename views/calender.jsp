<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import = "com.test.mapper.guest" %>
<%@page import = "java.util.List" %>
<%@ taglib prefix = "c" uri= "http://java.sun.com/jsp/jstl/core" %>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>

html, body {
  width: 100%;
  height: 100%;
  margin: 0;
  padding: 0;
}

#NSK_font{
font-family: 'Noto Sans KR', sans-serif;
}

.modal_wrap{
        display: none;
        width: 50%;
        height: 60%;
        position: absolute;
        top:10%;
        left: 70%;
        margin: -254px 0 0 -236px;
        background:#FFFFFF;
        z-index: 3;
        border-top-left-radius: 5em;
        border-bottom-left-radius: 5em;
    }
    .black_bg{
        display: none;
        position: absolute;
        content: "";
        width: 100%;
        height: 100%;
        background-color:rgba(218, 215, 216, 0.5);
        top:0;
        left: 0;
        z-index: 2;
    }
    
.modal_top{
width:100%;
height:30%;
text-align: center;
}

.modal_top_left{
font-size:50px;
width:40%;
height:50%;
float:left;
text-align: right;
}

.modal_top_right{
font-size:40px;
width:55%;
height:50%;
float:right;
text-align: left;
}

.modal_mid{
width:100%;
height:60%;
font-size:50px;
text-align: center;
}

.modal_mid_mid{
height:20%;
padding: 0px 30px 0px 0px;
}

#modal_mid_b{
text-align: center;
font-size:45px;
}

.modal_mid_left{
width:40%;
height:100%;
float:left;
text-align: right;
}

.modal_mid_right{
width:55%;
height:100%;
float:right;
text-align: left;
}

#moicon{
width: 130px;
height: 130px;
}

.modal_bot{
width:100%;
height:10%;
font-size:40px;
text-align: center;
}

.modal2_wrap{
        display: none;
        width: 80%;
        height: 50%;
        position: absolute;
        top:30%;
        left: 30%;
        margin: -254px 0 0 -236px;
        background:#FFFFFF;
        z-index: 3;
        border-radius: 5em;
 }
 
.modal2_top{
width:100%;
height:40%;
text-align: center;
padding: 0px 0px 0px 0px;
}

.modal2_top_top{
width:100%;
height:30%;
text-align: center;
padding: 30px 0px 0px 0px;
}

.modal2_top_left{
font-size:60px;
width:65%;
height:100%;
float:left;
text-align: left;
padding: 40px 0px 0px 40px;
}

.modal2_top_right{
font-size:50px;
width:20%;
height:100%;
float:right;
text-align: right;
padding: 60px 50px 0px 0px;
}
 
.modal2_top_bot{
border-top: 10px solid #C6C6C6;
font-size:50px;
width:100%;
height:40%;
text-align: left;
padding: 0px 0px 0px 50px;
}

.modal2_mid{
width:100%;
height:40%;
text-align: center;
padding: 0px 0px 0px 0px;
}

.modal2_mid_top{
width:100%;
height:30%;
text-align: center;
padding: 30px 0px 0px 0px;
}

.modal2_mid_left{
font-size:60px;
width:65%;
height:100%;
float:left;
text-align: left;
padding: 40px 0px 0px 40px;
}

.modal2_mid_right{
font-size:50px;
width:20%;
height:100%;
float:right;
text-align: right;
padding: 60px 50px 0px 0px;
}
 
.modal2_mid_bot{
border-top: 10px solid #C6C6C6;
font-size:50px;
width:100%;
height:40%;
text-align: left;
padding: 0px 0px 0px 50px;
}

.main_map {
	width:100%;
	height:100%;
	background-color : #F1F2F6;
}

.main_top {
	width:100%;
	height:10%;
	color:#362222;
	background-color : white;
	/** background-color: #CAB0FF;
	float:center;
	border-bottom-width:thin;
	border-bottom-color:rgba(25,80,100,0);
	border-bottom:solid; **/
}

.top_left{
	float:left;
	width:70%;
	height:100%;
	/** border-bottom-right-radius: 2em; **/
}

.top_right{
	float:right;
	width:20%;
	height:100%;
}

#modal_btn{
position:relative;
top:20%;
}

.main_mid {
width:100%;
height:65%;
border-bottom: 20px solid #DACDF5;
/** background-color:red;
float:left; **/}

.mid_top{
height:10%;
border-bottom: 20px solid #DACDF5;
padding: 0px 0px 30px 20px;
}

.mid_top_left{
width:40%;
height:30%;
text-align : center;
float:left;
padding-left:10px;
}

.mid_top_right{
width:40%;
height:30%;
float:left;
padding:20px 0px 0px 0px;
}

.mid_day{
font-size:70px;
background-color:#F1F2F6;
text-align : center;
width:450px;
height:150px;
position: absolute;
right: 50px;
top: 13%;
z-index: 1;
}

.mid_bot{
height:90%;
padding-top:10px;
}

.calenders{
width:100%;
height:95%;
border-collapse:collapse;
border-spacing:0;
table-layout:fixed;
}

.calenders td{
/** border-color:black;
border-style:solid;
border-width:1px; **/
font-size:40px;
overflow:hidden;
padding:10px 5px;
word-break:normal;
}
.calenders th{
/** border-color:black;
border-style:solid;
border-width:1px; **/
font-size:40px;
font-weight:normal;
overflow:hidden;
padding:10px 5px;
word-break:normal;
}
.calenders .tg-nrix{
text-align:center;
vertical-align:middle;
font-family: 'Noto Sans KR', sans-serif;
font-weight: 600;
}

#circle{
/** width:100px;
height:100px;
border-radius:70%;
text-align: center;
line-height:100px; **/
background:#E4DFF6;
}

.main_bot {
width:100%;
height:25%;
}

.bot_left{
float:left;
width:50%;
height:100%;
}

.bot_right{
float:right;
width:50%;
height:100%;
}

.bimg_left{
width:500px;
height:500px;
position: absolute;
left: 0;
bottom: 0;
filter:blur(10px);
}

.bimg_right{
width:450px;
height:450px;
position: absolute;
right: 0;
bottom: 0;
filter: invert(27%) sepia(11%) saturate(41%)
hue-rotate(201deg) brightness(88%) contrast(84%);
}

</style>
<script>
window.onload = function() {
	 
    function onClick() {
        document.querySelector('.modal_wrap').style.display ='block';
        document.querySelector('.black_bg').style.display ='block';
    }   
    function offClick() {
        document.querySelector('.modal_wrap').style.display ='none';
        document.querySelector('.black_bg').style.display ='none';
    }
 
    document.getElementById('modal_btn').addEventListener('click', onClick);
    document.querySelector('.black_bg').addEventListener('click', offClick);
    
    function onClick2() {
        document.querySelector('.modal2_wrap').style.display ='block';
        document.querySelector('.black_bg').style.display ='block';
    }   
    function offClick2() {
        document.querySelector('.modal2_wrap').style.display ='none';
        document.querySelector('.black_bg').style.display ='none';
    }
 
    document.getElementById('modal2_btn00').addEventListener('click', onClick2);
    document.getElementById('modal2_btn01').addEventListener('click', onClick2);
    document.querySelector('.black_bg').addEventListener('click', offClick2);
 
}

<%  guest member = (guest) session.getAttribute("member");%>

function go_calender(){
	location.href = "/web/test.do";
}

function go_record(){
	location.href = "/web/record.do?user_id="+<%=member.getUser_id()%>;
}
</script>
</head>
<body>
<% member = (guest) session.getAttribute("member");%>
	<div class="black_bg"></div>
	<div class="modal_wrap">
		<div class = "modal_top">
			<div id="NSK_font" style = "font-size:80px;"><b><br>이진영 님</b></div>
			<div class = "modal_top_left"> 
				<div id="NSK_font"><br>만기일</div>
			</div>
			<div class = "modal_top_right">
				<div id="NSK_font"><br>2021-12-07<br>D-day 30일</div>
			</div>
		</div>
		<div class = "modal_mid">
			<div class = "modal_mid_mid">
				<div class = "modal_mid_left"><img id="moicon" src="resources/img/diary.png" onclick="go_calender()"></div>
				<div class = "modal_mid_right"><b id = "modal_mid_b" onclick="go_calender()">운동 다이어리</b></div>
			</div>	
			<div class = "modal_mid_mid">
				<div class = "modal_mid_left"><img id="moicon" src="resources/img/dumbbell.png"></div>
				<div class = "modal_mid_right"><b id = "modal_mid_b">운동 도구</b></div>
			</div>
			<div class = "modal_mid_mid">
				<div class = "modal_mid_left"><img id="moicon" src="resources/img/video.png" onclick = "go_record()"></div>
				<div class = "modal_mid_right"><b id = "modal_mid_b" onclick = "go_record()">운동 영상</b></div>
			</div>		
		</div>
		<div class = "modal_bot">
			<div id="NSK_font">고객센터     010-4903-4073</div>
		</div>
	</div>
	
	<div class="modal2_wrap">
		<div class = "modal2_top">
			<div class="modal2_top_top">
				<div class = "modal2_top_left"> 
					<div id="NSK_font"><b>체스트 프레스</b></div>
				</div>
				<div class = "modal2_top_right">
					<div id="NSK_font">4set</div>
				</div>
			</div>
			<div id="NSK_font" class="modal2_top_bot">	
				<div id="NSK_font">1set x 12reps<br>2set x 12reps
				<br>3set x 12reps<br>4set x 12reps</div>
			</div>
		</div>
		
		<div class = "modal2_mid">
			<div class="modal2_mid_top">
				<div class = "modal2_mid_left"> 
					<div id="NSK_font"><b>인클라인 체스트 프레스</b></div>
				</div>
				<div class = "modal2_mid_right">
					<div id="NSK_font">4set</div>
				</div>	
			</div>
			<div id="NSK_font" class="modal2_mid_bot">	
				<div id="NSK_font">1set x 12reps<br>2set x 12reps
				<br>3set x 12reps<br>4set x 12reps</div>
			</div>
			
		</div>
	</div>

	<div class="main_map">

	<div class="main_top" style = "text-align : center;">
		<div class="top_left">
			<h1 style = "font-size:90px;">The Ai Fitness</h1>
		</div>
		<div class="top_right">
			<img id="modal_btn" src="resources/img/menu.png"
					style="width: 120px; height: 120px;">
		</div>
	</div>
	<div class="main_mid">
		<div class="mid_top">
			<div class="mid_top_left">
				<h1 id="NSK_font" style = "font-size:80px;"><b>운동을 달력</b></h1>
			</div>
			<div class="mid_top_right">
				<img src="resources/img/date.png"
					style="width: 170px; height: 150px;">
			</div>
		</div>
		<div class="mid_day">
			<p><b>2021.10.06</b></p>
		</div>
		<div class="mid_bot">
			<table class="calenders" >
				<thead>
				  <tr>
				    <th class="tg-nrix">SUN</th>
				    <th class="tg-nrix">MON</th>
				    <th class="tg-nrix">TUE</th>
				    <th class="tg-nrix">WED</th>
				    <th class="tg-nrix">THU</th>
				    <th class="tg-nrix">FRI</th>
				    <th class="tg-nrix">SAT</th>
				  </tr>
				</thead>
				<tbody>
				  <tr>
				    <td class="tg-nrix">26</td>
				    <td class="tg-nrix">27</td>
				    <td class="tg-nrix" id="modal2_btn00"><div id="circle">28</div></td>
				    <td class="tg-nrix">29</td>
				    <td class="tg-nrix">30</td>
				    <td class="tg-nrix">1</td>
				    <td class="tg-nrix">2</td>
				  </tr>
				  <tr>
				    <td class="tg-nrix"></td>
				    <td class="tg-nrix"></td>
				    <td class="tg-nrix"></td>
				    <td class="tg-nrix"></td>
				    <td class="tg-nrix"></td>
				    <td class="tg-nrix"></td>
				    <td class="tg-nrix"></td>
				  </tr>
				  <tr>
				    <td class="tg-nrix">3</td>
				    <td class="tg-nrix">4</td>
				    <td class="tg-nrix">5</td>
				    <td class="tg-nrix" id="modal2_btn01"><div id="circle">6</div></td>
				    <td class="tg-nrix">7</td>
				    <td class="tg-nrix">8</td>
				    <td class="tg-nrix">${day_time.day}</td>
				  </tr>
				  <tr>
				  		<c:forEach var = "info" items = "${day_time}">
						    	<td class="tg-nrix">${info.day}</td>
					    </c:forEach>
				  </tr>
				  <tr>
				    <td class="tg-nrix">10</td>
				    <td class="tg-nrix">11</td>
				    <td class="tg-nrix">12</td>
				    <td class="tg-nrix">13</td>
				    <td class="tg-nrix">14</td>
				    <td class="tg-nrix">15</td>
				    <td class="tg-nrix">16</td>
				  </tr>
				  <tr>
				    <td class="tg-nrix">300kal<br>1시간</td>
				    <td class="tg-nrix"></td>
				    <td class="tg-nrix"></td>
				    <td class="tg-nrix">300kal<br>1시간</td>
				    <td class="tg-nrix"></td>
				    <td class="tg-nrix"></td>
				    <td class="tg-nrix">300kal<br>1시간</td>
				  </tr>
				  <tr>
				    <td class="tg-nrix">17</td>
				    <td class="tg-nrix">18</td>
				    <td class="tg-nrix">19</td>
				    <td class="tg-nrix">20</td>
				    <td class="tg-nrix">21</td>
				    <td class="tg-nrix">22</td>
				    <td class="tg-nrix">23</td>
				  </tr>
				  <tr>
				    <td class="tg-nrix"></td>
				    <td class="tg-nrix">300kal<br>1시간</td>
				    <td class="tg-nrix"></td>
				    <td class="tg-nrix"></td>
				    <td class="tg-nrix"></td>
				    <td class="tg-nrix">300kal<br>1시간</td>
				    <td class="tg-nrix"></td>
				  </tr>
				  <tr>
				    <td class="tg-nrix">24</td>
				    <td class="tg-nrix">25</td>
				    <td class="tg-nrix">26</td>
				    <td class="tg-nrix">27</td>
				    <td class="tg-nrix">28</td>
				    <td class="tg-nrix">29</td>
				    <td class="tg-nrix">30</td>
				  </tr>
				  <tr>
				    <td class="tg-nrix"></td>
				    <td class="tg-nrix"></td>
				    <td class="tg-nrix">300kal<br>1시간</td>
				    <td class="tg-nrix"></td>
				    <td class="tg-nrix">300kal<br>1시간</td>
				    <td class="tg-nrix"></td>
				    <td class="tg-nrix"></td>
				  </tr>
				  <tr>
				    <td class="tg-nrix">31</td>
				    <td class="tg-nrix">1</td>
				    <td class="tg-nrix">2</td>
				    <td class="tg-nrix">3</td>
				    <td class="tg-nrix">4</td>
				    <td class="tg-nrix">5</td>
				    <td class="tg-nrix">6</td>
				  </tr>
				  <tr>
				    <td class="tg-nrix"></td>
				    <td class="tg-nrix"></td>
				    <td class="tg-nrix"></td>
				    <td class="tg-nrix">300kal<br>1시간</td>
				    <td class="tg-nrix"></td>
				    <td class="tg-nrix"></td>
				    <td class="tg-nrix"></td>
				  </tr>
				</tbody>
				</table>
		</div>
	</div>
	<div class="main_bot">
		<div class="bot_left"><img class="bimg_left" src="resources/img/woman.png"></div>
		<div class="bot_right"><a href="http://localhost:8081/web/main.do"><img class="bimg_right" src="resources/img/gym (1).png"></a></div>
	</div>
	</div>
</body>
</html>