<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html style="height: 100%" s>
<head>
<!-- Required meta tags -->


<meta charset="utf-8">

<meta HTTP-EQUIV="pragma" CONTENT="no-cache"> 
<meta HTTP-EQUIV="Cache-Control" CONTENT="no-store, must-revalidate"> 
<meta HTTP-EQUIV="expires" CONTENT="Wed, 26 Feb 1997 08:21:57 GMT"> 



<META HTTP-EQUIV="expires" CONTENT="0">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>个人后台首页</title>
<!-- plugins:css -->
<link rel="stylesheet"
	href="../personal_page/vendors/iconfonts/mdi/css/materialdesignicons.min.css">
<link rel="stylesheet"
	href="../personal_page/vendors/css/vendor.bundle.base.css">
<!-- endinject -->
<!-- inject:css -->
<link rel="stylesheet" href="../personal_page/css/style.css">
<!-- endinject -->
<link rel="shortcut icon" href="../personal_page/images/favicon.png" />

<script src="/ssm_grimm/js/jquery.min.js" type="text/javascript"></script>

	<!-- 时间线-->

  <link rel="stylesheet" href="../layui/css/layui.css"  media="all">


	
	
	
	
	
<!-- plugins:js -->
<script src="../personal_page/vendors/js/vendor.bundle.base.js"></script>
<script src="../personal_page/vendors/js/vendor.bundle.addons.js"></script>
<!-- endinject -->
<!-- Plugin js for this page-->
<!-- End plugin js for this page-->
<!-- inject:js -->
<script src="../personal_page/js/off-canvas.js"></script>
<script src="../personal_page/js/misc.js"></script>
<!-- endinject -->
<!-- Custom js for this page-->
<script src="../personal_page/js/dashboard.js"></script>

<script type="text/javascript">
	function managemessage() {

		
					$("#personalinfo").attr("style","display:none");
					$("#sendmessage").show();
		

	}
</script>

<!-- 获取验证码 -->
	<script type="text/javascript">
	function getnewphoneCode(){
		var  newphone=$("#newphone").val();
	
		 if(newphone==""){
		    	alert("手机号不能为空");
		    	return ; 

		    }else{
		    	
		    	  var reg = /^1[3|4|5|7|8][0-9]{9}$/; //验证规则
		    	  if(reg.test(newphone)==false){
		    		  alert("手机号格式不正确");
		    		  return ; 
		    	  } 
		    	  }
		 
		 $.ajax({ 

			    data:{"phone":newphone
			    },
			

			    type:"POST", 
			    async: false,

			    dataType: 'json',

			    url:"/ssm_grimm/ajax/getupdatePhoneCode.mvc", 

			    success:function(data){ 
				  if(data.state==0){
					  /**用户未变*/
					 alert("此账号为原账号");
					
					  
				  }  if(data.state==1){
					//已被注册
					alert("改手机号已被注册");
					  
				  }  if(data.state==2){
					 //收到验证码
					  var phone= $("#newphone");
					  phone.attr("disabled","disabled");
					  var code = $("#phonecode");
					  code.attr("disabled","disabled");
					    setTimeout(function(){
					    	code.css("opacity","0.8");
					    },1000)
					    var time =1000;
					    var set=setInterval(function(){
					    code.val("("+--time+")秒后重新获取");
					    }, 1000);
					    setTimeout(function(){
					    code.attr("disabled",false).val("重新获取验证码");
					    clearInterval(set);
					    }, 1000000);
				  }

	               
			    },

			     error:function(data){ 

			    	    alert("后台故障，请稍等");

			    }

			    });  
		
		 
		 
		
		
		
	}
	

	</script>
	
	
	
	
	
	
	
	
	
	
	<script type="text/javascript">
   		   function commtinewPhoneUpdate(){
   			
			var newphone=$("#newphone").val()
			var code=$("#code").val()
			
			 
			 $.ajax({ 

				    data:{"phone":newphone,"code":code
				    },
				

				    type:"POST", 
				    async: false,

				    dataType: 'json',

				    url:"/ssm_grimm/ajax/updatePhone.mvc", 

				    success:function(data){ 
					  if(data.state==0){
						  /**用户未变*/
						 alert("修改成功");
						  window.location="\/ssm_grimm/ajax/index.mvc"
						
						  
					  }  if(data.state==1){
						//已被注册
						alert("修改失败（原因未知）");
						  
					  }  if(data.state==2){
						 //收到验证码
						alert("验证码错误");
					  }

		               
				    },

				     error:function(data){ 

				    	    alert("后台故障，请稍等");

				    }

				    });  
   		  
   		   
   		   }

		

	</script>
	
	
	
	
	



