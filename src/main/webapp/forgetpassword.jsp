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

		
	<link rel="stylesheet" href="css/bootstrap.min.css">
	<link rel="stylesheet" href="css/registe_loin_forget_animate.css">
	<link rel="stylesheet" href="css/registe_login_forget.css">
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
	<!-- Modernizr JS -->

	<!-- FOR IE9 below -->
	<!--[if lt IE 9]>
	<script src="js/respond.min.js"></script>
	<![endif]-->

	<script type="text/javascript">
	function codeButton(){
	
	
	
	var phone=document.getElementById("phone").value;
	
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

	    $.ajax({ 

			    data:{"phone":phone
			    },
			

			    type:"POST", 
			    async: false,

			    dataType: 'json',

			    url:"ajax/getLoginPhoneCode.mvc", 

			    success:function(data){ 
				  if(data.state==1){
					  /**用户未注册*/
					 
					alert("用户尚未注册！");
					  
				  }  if(data.state==0){
					  /**验证码没有生成*/
					  alert("验证码未生成，后台报错");
					  
				  }  if(data.state==2){
					  
					  var phone = $("#phone");
					  var code = $("#phonecode");
					    code.attr("disabled","disabled");
					    phone.attr("readonly","readonly");
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
		var	phone=document.getElementById("phone").value;
		
		var	code=document.getElementById("code").value;
	
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

		
			
			   if(code==""){
				   alert("请输入验证码");
				   return ; 
			   }
			
			
		 $.ajax({ 

				    data:{"phone":phone ,
				  "code":code
				    },
				

				    type:"POST", 
				    async: false,

				    dataType: 'json',

	  url:"ajax/login_by_message.mvc", 
				    

				    success:function(data){ 
					  if(data.state==0){
					
						 alert("该账号未注册");
						  
					  }  if(data.state==1){
						 
						  alert("验证码错误");
						  
					  }  if(data.state==2){
						
						$("#formmima").attr("action", "/ssm_grimm/ajax/changePassword.mvc").submit();	
						  
						  
					  }if(data.state==3){
						
						  alert("你的账号已被管理员注销");
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
						<li><a href="#">找回密码</a></li>
						
					
					</ul>
				</div>
			</div>
       
			<div class="row">
				<div class="col-md-4 col-md-offset-4">
					

					<!-- Start Sign In Form -->
					<form action="" class="fh5co-form animate-box" data-animate-effect="fadeIn" id="formmima" method="post">
						<h2>重置密码</h2>
						<div class="form-group">
							<label for="phone" class="sr-only">手机号</label>
							<input type="text" class="form-control" id="phone" placeholder="手机号" autocomplete="off" name="phone">
						</div>
						<div class="form-group">
							<label for="password" class="sr-only">验证码</label>
							<input type="text" class="form-control" id="code" placeholder="验证码" autocomplete="off" style="width: 50%;float: left;">
							<input type="button" class="form-control" id="phonecode" value="获取验证码" onclick="codeButton(); "style="width: 50%;float: left;">
						</div>
				
						<div class="form-group">
							<p>没有账号?<a href="/ssm_grimm/register.jsp">注册</a></p>
						</div>
						<div class="form-group">
							<input type="button" value="提交" class="btn btn-primary" onclick="commit();">
						</div>
					</form>
					<!-- END Sign In Form -->

				</div>
			</div>
			<div class="row" style="padding-top: 60px; clear: both;">
				<div class="col-md-12 text-center"><p><small>&copy; 育婴之家</small></p></div>
			</div>
		</div>
	



	</body>
</html>

