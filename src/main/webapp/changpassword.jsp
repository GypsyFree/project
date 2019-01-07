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

		
	<link rel="stylesheet" href="/ssm_grimm/css/bootstrap.min.css">
	<link rel="stylesheet" href="/ssm_grimm/css/registe_loin_forget_animate.css">
	<link rel="stylesheet" href="/ssm_grimm/css/registe_login_forget.css">
	<!-- jQuery -->
	<script src="/ssm_grimm/js/jquery.min.js"></script>
	<!-- Bootstrap -->
	<script src="/ssm_grimm/js/bootstrap.min.js"></script>
	<!-- Placeholder -->
	<script src="/ssm_grimm/js/jquery.placeholder.min.js"></script>
	<!-- Waypoints -->
	<script src="/ssm_grimm/js/jquery.waypoints.min.js"></script>
	<!-- Main JS -->
	<script src="/ssm_grimm/js/main.js"></script>
	<!-- Modernizr JS -->

	<!-- FOR IE9 below -->
	<!--[if lt IE 9]>
	<script src="js/respond.min.js"></script>
	<![endif]-->

	

	
<script >
	
	      
	function commit (){
	
		
		var	pass1=document.getElementById("pass1").value;
		var	pass2=document.getElementById("pass2").value;

		
		  if(pass1==""){
			   alert("密码不能为空");
			   return ; 
		   }else{
			   
			   var regex = new RegExp('(?=.*[0-9])(?=.*[a-zA-Z])(?=.*[^a-zA-Z0-9]).{8,16}');
			
			if(!regex.test(pass1)){
				  alert("密码必须是8-16位字母数字特殊符号组合");
				  return; 
				
			}

		   }  if(pass2==""){
			   alert("密码不能为空");
			   return ; 
		   }else{
			   
			   var regex = new RegExp('(?=.*[0-9])(?=.*[a-zA-Z])(?=.*[^a-zA-Z0-9]).{8,16}');
			
			if(!regex.test(pass2)){
				  alert("密码必须是8-16位字母数字特殊符号组合");
				  return; 
				
			}

		   }
		   if(pass1!=pass2){
			   
			   alert("两次不相等");
		   }
		  
			
		 $.ajax({ 

				    data:{"pass2":pass2
				  
				    },
				

				    type:"POST", 
				    async: false,

				    dataType: 'json',

	             url:"/ssm_grimm/ajax/updatepassword.mvc", 
				    

				    success:function(data){ 
				    	if(data.state==0){
				    		window.location.href="/ssm_grimm/ajax/index.mvc";
				    		
				    	}else{
				    		
				    		alert("更新失败，请稍后再试");
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
					<form action="#" class="fh5co-form animate-box" data-animate-effect="fadeIn" id="formmima">
						<h2>重置密码</h2>
						<div class="form-group">
							<label for="phone" class="sr-only">密码</label>
							<input type="password" class="form-control" id="pass1" placeholder="新密码" autocomplete="off" name="phone">
						</div>
				         	<div class="form-group">
							<label for="phone" class="sr-only">密码</label>
							<input type="password" class="form-control" id="pass2" placeholder="再次输入" autocomplete="off" name="phone">
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

