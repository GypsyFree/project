<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>登录</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta name="description" content="Free HTML5 Template by FreeHTML5.co" />
	<meta name="keywords" content="free html5, free template, free bootstrap, html5, css3, mobile first, responsive" />
	

  

  	<!-- Facebook and Twitter integration -->
	<meta property="og:title" content=""/>
	<meta property="og:image" content=""/>
	<meta property="og:url" content=""/>
	<meta property="og:site_name" content=""/>
	<meta property="og:description" content=""/>
	<meta name="twitter:title" content="" />
	<meta name="twitter:image" content="" />
	<meta name="twitter:url" content="" />
	<meta name="twitter:card" content="" />

	<!-- Place favicon.ico and apple-touch-icon.png in the root directory -->
	<link rel="shortcut icon" href="favicon.ico">

	<link href='https://fonts.googleapis.com/css?family=Open+Sans:400,700,300' rel='stylesheet' type='text/css'>
	
	<link rel="stylesheet" href="css/bootstrap.min.css">
	<link rel="stylesheet" href="css/registe_loin_forget_animate.css">
	<link rel="stylesheet" href="css/registe_login_forget.css">




	<!-- FOR IE9 below -->
	<!--[if lt IE 9]>
	<script src="js/respond.min.js"></script>
	<![endif]-->

	</head>
<body>
<c:import url="template_navigator.jsp"></c:import>
<script >
	

	function commit (){
		var phone,password,state,box;
	
		phone=document.getElementById("phone").value;
		password=document.getElementById("password").value;
	
	box=document.getElementById("remember");
	if(box.checked){
		state=0;
		//允许记住密码
		
	}else{state=1;	//不允许记住密码
	}
		
		if(phone==""){alert("手机号不能为空");
		return;
		}
		 if(phone==""){
		    	alert("手机号不能为空");
		    	return ; 

		    }else{
		    	
		    	  var reg = /^1[3|4|5|7|8][0-9]{9}$/; //验证规则
		    	  if(reg.test(phone)==false){
		    		  alert("手机号格式不正确");
		    		  return ; 
		    	  } 
		    	  }

	
			  
		   if(password==""){
			   alert("密码不能为空");
			   return ; 
		   }else{
			   
			   var regex = new RegExp('(?=.*[0-9])(?=.*[a-zA-Z])(?=.*[^a-zA-Z0-9]).{8,16}');
			
			if(!regex.test(password)){
				  alert("密码必须是8-16位字母数字特殊符号组合");
				  return; 
				
			}

			 
			
				   
			   }
		  
	
		
		
	 $.ajax({ 

			    data:{"phone":phone,"password":password ,
			  "state":state
			    },
			

			    type:"POST", 
			    async: false,

			    dataType: 'json',

			    url:"ajax/login_by_password.mvc", 
			    

			    success:function(data){ 
				  if(data.state==0){
				
					 alert("该账号未注册");
					  
				  }  if(data.state==1){
					 
					  alert("密码错误");
					  
				  }  if(data.state==2){
					
				     window.location.href="/ssm_grimm/ajax/index.mvc";
				  } if(data.state==3){
					
					  alert("你账号已被管理员注销");
				  }

	               
			    },

			     error:function(data){ 

			    	    alert("后台故障，请稍等");

			    }

			    });  
		
	}
	
	
	</script>


		<div class="container">
			<div class="row">
				<div class="col-md-12 text-center">
					<ul class="menu">
						<li "><a href="/ssm_grimm/login_by_password.jsp">账户密码登录</a></li>
						<li class="active"><a href="/ssm_grimm/login_by_message.jsp">短信验证登录</a></li>
						
					</ul>
				</div>
			</div>
           
			<div class="row">
				<div class="col-md-4 col-md-offset-4">
					

					<!-- Start Sign In Form -->
					<form action="#" class="fh5co-form animate-box" data-animate-effect="fadeIn">
						<h2>登录</h2>
						<div class="form-group">
							<label for="phone" class="sr-only">账户</label>
							<input type="text" class="form-control" id="phone" placeholder="手机号" autocomplete="off">
						</div>
						<div class="form-group">
							<label for="password" class="sr-only">密码</label>
							<input type="password" class="form-control" id="password" placeholder="请输入密码" autocomplete="off">
						</div>
						<div class="form-group">
							<label for="remember"><input type="checkbox" id="remember" checked value="0" >记住本次登录</label>
						</div>
						<div class="form-group">
							<p>没有账号? <a href="register.jsp">注册</a> | <a href="/ssm_grimm/forgetpassword.jsp">忘记密码？</a></p>
						</div>
						<div class="form-group">
							<input type="button" value="登录" class="btn btn-primary" onclick="commit()">
						</div>
					</form>
					<!-- END Sign In Form -->

				</div>
			</div>
			<div class="row" style="padding-top: 60px; clear: both;">
				<div class="col-md-12 text-center"><p><small>&copy; 育婴门户</small></p></div>
			</div>
		</div>
	
	<!-- jQuery -->
	<script src="js/jquery.min.js"></script>
	<!-- Bootstrap -->
	<script src="js/bootstrap.min.js"></script>
	<!-- Placeholder -->
	<script src="js/jquery.placeholder.min.js"></script>
	<!-- Waypoints -->
	<script src="js/jquery.waypoints.min.js"></script>
	<!-- Main JS -->
	<script src="js/main.js"></script>


	</body>
</html>