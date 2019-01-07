<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<meta http-equiv="refresh" content="5;URL=/ssm_grimm/ajax/index.mvc">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
	<!-- jQuery -->
<script src="/ssm_grimm/js/jquery.min.js" type="text/javascript"></script>

<script type="text/javascript">

window.onload=function(){
	var code = $("#timee");

	var time =5;
	var set=setInterval(function(){
	code.text("("+--time+")秒后跳转页面");
	}, 1000);
	setTimeout(function(){

	clearInterval(set);
	}, 5000);
	}

</script>
<style>
     #progress{
            width: 50%;
            height: 30px;
            border:1px solid #ccc;
            border-radius: 15px;
            margin: 50px 0 0 100px;
            overflow: hidden;
            box-shadow: 0 0 5px 0px #ddd inset;
        }
        #progress span {
            display: inline-block;
            width: 100%;
            height: 100%;
            background: #2989d8; /* Old browsers */
            background: -moz-linear-gradient(45deg, #2989d8 33%, #7db9e8 34%, #7db9e8 59%, #2989d8 60%); /* FF3.6+ */
            background: -webkit-gradient(linear, left bottom, right top, color-stop(33%,#2989d8), color-stop(34%,#7db9e8), color-stop(59%,#7db9e8), color-stop(60%,#2989d8)); /* Chrome,Safari4+ */
            background: -webkit-linear-gradient(45deg, #2989d8 33%,#7db9e8 34%,#7db9e8 59%,#2989d8 60%); /* Chrome10+,Safari5.1+ */
            background: -o-linear-gradient(45deg, #2989d8 33%,#7db9e8 34%,#7db9e8 59%,#2989d8 60%); /* Opera 11.10+ */
            background: -ms-linear-gradient(45deg, #2989d8 33%,#7db9e8 34%,#7db9e8 59%,#2989d8 60%); /* IE10+ */
            background: linear-gradient(45deg, #2989d8 33%,#7db9e8 34%,#7db9e8 59%,#2989d8 60%); /* W3C */
            filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#2989d8', endColorstr='#2989d8',GradientType=1 ); /* IE6-9 fallback on horizontal gradient */
            background-size: 60px 30px;
            text-align: center;
            color:#fff;
            -webkit-animation:load 5s ease-in;
        }
        @-webkit-keyframes load{
            0%{
                width: 0%;
            }
            100%{
                width:100%;
            }
        }
</style>
</head>
<body style="text-align: center">



<div id="timee"></div>
<div id="progress" style="text-align: center;margin: 20% auto ">
      <span></span>
</div>
</body>
</html>