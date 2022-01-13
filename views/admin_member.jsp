<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>   
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
        /* display: none; */
        width: 50%;
        height: 50%;
        position: relative;
        left: 50%;
/*      top:10%;
        margin: -254px 0 0 -236px; */
        background:#FFFFFF;
/*      z-index: 2; */
        border-top-left-radius: 3em;
        border-bottom-left-radius: 3em;
    }
    .black_bg{
        /* display: none; */
        position: fixed;
        content: "";
        width: 100%;
        height: 100vh;
        background-color:rgba(218, 215, 216, 0.5);
        top:0;
        left: 0;
        z-index: 1000;
        
          /* 숨기기 */
        z-index: -1;
        opacity: 0;
    }
.modal_main{
  position: absolute;
    top: 53%;
    left: 52%;
    width: 100%;
    height: 100%;
  transform: translate(-50%, -50%);
  
   /* 초기에 약간 아래에 배치 */
  transform: translate(-50%, -40%);
}

.show1 {
  opacity: 1;
  z-index: 1000;
  transition: all .5s;
}

.show1 .modal_main {
  transform: translate(-50%, -50%);
  transition: all .5s;
}
  
    .record_bg{
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
    
.modal_top{
width:100%;
height:20%;
text-align: center;
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
font-size:70px;
color : #CCA7A7;
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

.user_wrap{
        display: none;
        width: 35%;
        height: 40%;
        position: absolute;
        top:35%;
        left: 85%;
        margin: -254px 0 0 -236px;
        background:#FFFFFF;
        z-index: 3;
        border-top-left-radius: 5em;
        border-bottom-left-radius: 5em;
    }
.user_bg{
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
    
.user_top{
width:100%;
height:20%;
text-align: center;
}

.user_button{
    width:250px;
    height:150px;
    background-color: #DCC3C3;
    border: none;
    color:#635858;
    padding: 15px 0;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    margin: 20px;
    cursor: pointer;
    position: relative;
    top: 30px;
    left:10px;
    border-radius:10px;
    font-size:60px;
    font-weight: 600;
}

.main_map {
	width:100%;
	height:100%;
	background-color : #F1F2F6;
}

.main_top {
width:100%;
height:8%;
color:#362222;
}

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

.main_top {
width:100%;
height:8%;
color:#362222;
}

.main_mid {
width:100%;
height:10%;
}

.mid_text{
display: inline-block;
margin-top: 50px;
}

#user_name{
text-align: center; 
border-radius:40px;
background-color:#F1F2F6;
font-weight:bolder;
appearance:none;
}

.main_bot {
width:100%;
height:80%;
text-align: center; 
}

.bot_view{
display:inline-block;
text-align: center; 
width:90%;
height:95%;
background-color:white;
border-radius:100px;
border: 5px solid #BDBDBF;
}

.bot_user{
font-size:50px;
border-top: 5px solid #BDBDBF;
height:7%;
}

.bot_user_left{
width:70%;
height:100%;
float:left;
}

.bot_user_right{
width:30%;
height:100%;
float:right;
text-align: left; 
}

.bot_userlib1{
width:100%;
height:5%;
}

.bot_userlib2{
width:100%;
height:5%;
border-top: 5px solid #BDBDBF;
}

#user_b{
position: relative;
top: 30px;
}

.user_yess{
    width:130px;
    height:80px;
    background-color: #DCC3C3;
    border: none;
    color:#635858;
    padding: 15px 0;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    margin: 4px;
    cursor: pointer;
    position: relative;
    top: 20px;
    border-radius:10px;
    font-size:40px;
    font-weight: 600;
}

.user_no{
    width:130px;
    height:80px;
    background-color: #DCC3C3;
    border: none;
    color:#635858;
    padding: 15px 0;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    margin: 4px;
    cursor: pointer;
    position: relative;
    top: 20px;
    border-radius:10px;
    font-size:40px;
    font-weight: 600;
}

h1{
position:relative;
left:-10%;
top:-5%;
font-size:80px;
}

#modal_btn{
position:relative;
top:20%;
}

.main_top {
width:100%;
height:8%;
background-color:#FFFFFF;
}

