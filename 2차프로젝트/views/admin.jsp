<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="com.test.mapper.videoDT" %>
<%@ page import="com.test.mapper.exinfo" %>
<%@ page import="java.util.List" %>
<%@ page import="com.test.mapper.guest" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src='resources/record.js'></script>
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<script src="https://unpkg.com/@popperjs/core@2/dist/umd/popper.js"></script>
<script src="https://unpkg.com/tippy.js@6"></script>
<style>

html, body {
  width: 100%;
  height: 100%;
  margin: 0;
  padding: 0;
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
    
    /* .record_p, .record_g, .record_b, .record_d, .record_u */
    .record_wrap{
        display: none;
        width: 90%;
        height: 54%;
        position: absolute;
        top:28%;
        left: 25%;
        margin: -254px 0 0 -236px;
        background:#FFFFFF;
        z-index: 2;
        border-radius:2em;
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

/*        .diary_wrap{
        display: none;
        width: 100%;
        height: 30%;
        position: absolute;
        top:26.3%;
        left: 20%;
        margin: -254px 0 0 -236px;
        background:#FFFFFF;
        z-index: 2;
         border-radius:5em; 
    }
    .diary_bg{
        display: none;
        position: absolute;
        content: "";
        width: 100%;
        height: 100%;
        background-color:rgba(218, 215, 216, 0.5);
        top:0;
        left: 0;
        z-index: 1;
    } */

   
.modal_top{
width:100%;
height:30%;
text-align: center;
}

.modal_top_left{
    font-size: 50px;
    width: 40%;
    height: 50%;
    float: left;
    top: 56px;
    margin-bottom: 40px;
    text-align: right;
}

.modal_top_right{
font-size: 40px;
width: 55%;
height: 64%;
float: right;
text-align: left;
top: 6%;
margin-bottom: 20px;
}

.modal_mid{
width:100%;
height:60%;
font-size:50px;
text-align: center;
margin-top: -60px;
}

.modal_mid_mid{
height:20%;
padding: 0px 30px 0px 0px;
}

#modal_mid_b{
text-align: center;
font-size:40px;
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

.main_top {
width:100%;
height:8%;
background-color : white;
}

.top_left{
float:left;
width:80%;
height:100%;
}

#modal_btn{
position:relative;
top:20%;
}

.top_right{
position:relative;
float:right;
width:20%;
height:100%;
}


#NSK_font{
font-family: 'Noto Sans KR', sans-serif;
}

#record{
	width : 530px;
   position:relative;
   font-size:70px;
   font-family:Regular;
   font-weight:bolder;
   right:-15%;
   }
   
/*    select{
   position:relative;
   border-radius:40px;
   font-weight:bolder;
   appearance:none;
   right:-20%;
   } */

.diary_top{
height: 100%;
}

#diary_btn{
    position: absolute;
    right: 3%;
    top: 9.5%;
   }
   
   
#button{
   background-color: white;
   width:450px;
   height:300px;
}
input{
font-size:60px;
text-align: center;
}

#mid{
   border-spacing: 50px;
     border-collapse: separate;
     filter : drop-shadow(0 0 0 white);
}


#training{
   filter : opacity(.5) drop-shadow(0 0 0 gray);
   top: 110px;
    right: 40px;
    position: relative;
}

#videioTrainging{
   filter : opacity(.5) drop-shadow(0 0 0 gray);
   top: 110px;
    left: 40px;
    position: relative;
}

#button_gym{
border: none;
/* position: absolute;
top : 84%;
left : 34%; */
}


hr{
	   position:relative;
   width:98%;
   filter : opacity(.5) drop-shadow(0 0 0 gray);
}

#record_top_title{
font-size:100px;
font-weight:bolder;
padding: 50px 50px 50px 50px;
}

#record_middle_content{
position:relative;
top:15%;
}

#video{
position:relative;
width:1000px;
height:800px;
left:0%;
}

