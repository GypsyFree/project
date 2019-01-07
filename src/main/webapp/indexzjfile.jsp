<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
<title>育婴门户网站</title>

<script src="/ssm_grimm/js/jquery.min.js"></script>
<script src="/ssm_grimm/js/slider.js"></script>

<!--回到顶点js-->
<script src="/ssm_grimm/js/back_top.js"></script>
<style>
.mcontainer {
	width: 1000px;
	min-width: 1000px;
	margin-left: auto;
	margin-right: auto;
}

.middle {
	background-color: #fff;
	border-bottom: 1px solid #ddd;
}

div {
	display: block;
}

.mcontainer:after {
	visibility: hidden;
	display: block;
	font-size: 0;
	content: " ";
	clear: both;
	height: 0;
}

.summary ul {
	text-align: center;
}

.summary ul li {
	padding-left: 40px;
	padding-right: 40px;
	display: inline-block;
}

.summary ul li p {
	font-size: 16px;
	color: #666;
	text-align: center;
}

.summary ul li p>span {
	font-size: 30px;
	color: #bb0000;
}

.id {
	font-size: 30px;
	color: #bb0000;
}

#footer {
	color:white;
	background-color: palevioletred;
	text-align: center;
	font-size: 15px;
	padding-top: 10px;
}
/*当对象内文本溢出时显示省略标记*/
table {
	table-layout: fixed; /* 只有定义了表格的布局算法为fixed，下面td的定义才能起作用。 */
}

td {
	width: 100%;
	word-break: keep-all; /* 不换行 */
	white-space: nowrap; /* 不换行 */
	overflow: hidden; /* 内容超出宽度时隐藏超出部分的内容 */
	text-overflow: ellipsis;
	/* 当对象内文本溢出时显示省略标记(...) ；需与overflow:hidden;一起使用。*/
}

* {
	margin: 0;
	padding: 0;
}

.flexslider {
	margin: 0px auto 20px;
	position: relative;
	width: 100%;
	height: 482px;
	overflow: hidden;
	zoom: 1;
	margin-left: 0
}

.flexslider .slides li {
	width: 100%;
	height: 100%;
}

.flex-direction-nav a {
	width: 70px;
	height: 70px;
	line-height: 99em;
	overflow: hidden;
	margin: -35px 0 0;
	display: block;
	background: url(/ssm_grimm/images/ad_ctr.png) no-repeat;
	position: absolute;
	top: 50%;
	z-index: 10;
	cursor: pointer;
	opacity: 0;
	filter: alpha(opacity = 0);
	-webkit-transition: all .3s ease;
	border-radius: 35px;
}

.flex-direction-nav .flex-next {
	background-position: 0 -70px;
	right: 0;
}

.flex-direction-nav .flex-prev {
	left: 0;
}

.flexslider:hover .flex-next {
	opacity: 0.8;
	filter: alpha(opacity = 25);
}

.flexslider:hover .flex-prev {
	opacity: 0.8;
	filter: alpha(opacity = 25);
}

.flexslider:hover .flex-next:hover, .flexslider:hover .flex-prev:hover {
	opacity: 1;
	filter: alpha(opacity = 50);
}

.flex-control-nav {
	width: 100%;
	position: absolute;
	bottom: 10px;
	text-align: center;
}

.flex-control-nav li {
	margin: 0 2px;
	display: inline-block;
	zoom: 1;
	*display: inline;
}

.flex-control-paging li a {
	background: url(/ssm_grimm/images/dot.png) no-repeat 0 -16px;
	display: block;
	height: 16px;
	overflow: hidden;
	text-indent: -99em;
	width: 16px;
	cursor: pointer;
}

.flex-control-paging li a.flex-active, .flex-control-paging li.active a
	{
	background-position: 0 0;
}

.flexslider .slides a img {
	width: 100%;
	height: 482px;
	display: block;
}

#banner_tabs {
	
}

.one {
 	width:20%;
 	color:black;
 	

}



</style>
</head>

<script type="text/javascript">
	$(function() {
		var bannerSlider = new Slider($('#banner_tabs'), {
			time : 5000,
			delay : 400,
			event : 'hover',
			auto : true,
			mode : 'fade',
			controller : $('#bannerCtrl'),
			activeControllerCls : 'active'
		});
		$('#banner_tabs .flex-prev').click(function() {
			bannerSlider.prev()
		});
		$('#banner_tabs .flex-next').click(function() {
			bannerSlider.next()
		});
	})
</script>
<body>

	<c:import url="template_navigator.jsp"></c:import>
	<div>
		<!-- 导航栏下的body大框 -->

	</div>





