<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>
#a_designation { /*网站名称*/
	color: darkgrey;
	font-size: 200%;
}

a {
	text-decoration: none;
}

.a_basic {
	color: #222;
	font-size: 14px;
	font-family: 微软雅黑, 宋体, sans-serif, arial, 'Helvetica Neue', Helvetica;
	margin-right: 28px;
}

.a_basic:hover {
	color: palevioletred;
}

.td_menu a {
	text-align: center;
	display: block;
	width: 94px;
	font-size: 16px;
	font-family: 微软雅黑, 宋体, sans-serif, arial, 'Helvetica Neue', Helvetica;
	color: white;
	padding-top: 3px;
	padding-bottom: 3px;
	margin-bottom: 5px;
	border-radius: 11px;
}

.td_menu a:hover {
	color: palevioletred;
	background-color: white;
}

.td_menu {
	width: 94px;
	height: 46px;
}
</style>
</head>
<body>
	<div id="header"
		style="margin-right: auto; margin-left: auto; width: 980px">
		<!--整个头部框-->
		<div style="width: 980px; height: 80px">
			<!--头部上框-->
			<div style="float: left; margin-top: 20px; height: 40px;">
				<a id="a_designation" href="index.mvc">育婴</a>
				<!--网站名称-->
			</div>
			<table style="float: right">
				<tr style="height: 15px; margin-top: 30px; display: block;">

					<c:if test="${sessionScope.userphone!=null}">
						<td><a class="a_basic" href="#">${sessionScope.userphone}</a></td>
						<td><a class="a_basic" href="/ssm_grimm/ajax/turn_personal.mvc">个人中心</a></td>
						<td><a class="a_basic" href="/ssm_grimm/ajax/destroy.mvc">注销</a><td>
						</td>
					</c:if>




					<c:if test="${sessionScope.userphone==null}">
					
						<td><a class="a_basic" href="/ssm_grimm/register.jsp">注册</a></td>
						<td><a class="a_basic" href="/ssm_grimm/login_by_password.jsp">登录</a>
					</c:if>



				</tr>
			</table>
		</div>
		<div style="width: 980px; height: 46px; background: palevioletred">
			<!--头部下框-->
			<table>
				<tr style="display: block; height: 46px; margin-left: 15px;">
					<td class="td_menu"><a class="a_menu"
						href="/ssm_grimm/ajax/index.mvc">首页</a></td>

					<td class="td_menu"><a class="a_menu" href="/ssm_grimm/ajax/showPostCenter.mvc">帖子中心</a></td>
							<c:if test="${sessionScope.userphone!=null}">
				<td class="td_menu"><a class="a_menu" href="/ssm_grimm/publish.jsp">发帖子</a></td>
					<td class="td_menu"><a class="a_menu" href="/ssm_grimm/ajax/showPostingHistory.mvc">我的帖子</a></td>
						</td>
					</c:if>
					

				</tr>
			</table>
		</div>
	</div>

</body>
</html>