#bottom1{
border-spacing: 50px;
border-collapse: separate;
}

#bottom2{
border-spacing: 50px;
border-collapse: separate;
}

a{
font-size:50px;
font-family:Regular;
font-weight:bolder;
}

.ttleft{
font-size: 50px;
    font-family: Regular;
    font-weight: bolder;
        width: 50%;
    height: 100%;
    float: left;
        padding-top: 40px;
    padding-left: 50px;
}
.ttright{
font-size: 50px;
    font-family: Regular;
    font-weight: bolder;
        width: 50%;
    height: 100%;
    float: right;
        text-align: right;
    padding-right: 0px;
}

#out{
width: 150px;
}

b{
font-size:40px;
}

h1{
position:relative;
left:-10%;
top: -5%;
}

h2{
position:relative;

}

.middle{
background-color:#F1F2F6;
}

.d{
padding: 50px 0px 0px 0px;
}

.main_map {
   width:100%;
   height:100%;
   background-color : #F1F2F6;
}

.main_mid {
width:100%;
height:70%;
/* border-bottom: 20px solid #DACDF5; */
/** background-color:red;
float:left; **/}

.mid_top{
width:100%;

}

.mid_bot{
width:100%;
/* height:90%; */
}

#record_video0, #record_video1, #record_video2,
#record_video5, #record_video4, #record_video3,
#record_video6, #record_video7, #record_video8{
width: 450px;
height: 450px;
}
.main_bot {
width:100%;
height:20%;
background-color : #F1F2F6;
text-align: center;
padding-top: 30%;
}
.calender{

}
.hide{
height: 300px;
}

#exercise{
width:400px;
height:100px;
font-size:50px;
font-family:Regular;
}

.item {
    width: 450px;
    float: left;
    margin-left: 90px;
    margin-top: 50px;
    margin-bottom: 0px;
}

#calendar{
    height: 30%;
    width: 120%;
    text-align: center;
    margin-right: 33px;
}
#cal_left{
width: 85%;
float: left;
position: relative;
text-align: right;
}
#cal_right{
    width: 15%;
    height: 100%;
    position: relative;
    float: right;
}
#memos{
text-align: center;
}
#texts{
    width: 90%;
    text-align: center;
}
#dates{
    border-radius: 40px;
    font-family: 'Noto Sans KR', sans-serif;
    border: none;
}
.date{
font-family: 'Noto Sans KR', sans-serif;
text-align: left;
font-size: 45px;
margin-top: -50px;
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
      
    
    function onClick7() {
    	var changeSrc= $(this).attr('src');
    	$("#video").attr("src",changeSrc);
    	
    	document.querySelector('.record_wrap').style.display ='block';
        document.querySelector('.record_bg').style.display ='block';

    }   
    
    function offClick7() {
        document.querySelector('.record_wrap').style.display ='none';
        document.querySelector('.record_bg').style.display ='none';
    }
    
 
    document.getElementById('record_video0').addEventListener('click', onClick7);
    document.querySelector('.record_bg').addEventListener('click', offClick7); 
    
    document.getElementById('record_video1').addEventListener('click', onClick7);
    document.querySelector('.record_bg').addEventListener('click', offClick7); 
    
    document.getElementById('record_video2').addEventListener('click', onClick7);
    document.querySelector('.record_bg').addEventListener('click', offClick7); 
    
    document.getElementById('record_video3').addEventListener('click', onClick7);
    document.querySelector('.record_bg').addEventListener('click', offClick7); 

    document.getElementById('record_video4').addEventListener('click', onClick7);
    document.querySelector('.record_bg').addEventListener('click', offClick7); 
    
    document.getElementById('record_video5').addEventListener('click', onClick7);
    document.querySelector('.record_bg').addEventListener('click', offClick7); 

    document.getElementById('record_video6').addEventListener('click', onClick7);
    document.querySelector('.record_bg').addEventListener('click', offClick7); 
    
    document.getElementById('record_video7').addEventListener('click', onClick7);
    document.querySelector('.record_bg').addEventListener('click', offClick7); 
    
    document.getElementById('record_video8').addEventListener('click', onClick7);
    document.querySelector('.record_bg').addEventListener('click', offClick7); 
    
    document.getElementById('record_video9').addEventListener('click', onClick7);
    document.querySelector('.record_bg').addEventListener('click', offClick7); 
    
    /* 달력 기본날짜 오늘날짜로 */
    today = new Date();

   console.log("today.toISOString() >>>" + today.toISOString());
   today = today.toISOString().slice(0, 10);
   console.log("today >>>> " + today);
   bir = document.getElementById("dates");
   bir.value = today;
   

   <%  guest member = (guest) session.getAttribute("member");%>
   
}