</style>
<script>
window.onload = function() {
	 
	   function show1 () {
	        document.querySelector(".black_bg").className = "black_bg show1";
	      }
	   function close1 () {
	        document.querySelector(".black_bg").className = "black_bg";
	      }
	   
	    document.querySelector("#modal_btn").addEventListener("click", show1);
	    document.querySelector(".black_bg").addEventListener("click", close1);

    var onClick11 = function onClick1() {
        document.querySelector('.user_wrap').style.display ='block';
        document.querySelector('.user_bg').style.display ='block';
    };   
    function offClick1() {
        document.querySelector('.user_wrap').style.display ='none';
        document.querySelector('.user_bg').style.display ='none';
    }
   	
    var className = document.getElementsByClassName('user_yess');
    for(var i = 0; i<className.length;i++){
    	className[i].addEventListener('click', onClick11, false);
    }
    
    // document.getElementById('user_yes1').addEventListener('click', onClick1);
    // document.getElementById('user_yes2').addEventListener('click', onClick1);
    // document.getElementById('user_yes3').addEventListener('click', onClick1);
    // document.getElementById('user_yes4').addEventListener('click', onClick1);
	

    document.querySelector('.user_bg').addEventListener('click', offClick1);

}

//var user_id;
//function get_user_id(id){
//	user_id = id;
//	console.log(user_id);
//	return user_id
//}

function insertMonth(month){
	location.href =  "/web/extensionMember.do?user_id="+user_id+"&month="+month;
	
}

function gomember(){
	location.href =  "/web/admin_member.do";
}

function gojoin(){
	location.href =  "/web/join.do";
}

function gorecord(){
	location.href =  "/web/admin.do";
}
</script>
</head>
<body>

   <div class="black_bg">
   <div class="modal_wrap">
   <div class="modal_main">
      <div class = "modal_top">
         <div id="NSK_font" style = "font-size:80px;"><b><br>관리자 님</b></div>
      </div>
      <br><br>
      <div class = "modal_mid">
         <div class = "modal_mid_mid">
            <div class = "modal_mid_left"><img id="moicon" src="resources/img/diary.png" onclick = "gomember()"></div>
            <div class = "modal_mid_right"><b id = "modal_mid_b" onclick = "gomember()">회원 관리</b></div>
         </div>   
         <div class = "modal_mid_mid">
            <div class = "modal_mid_left"><img id="moicon" src="resources/img/dumbbell.png" onclick = "gojoin()"></div>
            <div class = "modal_mid_right"><b id = "modal_mid_b" onclick = "gojoin()">회원 가입</b></div>
         </div>
         <div class = "modal_mid_mid">
            <div class = "modal_mid_left"><img id="moicon" src="resources/img/training.png" onclick = "gorecord()"></div>
            <div class = "modal_mid_right"><b id = "modal_mid_b" onclick = "gorecord()">회원 영상</b></div>
         </div>      
      </div>
   </div>
   </div>
   </div>
   <div class="user_bg"></div>
   <div class="user_wrap">
      <div class = "user_top">
      <form action="admin_member" method="post" name="changeMonth">
         <div><input type="button" class="user_button" value="1개월" onclick = "insertMonth('1')" ></div>
         <div><input type="button" class="user_button" value="3개월" onclick = "insertMonth('3')"></div>
         <div><input type="button" class="user_button" value="6개월" onclick = "insertMonth('6')"></div>
         <div><input type="button" class="user_button" value="12개월" onclick = "insertMonth('12')"></div>
      </form>
      </div>
   </div>   

   <div class="main_map" id="NSK_font">
   
      <div class="main_top" style = "text-align : center;">
         <div class="top_left">
            <h1 style = "font-size:80px;">The Ai Fitness</h1>
         </div>
         <div class="top_right">
         
            <img id="modal_btn" src="resources/img/menu.png"
               style="width: 120px; height: 120px;">
         </div>
      </div>
      
      <div class="main_mid" style = "text-align : center;">
         <div class="mid_text">
            <input style="width:400px;height:100px;font-size:50px;
            font-family:Regular;" type="text" id="user_name"
            placeholder="회원 이름 검색">
         </div>
      </div>
      <div class="main_bot">
         <div class="bot_view">
            <div class="bot_userlib1"></div>
            
            <c:forEach var= 'vo' items = "${member}">
            	<c:set var="i" value="${i+1}"/>
	            <div class="bot_user">
	               <div class="bot_user_left"><b id="user_b">${vo.user_name } 기한 :${vo.user_expire_date }</b></div>
	               <div class="bot_user_right">
	                  <input type="button" id="user_yes${i}" class="user_yess" value="연장" onClick="get_user_id('${vo.user_id }')">
	                  <input type="button" class="user_no" value="해지" >
	               </div>
	            </div>
            </c:forEach>   
            <div class="bot_userlib2"></div>
         </div>
      </div>
   </div>

</body>
</html>