<div id="banner_tabs" class="flexslider" style="margin-left:184px;width:600px;float:left">

	<ul class="slides">
		<li>
			<a title="" target="_blank" href="#">
				<img width="1920" height="482" alt="" style="background: url(/ssm_grimm/images/banner1.jpg) no-repeat center;" src="/ssm_grimm/images/alpha.png">
			</a>
		</li>
		<li>
			<a title="" href="#">
				<img width="1920" height="482" alt="" style="background: url(/ssm_grimm/images/banner2.jpg) no-repeat center;" src="/ssm_grimm/images/alpha.png">
			</a>
		</li>
		<li>
			<a title="" href="#">
				<img width="1920" height="482" alt="" style="background: url(/ssm_grimm/images/banner3.jpg) no-repeat center;" src="/ssm_grimm/images/alpha.png">
			</a>
		</li>
	</ul>
	<ul class="flex-direction-nav">
		<li><a class="flex-prev" href="javascript:;">Previous</a></li>
		<li><a class="flex-next" href="javascript:;">Next</a></li>
	</ul>
	<ol id="bannerCtrl" class="flex-control-nav flex-control-paging">
		<li><a>1</a></li>
		<li><a>2</a></li>
		<li><a>2</a></li>
	</ol>
</div>

<div  style="width:400px; background-color:yellow;height:464px;margin: 18px auto 20px 10px; float:left; ">

<div
			style="background-color: #efefef; width: auto; text-align: center; height: 80px">
			<h1 style="font-weight: inherit; color: #adadad; padding-top: 20px">——最新资讯——</h1>
			
					<table class="table table-striped table-bordered table-hover"
			border-bottom="10px" id="dataTables-example"
			style="width: 100%; height: 100%; line-height: 50px;">
		   <br>
		      <br>
			<tbody style="font-weight: inherit; text-align: center;">

				<c:forEach items="${newhis}" var="newhiss">

					<tr class="odd gradeX">
						<td>
							
					<a href="/ssm_grimm/ajax/showPostDetail.mvc?postid=${newhiss.id}">${newhiss.content}</a>	

						
						</td>
						
					</tr>
					   <br>


				</c:forEach>

			</tbody>
		</table>

		</div>

</div>





	<!--中间显示项目总数-->
	<div class="middle"
		style="background-color: #fff; border-bottom: 1px solid #ddd;">
		<div class="mcontainer"
			style="width: 1000px; min-width: 1000px; margin-left: auto; margin-right: auto;">
			<div class="summary"
				style="padding-top: 32px; padding-bottom: 32px; background-color: #fff;">
				<ul>
					<li>
						<p>发布话题总数</p>
						<p>
							<span id="#">${numtotal}</span>次
						</p>
					</li>

					<li>
						<p>一共评论</p>
						<p>
							<span id="#">${peopletotal}</span>次
						</p>
					</li>

					<li>
						<p>你有</p>
						<p>
							<span id="#">${reviewnum}</span>个论坛好友
						</p>
					</li>

		
				</ul>
			</div>
		</div>
	</div>


	<!--项目具体分类-->
	<div id="detail_pro"
		style="margin-right: auto; margin-left: auto; width: 980px; background-color: #efefef">
		
		<div
			style="background-color: #efefef; width: auto; text-align: center; height: 80px">
			<h1 style="font-weight: inherit; color: #adadad; padding-top: 20px">——热门文章——</h1>
		</div>

		<table class="table table-striped table-bordered table-hover"
			border-bottom="10px" id="dataTables-example"
			style="width: 100%; height: 100%; line-height: 50px;">
			<thead style="font-weight: inherit; color: #adadad;">
				<tr>

					<th>ID</th>
					<th>内容</th>


					<th>评论数</th>



				</tr>
			</thead>
			<tbody style="font-weight: inherit; text-align: center;">

				<c:forEach items="${hotpostlist}" var="hostinf">

					<tr class="odd gradeX">
						<td>
							
						${hostinf.id}

						
						</td>
						<td id="testDIV"><a href="/ssm_grimm/ajax/showPostDetail.mvc?postid=${hostinf.id}"
							class="postid${hostinf.id} postid">
							${hostinf.content}
						</a></td>
						

						<td>${hostinf.num}</td>
					</tr>


				</c:forEach>

			</tbody>
		</table>


	</div>



<br/>
<br/><br/>


