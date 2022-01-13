<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.test.mapper.guest" %>
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
        z-index: 2;
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
        z-index: 1;
    }
    
#modal_btn{
position:relative;
top:20%;
}
    
.modal_top{
width:100%;
height:30%;
text-align: center;
}

.modal_top_top{
width:100%;
height:50%;
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

.main_map {
width:100%;
height:100%;
background-color : #FFFFFF;
}

.main_mid{
background-color : #F1F2F6;
}


.main_top {
width:100%;
height:10%;
/** background-color: #CAB0FF;
float:center;
border-bottom-width:thin;
border-bottom-color:rgba(25,80,100,0);
border-bottom:solid; **/}

.top_left{
float:left;
width:80%;
height:100%;
}

.top_right{
float:right;
width:20%;
height:100%;
}

h1{
position:relative;
left:-10%;
}

.main_mid {
width:100%;
height:80%;
/** background-color:red;
float:left; **/}

.mid_top{
font-size:80px;
height:10%;
text-align: center;
padding: 50px 0px 0px 100px;
}


.mid_bot{
height:88%;
}

.main_bot {
position:relative;
width:100%;
height:20%;
background-color: #FFFFFF;
font-weight:bolder;
}

.bicon{
float: left;
padding: 20px 0px 0px 20px;
width: 23%;
font-size:40px;
text-align: center;
color:black;
}


.bimg{
width:150px;
height:150px;
}

.mbimg{
width:550px;
height:500px;
}

td{
font-size:40px;
font-weight:bolder;
}

b{
font-size:60px;
}

.video{
text-align:center;
}

.test{
position:relative;
text-align:left;
left:8%;
font-size:60px;
font-weight:bolder;
font-family: 'Noto Sans KR', sans-serif;
}

p{
font-size:40px;
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
 
}

<%  guest member = (guest) session.getAttribute("member");%>

function go_cam(clicked_id){
	location.href = "/web/cam.do?ex_name="+clicked_id+"&user_id="+<%=member.getUser_id() %>;
}

function reply_click(clicked_id){
	location.href = "${cpath}/insertExName.do?ex_name="+clicked_id+"&user_id="+<%=member.getUser_id() %>;
	
}

</script>

</head>
<body>


	<% member = (guest) session.getAttribute("member");%>

	<div class="black_bg"></div>
	<div class="modal_wrap">
		<div class = "modal_top">
			<div id="NSK_font" style = "font-size:80px;"><b><br><%= member.getUser_name() %></b></div>
			<div class = "modal_top_left"> 
				<div id="NSK_font"><br>만기일</div>
			</div>
			<div class = "modal_top_right">
				<div id="NSK_font"><br><%=member.getUser_expire_date() %><br>D-day 30일</div>
			</div>
		</div>
		<div class = "modal_mid">
			<div class = "modal_mid_mid">
				<div class = "modal_mid_left"><img id="moicon" src="resources/img/diary.png" onclick = "go_calender()"></div>
				<div class = "modal_mid_right"><b id = "modal_mid_b" onclick = "go_calender()">운동 다이어리</b></div>
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
				<table>
					<tr>
					<td><img src = "resources/img/체스트프레스.png"
					style = "width:150px; height:150px;"></td>
					<td><b id="NSK_font">체스트 프레스</b></td>
					</tr>
				</table>
			</div>
			
		<div class="mid_bot" >
		
			<div class="video">
				<iframe width="1050" height="700" src="https://www.youtube.com/embed/cZnN10iJJJU" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
			</div>
			
			<div style="width:100%; height:150px;"></div>
			
			<div class="test">
				<details>
    				<summary>운동소개</summary>
    				<p>가슴 전체 라인을 멋지게 만들어주는 운동</p>
    			</details>	
    			<details>
    				<summary>운동방법</summary>
    				<p>1.벤치에 엉덩이, 윗 등을 붙이고 가슴을 최대한 오픈시켜줍니다 <br>2.가슴에 힘을 주면서 앞으로 밀어줍니다<br>3.손목, 팔꿈치를 일직선을 유지시킨상태에서 팔꿈치를 뒤로 천천히 빼줍니다<br>4.다시 가슴에 힘을 주면서 밀어줍니다 </p>
    			</details>
    			<details>
    				<summary>운동효과</summary>
    				<p>축 처진 팔뚝살을 탄탄하게 만들어 주며, 상체를 튼튼하게 만들어주는 운동</p>
				</details>
				<details style=color:red>
    				<summary >주의사항</summary>
    				<p>팔꿈치가 어깨와 일직선이거나 어깨 위로 올라가면 안됩니다<br>팔꿈치가 손목보다 너무 밑에 있으면 안됩니다<br>프레스 했을 때 어깨가 앞으로 나오면 안됩니다</p>
				</details>
			</div>
			
		</div>

		
		
		<div class="main_bot" id="NSK_font">
			<div class="bicon"><img class="bimg" src="resources/img/가슴.png"><br>가슴</div>
			<div class="bicon"><img class="bimg" src="resources/img/어깨.png"><br>어깨</div>
			<div class="bicon"><img class="bimg" src="resources/img/등.png"><br>등</div>
			<div class="bicon"><img class="bimg" src="resources/img/p.png"><br>팔</div>
		</div>
		
		</div>
		
		</div>
		
	
		
		

</body>
</html>