<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%> 
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>注册</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta name="description" content="Free HTML5 Template by FreeHTML5.co" />
	<meta name="keywords" content="free html5, free template, free bootstrap, html5, css3, mobile first, responsive" />
	

  

	<meta property="og:title" content=""/>
	<meta property="og:image" content=""/>
	<meta property="og:url" content=""/>
	<meta property="og:site_name" content=""/>
	<meta property="og:description" content=""/>
	<meta name="twitter:title" content="" />
	<meta name="twitter:image" content="" />
	<meta name="twitter:url" content="" />
	<meta name="twitter:card" content="" />

	
	<link rel="shortcut icon" href="favicon.ico">


	
	<link rel="stylesheet" href="css/bootstrap.min.css">
	<link rel="stylesheet" href="css/registe_loin_forget_animate.css">
	<link rel="stylesheet" href="css/registe_login_forget.css">


	<script src="js/modernizr-2.6.2.min.js"></script>
	
	
	
	<script type="text/javascript">
	function codeButton(){
	
	
	
	var name,phone,password,code,repassword;
	name=document.getElementById("name").value;
   phone=document.getElementById("phone").value;
	 
	password=document.getElementById("password").value;
	repassword=document.getElementById("repassword").value;
	

	if(name==""){name="无名氏"};
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

	  $("#phone").attr("readonly","readonly");
		  
	   if(password==""){
		   alert("密码不能为空");
		   return ; 
	   }else{	 var regex = new RegExp('(?=.*[0-9])(?=.*[a-zA-Z])(?=.*[^a-zA-Z0-9]).{8,16}');
		
		if(!regex.test(password)){
			  alert("密码必须是8-16位字母数字特殊符号组合");
			  return; 
			
		}

		   if(repassword==""){
			   alert("请再次输入密码");
			   return ; 
		   }else{ var regex = new RegExp('(?=.*[0-9])(?=.*[a-zA-Z])(?=.*[^a-zA-Z0-9]).{8,16}');
			
			if(!regex.test(repassword)){
				  alert("密码必须是8-16位字母数字特殊符号组合");
				  return; 
				
			}
			   
			   if(password!=repassword){
				
				  
				   alert("两次密码不一致");
				   return ; 
			   }
			   
		   }
	   }
	
		
		 $.ajax({ 

			    data:{"phone":phone
			    },
			

			    type:"POST", 
			    async: false,

			    dataType: 'json',

			    url:"ajax/getRgistePhoneCode.mvc", 

			    success:function(data){ 
				  if(data.state==1){
					  /**用户已存在*/
					 
					alert("用户已被注册！");
					  
				  }  if(data.state==0){
					  /**验证码没有生成*/
					  alert("验证码未生成，后台报错");
					  
				  }  if(data.state==2){
					 
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

	
<script >
	
	      
	function commit (){
		var name,phone,password,code,repassword;
		name=document.getElementById("name").value;
		phone=document.getElementById("phone").value;
		password=document.getElementById("password").value;
		repassword=document.getElementById("repassword").value;
		code=document.getElementById("code").value;
	
		if(name==""){name="无名氏"};
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
		   }else{	 var regex = new RegExp('(?=.*[0-9])(?=.*[a-zA-Z])(?=.*[^a-zA-Z0-9]).{8,16}');
			
			if(!regex.test(password)){
				  alert("密码必须是8-16位字母数字特殊符号组合");
				  return; 
				
			}

			   if(repassword==""){
				   alert("请再次输入密码");
				   return ; 
			   }else{ var regex = new RegExp('(?=.*[0-9])(?=.*[a-zA-Z])(?=.*[^a-zA-Z0-9]).{8,16}');
				
				if(!regex.test(repassword)){
					  alert("密码必须是8-16位字母数字特殊符号组合");
					  return; 
					
				}
				   
				   if(password!=repassword){
					
					  
					   alert("两次密码不一致");
					   return ; 
				   }
				   
			   }
		   }
		   if(code==""){
			   alert("请输入验证码");
			   return ; 
		   }
		
		
	 $.ajax({ 

			    data:{"name":name,"phone":phone,"password":password ,
			  "code":code
			    },
			

			    type:"POST", 
			    async: false,

			    dataType: 'json',

			    url:"ajax/registe.mvc", 

			    success:function(data){ 
				  if(data.state==0){
					  /**注册成功*/
					  window.location.href="login_by_password.jsp";
					  
				  }  if(data.state==1){
					  /**注册失败（原因未知）*/
					  alert("该账号已被注册！");
					  
				  }  if(data.state==2){
					  /**验证码错误*/
					  alert("验证码错误");
				  }

	               
			    },

			     error:function(data){ 

			    	    alert("后台故障，请稍等");

			    }

			    });  
		
	}
	
	
	</script>
 <style type="text/css">

	#phonecode { 
		    border: 0;
		  width:50%;
		  float:left;
		    line-height: 40px; 
		
		    color: white;
		    background-color: #08c;
		    border-radius: 20px;
		    text-align: center;
		    text-decoration: none;
		}
		#code{width:50%;float: left}
	
	</style>

	</head>
	<body>
	<c:import url="template_navigator.jsp"></c:import>
		<div class="container">
			<div class="row">
				<div class="col-md-12 text-center">
					<ul class="menu">
						<li class="active"><a href="registe.jsp">注册界面</a></li>
						
					</ul>
				</div>
			</div>
			<div class="row">
				<div class="col-md-4 col-md-offset-4">
					

					<!-- Start Sign In Form -->
					<form action="#"  class="fh5co-form animate-box" data-animate-effect="fadeIn">
						<h2>注册界面</h2>
						<div class="form-group">
							<div class="alert alert-success" role="alert">请仔细填写信息</div>
						</div>
						<div class="form-group">
						
							<input type="text" class="form-control" name="name" id="name" placeholder="起一个昵称吧" autocomplete="off">
						</div>
				           <div class="form-group">
							<label for="phone" class="sr-only">手机号</label>
							<input type="text" class="form-control" id="phone" name="phone" placeholder="手机号" autocomplete="off">
						</div>
						<div class="form-group">
							<label for="password" class="sr-only">密码</label>
							<input type="password" class="form-control" id="password" name="password" placeholder="输入密码" autocomplete="off">
						</div>
					   
						<div class="form-group">
							<label for="re-password" class="sr-only">二次输入密码</label>
							<input type="password" class="form-control" id="repassword" name="repassword" placeholder="再次输入密码" autocomplete="off">
						</div>
				
						<div class="form-group">
							<label for="code" class="sr-only">输入验证码</label>
							<input type="text" class="form-control" id="code" name="code" placeholder="输入验证码" autocomplete="off">
						<!-- <img id="randImage"  onclick="refushcode();" title="换一张试试" name="randImage" src="code.jsp"> -->	
							<input type="button" class="form-control" id="phonecode" value="获取验证码" onclick="codeButton();">
						</div>
						<div class="form-group" >
							<p>已经有账号了吗? <a href="login_by_password.jsp">那去登陆吧</a></p>
						</div> 
			
						<div class="form-group" >
							<input type="button" value="注册" class="btn btn-primary" onclick="commit();">
						</div>
						
					</form>
					<!-- END Sign In Form -->

				</div>
			</div>
			<div class="row" style="padding-top: 60px; clear: both;">
				<div class="col-md-12 text-center"><p><small>&copy; 育婴门户网站</small></p></div>
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