function go_main() { /* 아이콘 누르면 메인으로 */
	   location.href = "/web/main.do";
  }
function go_calender(){
	location.href = "/web/test.do";
}



function go_record(){
	location.href = "/web/record.do?user_id="+<%=member.getUser_id()%>;
}



</script>
<style> 

[type="date"] {
  background:#fff 
/*   url(https://cdn1.iconfinder.com/data/icons/cc_mono_icon_set
  /blacks/16x16/calendar_2.png) */
  url(resources/img/circlesm.png)
    90% 50% no-repeat ;
}
[type="date"]::-webkit-inner-spin-button {
  display: none;
}
[type="date"]::-webkit-calendar-picker-indicator {
  opacity: 0;
}

/* reset */
*{
    list-style: none;
    /* margin: 0; */
    padding: 0;
    font-size: 45px;
    box-sizing: border-box;
}

/* common */
/* body{
    padding: 30px;
} */
.hide{
    display: none;
}
.show {
  /* display: none; */
}

/* 셀렉트 영역 스타일 */
.select{
    position: relative;
    padding: 5px 10px;
    width: 400px;
    height: 100px;
    margin-left: 95px;
    border-radius: 60px;
    /* border:1px solid salmon; */
    background-color: white;
    background-image: url("https://img.icons8.com/material-rounded/24/000000/expand-arrow.png");
    background-repeat: no-repeat;
    background-position: 96% center;
    cursor: pointer;
    padding-left: 35px;
    padding-top: 15px;
}

/* 옵션 영역 스타일 */
.select ul{
    position: absolute;
    top: 30px;
    left: 0;
    width: 100%;
    border:1px solid salmon;
    border-radius: 5px;
    background-color: white;
    cursor: pointer;
    z-index: 2;
}
.select ul li{   /* 셀렉트목록 */
    padding: 10px;
    height: 100px;
}
.select ul li:first-child{
    background: white;
}
.select ul li:nth-child(2){
    background: white;
}
.select ul li:nth-child(3){
    background: white;
}
.select ul li:nth-child(4){
    background: white;
}
.select ul li:nth-child(5){
    background: white;
}
.select ul li:hover{
    background-color: white;
}
/* 아이콘 스타일 */
i{
    vertical-align: bottom;
    margin-right: 5px;
}
i img{
    width: 60px;
}
</style>

</head>
<body>
<% member = (guest) session.getAttribute("member");%>
   <div class="black_bg">
   <div class="modal_wrap">
   <div class="modal_main">
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
      <div class = "modal_bot">
         <div id="NSK_font">고객센터     010-4903-4073</div>
      </div>
   </div>
   </div>
   </div>
<div class="record_bg"></div>
    <div class="record_wrap">
      <div class="record_top" style="width:100%; height:200px;">
         <div id="record_top_title">
         <div class="ttleft"> 체스트프레스 </div> 
         <div class="ttright"><img id="out" src="resources/img/out.png" onclick = "go_record()"></div>
         </div>
         <hr style="border: solid 10px #f5f5f5;">
      </div>
      
      <div class="record_middle" style="width:100%; height:1000px;" align="center">   
         <div id="record_middle_content">
            <video src="/cam/??.webm" id="video" controls="controls">
                <source src="/cam/??.webm"/>
            </video>
         </div>   
      </div>
   
      <div style="width:70%; height:100px;"> </div>
   </div>