<!-- 修改按钮 -->
<script type="text/javascript">
	function updateButton() {

		var name, phone, date, gender;
		name = document.getElementById("name").value;
		phone = document.getElementById("phone").value;

		var gender = $("input[name='gender']:checked").val();
		date = $('#age').val();

		$.ajax({

			data : {
				"phone" : phone,
				"name" : name,
				"gender" : gender,
				"date" : date
			},

			type : "POST",
			async : false,

			dataType : 'json',

			url : "/ssm_grimm/ajax/updatePeopleinfo.mvc",

			success : function(data) {
				if (data.state == 0) {
alert("你是卵细胞？？？");
				}
				if (data.state  == 1) {
					alert("你是百岁老人？？");

				}
				if (data.state  == 2) {
					
					alert("更改成功");
					window.location="./index.mvc";
				}
				if (data.state  == 3) {
					alert("更改失败");
				}
				if (data.state  == 4) {
					alert("该手机号是别人的");
				}
				if (data.state  == 5) {
					alert("更改手机号");
					$("#personalinfo").attr("style","display:none");
					$("#changephone").show();
				
					

				}

			},

			error : function(data) {

			}

		});

	}
</script>


<!-- 调出photo -->
<script type="text/javascript">
function getPhoto(){
	$("#personalinfo").attr("style","display:none");
	$("#changephooto").show();
	
	
	
}

</script>

<!-- websocket -->
<script type="text/javascript">
window.onload= function   line(){
	

		var now = new Date();

		var day = ("0" + now.getDate()).slice(-2);

		var month = ("0" + (now.getMonth() + 1)).slice(-2);

		var today = now.getFullYear() + "-" + (month) + "-" + (day);

		$('#age').val(today);
	

	var userphone = $("#userphone").text();

	if ('WebSocket' in window) {
		websocket = new WebSocket(
				 	 "ws://localhost:8080/ssm_grimm/websocket/" + userphone);  
	
				
	} else {
		alert('当前浏览器 Not support websocket')
	}

	websocket.onerror = function() {
		alert("WebSocket连接发生错误");
	};

	websocket.onopen = function() {

	}

	websocket.onmessage = function(event) {
		receive(event.data);

	}

	websocket.onclose = function() {

	}

	window.onbeforeunload = function() {

	}
	
}
		

		function closeWebSocket() {

		}

		function receive(sendMessage) {
			//$("#message0").remove;
			if(sendMessage.indexOf("管理员大大说")!=-1){
				
				$(".bg-danger").removeAttr("style");
				$("#manfalt0").find("p").text(sendMessage);
				var newmessage = $("#manfalt0").clone().removeAttr("style");
			
				newmessage.appendTo("#mansend");
			}else{
				
				var strs = new Array(); //定义一数组 
				strs = sendMessage.split("用户手机号"); //字符分割 
				var time = strs[0];
				var strs1 = new Array(); //定义一数组 
				strs1 = strs[1].split("用户名字"); //字符分割
				var whosendyou = strs1[0];//手机号
				var strs2 = new Array(); //定义一数组
				strs2 = strs1[1].split("发来消息");
				var name = strs2[0];
				var content = strs2[1];
				
				var numMessage = $("#who_send").children(".message").length;
				if (numMessage - 1 == 0) {

					$("#receiveTishi").removeAttr("style");
				}

				var newmessage = $("#message" + (numMessage - 1)).clone().attr(
						'id', 'message' + numMessage).removeAttr("style");
				newmessage.appendTo("#who_send");
				//赋值
				$("#message" + numMessage).find("img").attr('src',
						'../userPhoto/' + whosendyou + '.jpg');
				$("#message" + numMessage).find("img").attr('onerror',
						'this.src="../userPhoto/default.jpg"');
				$("#message" + numMessage).find("h8").text(name);
				$("#message" + numMessage).find("h5").text(time);
				$("#message" + numMessage).find("p").text(whosendyou);

				var numMessage = $("#who_send").children(".message").length;

				$("#messageNum").html(numMessage - 1);
				
			}
			
			

		}
		



