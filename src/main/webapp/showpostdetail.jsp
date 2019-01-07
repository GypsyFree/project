<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>帖子详情</title>
<style>
</style>

</head>
<body>
	<c:import url="template_navigator.jsp"></c:import>
	<div style="width:980px;height:40px;margin-left:auto;margin-right:auto;"></div>
	<div style="width:980px;margin-left:auto;margin-right:auto;"><!-- 本页内容主框 -->
		<div style="width:643px;border:0.5px solid grey;border-radius: 8px">
			<div style="width:643px;font-size:120%;border-bottom:0.5px solid grey;padding:4px;"> ${theam}</div><!-- 帖子主题 -->
			<div style="width:643px;margin:4px;item-margin:4px;">
					<div style="width:643px;"><!--发帖人、时间 -->
						<img class="img_icon" style="border-radius: 20px;width:40px;height:40px;float: left;margin:4px" 
							src="/ssm_grimm/userPhoto/${historyPostingRecord.phone}.jpg"
							onerror="this.src='/ssm_grimm/userPhoto/default.jpg'"/>
						<div style="color:grey;">
							${historyPostingRecord.user.uName}
						</div>
						
					</div>
					<div style="margin:4px">
						<c:set value="${fn:split(historyPostingRecord.content,'内容')}" var="str1" />

						<c:forEach items="${str1}" var="s" begin="0" end="2" varStatus="status">
						<c:if test="${status.index==0}">

						</c:if>
						<c:if test="${status.index==1}">${ s }  </c:if>

					</c:forEach>
					</div>
					
			</div>
		</div>
		<c:forEach items="${historyPostingRecord.reviewList}" var="reviewList">
			<div style="width:643px;height:40px;"></div>
			<div style="width:643px; border:0.5px solid grey;border-radius: 8px">
				<div style="float:left;">
					<img src="/ssm_grimm/userPhoto/${reviewList.sendPhone}.jpg"
						onerror="this.src='/ssm_grimm/userPhoto/default.jpg'"
						style="width: 40px; height: 40px;border-radius: 20px;margin:4px;">
					${reviewList.fromuser.uName}
				</div>
				<div style="float:right;margin:10px;"><fmt:formatDate value="${reviewList.time}"  pattern="yyyy-MM-dd HH:mm" ></fmt:formatDate></div>
				<div style="clear:both;margin:10px;">${reviewList.content}</div>
			</div>	
		</c:forEach>
	
	</div>
</body>
</html>