<div class="main_map">


<div class="main_top" style = "text-align : center;">
   <div class="top_left">
      <h1 style = "font-size:80px;">The Ai Fitness</h1>
   </div>
   <div class="top_right">
      <img id="modal_btn" src="resources/img/menu.png"
               style="width: 120px; height: 120px;">
   </div>
</div>
<script>
 function test(){
 	$.ajax({ 
		url :"/web/memberExinfo.do?user_id=<%=member.getUser_id()%>",
		method:"GET",
		dataType: 'json',
		success: function(data2) {
			$.each(data2, (index, obj)=>{
				var inD = 'div_d'+index;
				document.getElementById(inD).className = obj.ex_kinds;
			});
			
		}
	});  
}
 
 function insertdate(){
	 var DATE = document.querySelector('input[type="date"]').value;
	 $.ajax({
		 url : "/web/dateVideo.do?user_id=<%=member.getUser_id()%>&video_date="+DATE,
		 method :"GET",
		 dataType : "text",
		 async:false,
		 success : function(result){
			 location.href = "/web/"+result;
		 },
		 error : function(data){
			 alert("error"+data);
		 }
		 
	 })
	 
 }
 
 
 <%-- $.ajax({
	 url : /web/dateVideo.do?user_id=<%=member.getUser_id()%>&video_date="+DATE,
 }) --%>
</script>
<div class="main_mid">
   <div class="mid_top">
      <table style="padding-top: 40px;">
         <tr>
            <td><div id="change"><input onkeyup = "filter()" type = "text" id="record" align ="center" placeholder = "이름 입력하세요"></input> </div></td>
            <td>
               
                  <div class="select" data-role="selectBox" name="exercise" id="exercise" onclick = "test()">
                     <span date-value="optValue" class="selected-option">
                        <!-- 선택된 옵션 값이 출력되는 부분 -->
                     </span>
                     <!-- 옵션 영역 -->
                     <ul class="hide" id="wrap">
                        <li class ="전체"><i><img src="resources/img/menu.png" alt="전체"/></i>전체</li>
                        <li class ="div_d"><i><img src="resources/img/등.png"  alt="등" /></i>등</li>
                        <li class ="div_p"><i><img src="resources/img/p.png" alt="팔" /></i>팔</li>                           
                        <li class ="div_g"><i><img src="resources/img/가슴.png" alt="가슴" /></i>가슴</li>
                        <li class ="div_u"><i><img src="resources/img/어깨.png" alt="어깨" /></i>어깨</li>
                        <li class ="div_b"><i><img src="resources/img/복근.png" alt="복근" /></i>복근</li>
                     </ul>
                  </div>

                  </td>
            <td></td>
         </tr>      
      </table>
      <div>
       <ul>
        <li class="menu">
            <ul class="hide">
            <div>
            </div>
            </ul>
        </li>
      </ul>
      </div>
   </div>
<div id="container">
	<c:forEach var= 'vo' items = "${memberVideo}" varStatus="status" >
	  <div id = "div_d${status.index}" class="div_p${status.index}"><div class="item">
	     <video src="/cam/${vo.file_name}.webm" class="${vo.video_seq}" id="record_video${status.index}"></video>
	     <div>${vo.video_date}</div>
	     <div id = "getName" >${vo.video_seq}</div>
	     </div>
	  </div>
	</c:forEach>
</div>

</div>
   
<div class="main_bot" id="NSK_font">
      <img id="gym2" align="bottom" src="resources/img/gym2.png" width="150px" height="150px" onclick = "go_main()">
</div>