function turnChat(e) {
	var  whosendu=$(e).find("p").text();
	 window.location.href="./turnChat.mvc?whosendu="+whosendu;
	 
	
}

function sendmessage(){
	
	
	var text=$("#managementmessage").val();
	if(text==""){alert("请输入内容"); return ;}
	
	websocket.send("0我是管理员"+text);
	
	alert("发送成功！请间隔几分钟发送");
	
} 
	</script>
	

<style type="text/css">
table {
	width: 100%;
	height: 100%
}

table.altrowstable {
	font-family: verdana, arial, sans-serif;
	font-size: 11px;
	color: #333333;
	border-width: 1px;
	border-color: #a9c6c9;
	border-collapse: collapse;
}

table.altrowstable th {
	border-width: 1px;
	padding: 8px;
	border-style: solid;
	border-color: #a9c6c9;
}

table.altrowstable td {
	border-width: 1px;
	padding: 8px;
	border-style: solid;
	border-color: #a9c6c9;
}

.oddrowcolor {
	background-color: #d4e3e5;
}

.evenrowcolor {
	background-color: #c3dde0;
}

.update-button { /* 按钮美化 */
	width: 270px; /* 宽度 */
	height: 40px; /* 高度 */
	border-width: 0px; /* 边框宽度 */
	border-radius: 3px; /* 边框半径 */
	background: #1E90FF; /* 背景颜色 */
	cursor: pointer; /* 鼠标移入按钮范围时出现手势 */
	outline: none; /* 不显示轮廓线 */
	font-family: Microsoft YaHei; /* 设置字体 */
	color: white; /* 字体颜色 */
	font-size: 17px; /* 字体大小 */
}

.login-button:hover { /* 鼠标移入按钮范围时改变颜色 */
	background: #5599FF;
}

/* radion*/
label {
	margin: 10px;
}

.a-radio {
	display: none;
}

.b-radio {
	display: inline-block;
	border: 1px solid #ccc;
	width: 16px;
	height: 16px;
	border-radius: 2px;
	vertical-align: middle;
	margin-right: 5px;
	position: relative;
}

.b-radio:before {
	content: '';
	font-size: 0;
	width: 10px;
	height: 10px;
	background: rgb(143, 188, 238);
	position: absolute;
	left: 50%;
	top: 50%;
	margin-left: -5px;
	margin-top: -5px;
	border-radius: 2px;
	display: none;
}

