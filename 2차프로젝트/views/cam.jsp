<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.test.mapper.exinfo" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Hello OpenCV.js</title>
<script  src="http://code.jquery.com/jquery-latest.min.js"></script>
<style>
h1{
text-align: center;
font-size:80px;
}
video{
position:relative;
width:70%;
height:100%;
}
.video{
width:100%;
height:700px;

}
.stop-button{
position:absolute;
font-size: 50px;
    top: 800px;
    right: 200px;
}
</style>
</head>
<body>
<!-- 카메라 프레임이 그려질 공간 -->
<% 
	exinfo member = (exinfo)session.getAttribute("ex_seq");
	System.out.println(member.getEx_seq());
%>

<h1> 카메라 프레임 <h1>
<video autoplay muted id="videoInput" width=320 height=240 type= "hidden"></video>
<button class = "stop-button" >중지</button>

<!-- <img src="http://localhost:5000/video_feed"> -->
<img id="image" src="" />


<script type="text/javascript">
// 중지 버튼
const stopButton = document.querySelector(".stop-button")
const previewPlayer = document.querySelector("#videoInput")
// 중지 버튼 이벤트
stopButton.addEventListener("click",stopRecording);

let recorder;
let recordedChunks = [];
// 횟수를 세기 위해 고유아이디 생성
let exerciseId = new Date().getTime();
/* 카메라 허용하기 & 스트리밍 시작 */
let video = document.getElementById("videoInput");

navigator.mediaDevices.getUserMedia({video:true, audio: false })
    .then(stream => {
    	console.log(previewPlayer);
    	previewPlayer.srcObject = stream;
    	console.log(previewPlayer.captureStream());
        //captureStream 실시간으로 실행되는 stream을 녹화를 위해 넘겨준것
        startRecording(previewPlayer.captureStream());
        //previewPlayer.play();
    })
    .catch(function(err) {
        console.log("An error occurred! " + err);
    });


function startRecording(stream){
	//recordedChunks ;
	//console.log(stream);
	const recorder = new MediaRecorder(stream);
	//console.log(recorder)
	recorder.ondataavailable = (e) => {
		console.log("onDataAvailable")
		recordedChunks.push(e.data)
		
		const b = new Blob(recordedChunks,{ type: "video/webm"});
		console.log(b);
		
		url = "/web/insertExURL.do?user_id=<%=member.getUser_id()%>&ex_seq=<%=member.getEx_seq()%>"
		
		var oReq = new XMLHttpRequest();
		oReq.open("POST", url, true);
		oReq.onload = function (oEvent) {
		  // Uploaded.
		  if (oReq.status == 200){
			  let result = oReq.response;
              location.href="/web/"+result;
		  }else {
			  alert("error"+ this.status);
		  }
		  //console.log('success');
		  //location.href= "/web/"+oReq.response
		};
		
		oReq.send(b);
		
		
	};
	console.log(recordedChunks);
	recorder.start();
}

//카메라 중지버튼
function stopRecording(){
	
	previewPlayer.srcObject.getTracks().forEach(track=> track.stop());
	
	//videoUrl = URL.createObjectURL(recordedBlob);
	//console.log(recordedChunks);
	//let url = recordedChunks;

	
}


let canvasOutput = document.getElementById('canvasOutput');

/* OpencvJS 로딩 완료시 콜백함수 */
function onOpenCvReady(){
	console.log("onOpenCvReady");
   let height = video.height;
   let width = video.width;
   let src = new cv.Mat(height, width, cv.CV_8UC4); // 8 byte 4 channel
   let dst = new cv.Mat(height, width, cv.CV_8UC1); // 8 byte 1 channel
   let cap = new cv.VideoCapture(video);
   const FPS = 1; // 초당 프레임수 조절 -> 흑백 변환 프레임 레이트
   function processVideo() {
       let begin = Date.now();
       cap.read(src);
       //console.log(src.data);
       sendData(src.data); // 서버로 데이터 전송
       //cv.cvtColor(src, dst, cv.COLOR_RGBA2GRAY);
       //cv.imshow("canvasOutput", dst);
       // schedule next one.
       let delay = 1000/FPS - (Date.now() - begin);
       setTimeout(processVideo, delay);
       // insertData();
   }
   // schedule first one.
   setTimeout(processVideo, 0);
}

let sendURL = "http://localhost:5000/sendFrame?id="+exerciseId;
function sendData(data){
   const xhr = new XMLHttpRequest();
    xhr.open('POST', sendURL);
    xhr.onload = () => {
      // console.log(xhr.responseText); // 응답 메세지
      // xhr.responseText : base64 타입 문자열
      //base64타입을  이미지 태그에 바로 넣는 코드!
      //var imgsrc = "data:image/png;base64," + xhr.responseText;

      var respOjb = JSON.parse(xhr.responseText);
      image_data = respOjb.result_image;
      var imgsrc = "data:image/png;base64," + image_data;
      document.getElementById('image').src = imgsrc;
      
      cnt = respOjb.result_cnt;
      g_cnt = respOjb.result_g_cnt;
      state = respOjb.result_state;
      feedback = respOjb.result_feedback;
      feedback_l = respOjb.result_feedback_l;
      feedback_r = respOjb.result_feedback_r;
      console.log("cnt : " + cnt);
      console.log("g_cnt : " + g_cnt);
      console.log("feedback : " + feedback);
      console.log("feedback_l : " + feedback_l);
      console.log("feedback_r : " + feedback_r);
    
    };
    xhr.send(data);
}

</script>
<!-- OpencvJS 라이브러리 가져오기 -->
<script async src="https://docs.opencv.org/3.4.0/opencv.js" onload="onOpenCvReady()" type="text/javascript"></script>
</body>
</html>