<div id="detail_pro"
		style="margin-right: auto; margin-left: auto; width: 980px; background-color: #efefef">
		

		<table class="table table-striped table-bordered table-hover"
			border-bottom="10px" id="dataTables-example"
			style="width: 100%; height: 100%; line-height: 50px;">
			
			<tbody style="font-weight: inherit; text-align: center;">
                 <tr>
                   <td  class="one" > 备孕</td>
                    <td class="tw0" style="text-align: left"><a href="/ssm_grimm/wen.jsp">优生备孕</a>&nbsp &nbsp
                                    <a href="/ssm_grimm/wen.jsp">疑难备孕</a>&nbsp &nbsp
                                    <a href="/ssm_grimm/wen.jsp">高龄备孕帮</a>&nbsp &nbsp
                                    <a href="/ssm_grimm/wen.jsp">人授&试管帮</a>&nbsp &nbsp
                                    <a href="/ssm_grimm/wen.jsp">输卵管问题帮</a></td>
                 </tr>
                 
                  <tr>
                   <td  class="one" > 妈妈兴趣</td>
                    <td class="tw0" style="text-align: left"><a href="/ssm_grimm/wen.jsp">妈妈的私房菜</a>&nbsp &nbsp
                                    <a href="/ssm_grimm/wen.jsp">减肥瘦身帮</a>&nbsp &nbsp
                                    <a href="/ssm_grimm/wen.jsp">爱美容爱护肤</a>&nbsp &nbsp
                                    <a href="/ssm_grimm/wen.jsp">辅食DIY</a>&nbsp &nbsp
                                    <a href="/ssm_grimm/wen.jsp">妈妈的私房菜</a></herf>
                                    <a href="/ssm_grimm/wen.jsp">减肥瘦身帮</a>&nbsp &nbsp
                                    <a href="/ssm_grimm/wen.jsp">全球好货精选</a>&nbsp &nbsp
                                    <a href="/ssm_grimm/wen.jsp">达人学院</a>&nbsp &nbsp
                                    </br>
                                    <a href="/ssm_grimm/wen.jsp">娱乐八卦ying</a></td>
                 </tr>
                  <tr>
                   <td  class="one" > 宝宝兴趣</td>
                    <td class="tw0" style="text-align: left"><a href="/ssm_grimm/wen.jsp">家庭教育</a>&nbsp &nbsp
                                    <a href="/ssm_grimm/wen.jsp">宝宝秀场</a>&nbsp &nbsp
                                    <a href="/ssm_grimm/wen.jsp">小学生天地</a>&nbsp &nbsp
                                    <a href="/ssm_grimm/wen.jsp">幼儿园的故事</a>&nbsp &nbsp
                                    <a href="/ssm_grimm/wen.jsp">蒙台学习帮</a></td>
                 </tr>
                  <tr>
                   <td  class="one" > 特别关注</td>
                    <td class="tw0" style="text-align: left"><a href="/ssm_grimm/wen.jsp">90后妈妈</a>&nbsp &nbsp
                                    <a href="/ssm_grimm/wen.jsp">小夫妻</a>&nbsp &nbsp
                                    <a href="/ssm_grimm/wen.jsp">婆婆妈妈</a>&nbsp &nbsp
                                    <a href="/ssm_grimm/wen.jsp">自然孕育帮</a>&nbsp &nbsp
                                    <a href="/ssm_grimm/wen.jsp">智慧宝宝帮</a>&nbsp &nbsp
                                    <a href="/ssm_grimm/wen.jsp">专家在线</a>&nbsp &nbsp
                                    <a href="/ssm_grimm/wen.jsp">过敏宝宝</a>&nbsp &nbsp
                                    <a href="/ssm_grimm/wen.jsp">职场妈妈</a>&nbsp &nbsp
                                    <a href="/ssm_grimm/wen.jsp">母乳喂养</a>&nbsp &nbsp</br>
                                     <a href="/ssm_grimm/wen.jsp">婆婆妈妈</a>&nbsp &nbsp
                                    <a href="/ssm_grimm/wen.jsp">自然孕育帮</a>&nbsp &nbsp
                                    <a href="/ssm_grimm/wen.jsp">智慧宝宝帮</a>&nbsp &nbsp
                                    <a href="/ssm_grimm/wen.jsp">专家在线</a>&nbsp &nbsp
                                    <a href="/ssm_grimm/wen.jsp">过敏宝宝</a>&nbsp &nbsp
                                    <a href="/ssm_grimm/wen.jsp">专家在线</a>&nbsp &nbsp
                                    <a href="/ssm_grimm/wen.jsp">单亲妈妈</a>&nbsp &nbsp
                                    <a href="/ssm_grimm/wen.jsp">自然孕育帮</a>&nbsp &nbsp
                                    <a href="/ssm_grimm/wen.jsp">智慧宝宝帮</a>&nbsp &nbsp</br>
                                    <a href="/ssm_grimm/wen.jsp">宝宝爱早教</a></td>
                 </tr>
                  <tr>
                   <td  class="one" > 备孕</td>
                    <td class="tw0" style="text-align: left"><a href="/ssm_grimm/wen.jsp">优生备孕</a>&nbsp &nbsp
                                    <a href="/ssm_grimm/wen.jsp">疑难备孕</a>&nbsp &nbsp
                                    <a href="/ssm_grimm/wen.jsp">高龄备孕帮</a>&nbsp &nbsp
                                    <a href="/ssm_grimm/wen.jsp">人授&试管帮</a>&nbsp &nbsp
                                    <a href="/ssm_grimm/wen.jsp">输卵管问题帮</a></td>
                 </tr>
                  
                   
                 
				

			</tbody>
		</table>


	</div>


	<br />
	<br />
	<br />

	<div id="footer"   style="margin-right: auto; margin-left: auto; width: 980px">
		<div>
			<span>Copyright © 2018-2019 All Rights Reserved 育婴论坛 版权所有 </span> <br />
			<br /> <span id="wz"></span> <br /> <span>xxxxxxxxx</span> <br /> <br />
			<span>所制作</span> <br /> <br />
		</div>
		<!--回到顶部-->
	</div>
	<div id="back_top"
		style="position: fixed; width: 50px; height: 50px; bottom: 20px; right: 10px;">
		<a href="#header"> <img src="/ssm_grimm/images/back_top.png" alt=""
			style="width: 50px; height: 50px;">
		</a>
	</div>

	

</body>
</html>