.a-radio:checked ~.b-radio:before {
	display: block;
}
</style>
</head>
<body style="height: 100%">
	<div id="userphone" style="display: none">${userdetail.phone}</div>
	<div class="container-scroller" style="height: 100%">
		<!-- partial:partials/_navbar.html -->
		<nav
			class="navbar default-layout-navbar col-lg-12 col-12 p-0 fixed-top d-flex flex-row">
		<div
			class="text-center navbar-brand-wrapper d-flex align-items-center justify-content-center">

			<a class="navbar-brand brand-logo" href="/ssm_grimm/ajax/index.mvc"><img

				src="../personal_page/images/logo.svg" alt="logo" /></a> <a
				class="navbar-brand brand-logo-mini" href="index.html"><img
				src="../personal_page/images/logo-mini.svg" alt="logo" /></a>
		</div>
		<div class="navbar-menu-wrapper d-flex align-items-stretch">
			<div class="search-field d-none d-md-block">
				<form class="d-flex align-items-center h-100" action="#">
					<div class="input-group">
						<div class="input-group-prepend bg-transparent">
							<i class="input-group-text border-0 mdi mdi-magnify"></i>
						</div>
						<input type="text" class="form-control bg-transparent border-0"
							placeholder="Search projects">
					</div>
				</form>
			</div>
			<ul class="navbar-nav navbar-nav-right">
				<li class="nav-item nav-profile dropdown"><a
					class="nav-link dropdown-toggle" id="profileDropdown" href="#"
					data-toggle="dropdown" aria-expanded="false">
						<div class="nav-profile-img">
							<img src="../userPhoto/${userdetail.phone}.jpg" alt="默认 头像"
								onerror="this.src='../userPhoto/default.jpg'"> <span
								class="availability-status online"></span>
						</div>
						<div class="nav-profile-text">
							<p class="mb-1 text-black">${userdetail.uName}</p>
						</div>
				</a>
					<div class="dropdown-menu navbar-dropdown"
						aria-labelledby="profileDropdown">
						<a class="dropdown-item" href="#"> <i
							class="mdi mdi-cached mr-2 text-success"></i> 个人资料
						</a>
						<div class="dropdown-divider"></div>
						<a class="dropdown-item" href="/ssm_grimm/ajax/destroy.mvc"> <i
							class="mdi mdi-logout mr-2 text-primary"></i> 注销
						</a>
						
					</div></li>
				<li class="nav-item d-none d-lg-block full-screen-link"><a
					class="nav-link"> <i class="mdi mdi-fullscreen"
						id="fullscreen-button"></i>
				</a></li>
				<li class="nav-item dropdown"><a
					class="nav-link count-indicator dropdown-toggle"
					id="messageDropdown" href="#" data-toggle="dropdown"
					aria-expanded="false"> <i class="mdi mdi-email-outline"></i> <span
						class="count-symbol bg-warning" id="receiveTishi"
						style="display: none"></span>
				</a>
					<div
						class="dropdown-menu dropdown-menu-right navbar-dropdown preview-list"
						aria-labelledby="messageDropdown" id="who_send">
						<h6 class="p-3 mb-0 text-center">
							<h7 style="color:blue" id="messageNum">0</h7>
							条信息
						</h6>
						<div class="dropdown-divider"></div>
						<div class="dropdown-item preview-item message" id="message0"
						  onclick="turnChat(this);" style="display: none">
							<p style="display: none;">dddddd </p>
							<div class="preview-thumbnail">
								<img src="../personal_page/images/faces/face4.jpg" alt="image"
									class="profile-pic">
							</div>
							<div
								class="preview-item-content d-flex align-items-start flex-column justify-content-center">
								<h6 class="preview-subject ellipsis mb-1 font-weight-normal">
									<h8></h8>
									给你发了信息
								</h6>
								<h5 class="text-gray mb-0">时间</h5>
							</div>
						</div>



					</div></li>
				<li class="nav-item dropdown"><a
					class="nav-link count-indicator dropdown-toggle"
					id="notificationDropdown" href="#" data-toggle="dropdown"> <i
						class="mdi mdi-bell-outline"></i> <span
						class="count-symbol bg-danger" style="display: none"></span>
				</a>
					<div
						class="dropdown-menu dropdown-menu-right navbar-dropdown preview-list"
						aria-labelledby="notificationDropdown" id="mansend">
						<h6 class="p-3 mb-0">系统消息</h6>
						
						<a class="dropdown-item preview-item" id="manfalt0" style="display: none">
							<div class="preview-thumbnail">
								<div class="preview-icon bg-success">
									<i class="mdi mdi-calendar"></i>
								</div>
							</div>
							<div
								class="preview-item-content d-flex align-items-start flex-column justify-content-center">
							
								<p class="text-gray ellipsis mb-0">Just a reminder that you
									have an event today</p>
							</div>
						</a>


					</div></li>
				<li class="nav-item nav-logout d-none d-lg-block"><a
					class="nav-link" href="/ssm_grimm/ajax/destroy.mvc"> <i class="mdi mdi-power">注销</i>

				</a></li>
				<li class="nav-item nav-settings d-none d-lg-block"><a
					class="nav-link" href="/ssm_grimm/login_by_password.jsp"> <i
						class="mdi mdi-format-line-spacing">切换账号</i>
				</a></li>
			</ul>
			<button
				class="navbar-toggler navbar-toggler-right d-lg-none align-self-center"
				type="button" data-toggle="offcanvas">
				<span class="mdi mdi-menu"></span>
			</button>
		</div>
		</nav>
		<!-- partial -->
		<div class="container-fluid page-body-wrapper" style="height: 100%">
			<!-- partial:partials/_sidebar.html -->
			<nav class="sidebar sidebar-offcanvas" id="sidebar">
			<ul class="nav">
				<li class="nav-item nav-profile"><a href="#" class="nav-link">
						<div class="nav-profile-image">
							<img src="../userPhoto/${userdetail.phone}.jpg" alt="默认 头像"
								onerror="this.src='../userPhoto/default.jpg'"> <span
								class="login-status online"></span>
							<!--change to offline or busy as needed-->
						</div>
						<div class="nav-profile-text d-flex flex-column">
							<span class="font-weight-bold mb-2">${userdetail.uName}</span> <span
								class="text-secondary text-small">Project Manager</span>
						</div> <i class="mdi mdi-bookmark-check text-success nav-profile-badge"></i>
				</a></li>
				<li class="nav-item"><a class="nav-link" href="#"> <span
						class="menu-title">个人资料修改</span> <i class="mdi mdi-home menu-icon"></i>
				</a></li>
				<li class="nav-item"><a class="nav-link" data-toggle="collapse"
					href="#ui-basic" aria-expanded="false" aria-controls="ui-basic">
						<span class="menu-title">论坛历史记录</span> <i class="menu-arrow"></i>
						<i class="mdi mdi-crosshairs-gps menu-icon"></i>
				</a>
					<div class="collapse" id="ui-basic">
						<ul class="nav flex-column sub-menu">
							<li class="nav-item"><a class="nav-link" href="/ssm_grimm/ajax/showPostingHistory.mvc">论坛发表历史</a></li>
							<li class="nav-item"><a class="nav-link"
								href="/ssm_grimm/ajax/showReviewDetail.mvc">交流历史</a></li>
						</ul>
					</div></li>
				<li class="nav-item"><a class="nav-link" href="#"> <span
						class="menu-title">发表数量百分比</span> <i
						class="mdi mdi-contacts menu-icon"></i>
				</a></li>



	<c:if test="${userdetail.ustate==1}">
						<li class="nav-item"><a class="nav-link" data-toggle="collapse"
					href="#general-pages" aria-expanded="false"
					aria-controls="general-pages"> <span class="menu-title">管理员权限</span>
						<i class="menu-arrow"></i> <i
						class="mdi mdi-medical-bag menu-icon"></i>
				</a>
					<div class="collapse" id="general-pages">
						<ul class="nav flex-column sub-menu">
							<li class="nav-item"><a class="nav-link" href="/ssm_grimm/ajax/getUserList.mvc">删用户</a></li>
							<li class="nav-item"><a class="nav-link" href="/ssm_grimm/ajax/showAllPosting.mvc">删帖</a></li>
							<li class="nav-item" onclick="managemessage();"><a class="nav-link" href="#">发送推送消息</a></li>

						</ul>
					</div></li>
					</c:if>
		

			</ul>
			</nav>
			<!-- partial -->
			<div class="main-panel" style="height: 100%">
				<div class="content-wrapper" style="height: 100%;">

					<div style="width: 100%; height: 100%; text-align: center"
						id="personalinfo">
						<div style="width: 100%; height: 15%; text-align: center"">
							<p style="float: left">用户：${userdetail.uName}</p>




							<!-- Table goes in the document BODY -->
							<table class="altrowstable" id="alternatecolor">
								<tr>
									<th>头像(点击修改)</th>
									<th><img onclick="getPhoto()" src="../userPhoto/${userdetail.phone}.jpg" alt="默认 头像"
								onerror="this.src='../userPhoto/default.jpg'" style="height: 10%;"></th>
								</tr>
								<tr>
									<td>姓名</td>
									<td><input type="text" id="name"
										placeholder="${userdetail.uName}" value="${userdetail.uName}"></td>
								</tr>
								<tr>
									<td>性别</td>

									<c:if test="${userdetail.ugender=='男'}">
										<td><label> <input type="radio" name="gender"
												checked="checked" value="男" class="a-radio"> <span
												class="b-radio"></span>男
										</label> <label> <input type="radio" name="gender" value="女"
												class="a-radio"> <span class="b-radio"></span>女
										</label></td>
									</c:if>
	                                 <c:if test="${userdetail.ugender!='男'}">
										<td><label> <input type="radio" name="gender"
											 value="男" class="a-radio"> <span
												class="b-radio"></span>男
										</label> <label> <input type="radio" name="gender" value="女"
												class="a-radio" checked="checked" > <span class="b-radio"></span>女
										</label></td>
									</c:if>
								</tr>
								</tr>
								<tr>
									<td>出生日期</td>
									<td><input type="date" id="age"></td>
								</tr>
								<tr>
									<td>修改手机号</td>
									<td><input type="text" id="phone" placeholder=""
										value="${userdetail.phone}"></td>
								</tr>
								<tr>
									<td style="color: red">联系人ID(不可修改)</td>
									<td>${userdetail.uconnect}</td>

								</tr>
								<tr>
									<td>操作</td>
									<td><input type="button" class="update-button"
										value="修改保存" style="color: skyblue" onclick="updateButton()"></td>
										
								</tr>
							</table>

						</div>






					</div>



					<div style="width: 100%; height: 100%; text-align: center; display:none"
						id="changephone">
					
						
						
							<!-- Table goes in the document BODY -->
							<table class="altrowstable" id="alternatecolor">
							<tr>
									
									<td><input type="text" id="newphone" placeholder="新手机号">
									
									</td><td><input type="text" id="code" placeholder="验证码">
									
									</td>

								</tr>
								<tr>
								
									<td><input type="button" class="update-button"
										value="获取验证码" id="phonecode"  style="color:skyblue" onclick="getnewphoneCode()"></td>
										<td><input type="button" class="update-button"
										value="提交" style="color:skyblue" onclick="commtinewPhoneUpdate()"></td>
								</tr>
							</table>
						
						
					</div>




					<div style="width: 100%; height: 100%; text-align: center; display:none"
						id="sendmessage">
					
						<textarea id="managementmessage" name="managementmessage" style="width:200px; height:100px"></textarea>
						<br> 
						<button value="发送给所有在线的用户" onclick="sendmessage();">发送给所有在线用户</button>
						
					</div>
					


					<div style="width: 100%; height: 100%; text-align: center;display:none"
						id="changephooto">

                           <iframe src="../uploadphoto.jsp" style="width: 100%;height: 100%   ;frameborder:no;scrolling : no"></iframe>

					</div>



				</div>

				<footer class="footer">
				<div
					class="d-sm-flex justify-content-center justify-content-sm-between">
					<span
						class="text-muted text-center text-sm-left d-block d-sm-inline-block">Copyright
						&copy;育婴门户</span>
				</div>
				</footer>
				<!-- partial -->
			</div>
			<!-- main-panel ends -->
		</div>
		<!-- page-body-wrapper ends -->
	</div>
	<!-- container-scroller -->

	

</body>

</html>