</div>
<script> /* 컨테이너 */
  var container = document.querySelector( '#container' );
  var msnry = new Masonry( container, {
    // options
    columnWidth: 100,
    itemSelector: '.item',
  } );
  
  function filter(){
		
      var value, name, item, i;
	
      value = document.getElementById("record").value.toUpperCase();
      item = document.getElementsByClassName("item");
      alert(item.getElementById("getName"));
      for(i=0;i<item.length;i++){
        name = item[i].getElementById("getName");
        if(name[0].innerHTML.toUpperCase().indexOf(value) > -1){
          item[i].style.display = "flex";
        }else{
          item[i].style.display = "none";
        }
      }
    }
</script>
<script> /* 셀렉트 선택시 동영상 상자 */
$('.전체').click(function(){
	   $('.등').show();
	   $('.가슴').show();
	   $('.팔').show();
	   $('.어깨').show();
	   $('.복근').show();
	})
	$('.div_d').click(function(){
	    $('.등').show();
	    $('.팔').hide();
	    $('.가슴').hide();
	    $('.어깨').hide();
	    $('.복근').hide();
	})
	$('.div_p').click(function(){
	     $('.팔').show();
	   $('.등').hide();
	    $('.가슴').hide();
	    $('.어깨').hide();
	    $('.복근').hide();
	})
	$('.div_g').click(function(){
	   $('.가슴').show();
	    $('.등').hide();
	    $('.팔').hide();
	    $('.어깨').hide();
	    $('.복근').hide();
	})
	$('.div_u').click(function(){
	   $('.어깨').show();
	   $('.등').hide();
	    $('.팔').hide();
	    $('.가슴').hide();
	    $('.복근').hide();
	})       
	$('.duv_b').click(function(){
	   $('.복근').show();
	   $('.등').hide();
	    $('.팔').hide();
	    $('.가').hide();
	    $('.div_u').hide();
	})   
</script>
<script type="text/javascript"> /* 셀렉트 */
const body = document.querySelector('body');
const select = document.querySelector(`[data-role="selectBox"]`);
const values = select.querySelector(`[date-value="optValue"]`);
const option = select.querySelector('ul');
const opts = option.querySelectorAll('li');

/* 셀렉트영역 클릭 시 옵션 숨기기, 보이기 */
function selects(e){
    e.stopPropagation();
    option.setAttribute('style',`top:${select.offsetHeight}px`)
    if(option.classList.contains('hide')){
        option.classList.remove('hide');
        option.classList.add('show');
    }else{
        option.classList.add('hide');
        option.classList.remove('show');
    }
    selectOpt();
}

/* 옵션선택 */
function selectOpt(){
    opts.forEach(opt=>{
        const innerValue = opt.innerHTML;
        function changeValue(){
            values.innerHTML = innerValue;
        }
        opt.addEventListener('click',changeValue)
    });
}

/* 선택시 div보이게 */


/* 렌더링 시 옵션의 첫번째 항목 기본 선택 */
function selectFirst(){
    const firstValue = opts[0].innerHTML;
    values.innerHTML = `${firstValue}`
}



/* 옵션밖의 영역(=바디) 클릭 시 옵션 숨김 */
function hideSelect(){
    if(option.classList.contains('show')){
        option.classList.add('hide');
        option.classList.remove('show');
    }
}

selectFirst();
select.addEventListener('click',selects);
body.addEventListener('click',hideSelect);

<%  List<videoDT> memberVideo = (List<videoDT>) session.getAttribute("memberVideo");%>
<%for(int i =0; i<memberVideo.size(); i++){%>
   $.ajax({
	   url : "/web/memberName.do?video_seq=<%=memberVideo.get(i).getVideo_seq()%>",
	   type :"GET",
	   dataType : "text",
		contentType: 'application/json; charset=utf-8',
		 success : function(result){
			 var html ="<div>"+result+"</div>";
			 $('#div_d<%=i%> div > div:nth-child(3)').html(html);
		 },
		 error : function(request,status,error){
			 alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
		 }
   });
<%}%>


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
</body>
</html>