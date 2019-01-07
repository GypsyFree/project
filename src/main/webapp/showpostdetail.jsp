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

<link rel="stylesheet" type="text/css" href="/ssm_grimm/a_data/dmaku.css">
<script src="/ssm_grimm/js/jquery.min.js"></script>
<script type="text/javascript" src="/ssm_grimm/js/modernizr.js"></script>
<script type="text/javascript" src="/ssm_grimm/js/jquery.min.js"></script>

	
	
	
	
	
<script type="text/javascript">

function showreviewbox(){
	$("#reviewlistrstst").attr("style","display:none");
	$("#reviewbox").show();
	
	
};


function  reviewpeople(dd,phone){
	var content=$(".message").text();
	if(content==""){
		
		alert("您的评论内容为空=！");
		return;
	}
	$.ajax({

		data : {
			"content" : content,
			"id" : dd,
			"phone":phone
		},

		type : "POST",
		async : false,

		dataType : 'json',

		url : "/ssm_grimm/ajax/insertReiew.mvc",

		success : function(data) {
			if(data.state==0){
				
				window.location.href="/ssm_grimm/ajax/showPostDetail.mvc?postid="+dd;
				
			}
			
			

		},

		error : function(data) {

		}

	});

	
	
	
	
};


</script>

</head>
<body>
	<c:import url="template_navigator.jsp"></c:import>
	<div style="width:980px;height:40px;margin-left:auto;margin-right:auto;"></div>
	<div style="width:980px;margin-left:auto;margin-right:auto;"><!-- 本页内容主框 -->
		<div style="width:643px;border:0.5px solid #666;border-radius: 8px">
			<div style="width:643px;font-size:120%;border-bottom:0.5px solid grey;padding:4px;"> ${theam}</div><!-- 帖子主题 -->
			<div style="width:643px;margin:4px;item-margin:4px;">
					<div style="width:643px;"><!--发帖人、时间 -->

			<a  href="/ssm_grimm/ajax/turnChat.mvc?whosendu=${historyPostingRecord.phone}">				<img class="img_icon" style="border-radius: 20px;width:40px;height:40px;float: left;margin:4px" 
							src="/ssm_grimm/userPhoto/${historyPostingRecord.phone}.jpg"
							onerror="this.src='/ssm_grimm/userPhoto/default.jpg'"/></a>

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

					<div onclick="showreviewbox();">  <a href="#" > 评论</a></div>
			</div>
		</div>
		
		<div id="reviewlistrstst">
		
		<c:forEach items="${historyPostingRecord.reviewList}" var="reviewList">
			<div style="width:643px;height:40px;"></div>
			<div style="width:643px; border:0.5px solid grey;border-radius: 8px">
				<div style="float:left;">
					<a  href="/ssm_grimm/ajax/turnChat.mvc?whosendu=${reviewList.sendPhone}">	<img src="/ssm_grimm/userPhoto/${reviewList.sendPhone}.jpg"
						onerror="this.src='/ssm_grimm/userPhoto/default.jpg'"
						style="width: 40px; height: 40px;border-radius: 20px;margin:4px;"></a>
					${reviewList.fromuser.uName}
				</div>
				<div style="float:right;margin:10px;"><fmt:formatDate value="${reviewList.time}"  pattern="yyyy-MM-dd HH:mm" ></fmt:formatDate></div>
				<div style="clear:both;margin:10px;">${reviewList.content}</div>
			</div>	
		</c:forEach>
	</div>
	<div style="display:none" id="reviewbox" >
	
	
	
	
	
	
	
	
	<div id="qq">
	<p>有什么话想跟他说?</p>
	<div class="message" contenteditable="true"></div>

	<div class="But">
		<img src="/ssm_grimm/a_data/bba_thumb.gif" class="bq">
		<span class="submit" onclick="reviewpeople(${historyPostingRecord.id},${historyPostingRecord.phone});">发表</span>
		<!--face begin-->
		<div class="face" style="">
			<ul>
				<li><img src="/ssm_grimm/a_data/zz2_thumb.gif" title="[织]"></li>
				<li><img src="/ssm_grimm/a_data/horse2_thumb.gif" title="神马]"></li>
				<li><img src="/ssm_grimm/a_data/fuyun_thumb.gif" title="[浮云]"></li>
				<li><img src="/ssm_grimm/a_data/geili_thumb.gif" title="[给力]"></li>
				<li><img src="/ssm_grimm/a_data/wg_thumb.gif" title="[围观]"></li>
				<li><img src="/ssm_grimm/a_data/vw_thumb.gif" title="[威武]"></li>
				<li><img src="/ssm_grimm/a_data/panda_thumb.gif" title="[熊猫]"></li>
				<li><img src="/ssm_grimm/a_data/rabbit_thumb.gif" title="兔子]"></li>
				<li><img src="/ssm_grimm/a_data/otm_thumb.gif" title="[奥特曼]"></li>
				<li><img src="/ssm_grimm/a_data/j_thumb.gif" title="[囧]"></li>
				<li><img src="/ssm_grimm/a_data/hufen_thumb.gif" title="[互粉]"></li>
				<li><img src="/ssm_grimm/a_data/liwu_thumb.gif" title="[礼物]"></li>
				<li><img src="/ssm_grimm/a_data/smilea_thumb.gif" title="呵呵]"></li>
				<li><img src="/ssm_grimm/a_data/tootha_thumb.gif" title="嘻嘻]"></li>
				<li><img src="/ssm_grimm/a_data/laugh.gif" title="[哈哈]"></li>
				<li><img src="/ssm_grimm/a_data/tza_thumb.gif" title="[可爱]"></li>
				<li><img src="/ssm_grimm/a_data/kl_thumb.gif" title="[可怜]"></li>
				<li><img src="/ssm_grimm/a_data/kbsa_thumb.gif" title="[挖鼻屎]"></li>
				<li><img src="/ssm_grimm/a_data/cj_thumb.gif" title="[吃惊]"></li>
				<li><img src="/ssm_grimm/a_data/shamea_thumb.gif" title="[害羞]"></li>
				<li><img src="/ssm_grimm/a_data/zy_thumb.gif" title="[挤眼]"></li>
				<li><img src="/ssm_grimm/a_data/bz_thumb.gif" title="[闭嘴]"></li>
				<li><img src="/ssm_grimm/a_data/bs2_thumb.gif" title="[鄙视]"></li>
				<li><img src="/ssm_grimm/a_data/lovea_thumb.gif" title="[爱你]"></li>
				<li><img src="/ssm_grimm/a_data/sada_thumb.gif" title="[泪]"></li>
				<li><img src="/ssm_grimm/a_data/heia_thumb.gif" title="[偷笑]"></li>
				<li><img src="/ssm_grimm/a_data/qq_thumb.gif" title="[亲亲]"></li>
				<li><img src="/ssm_grimm/a_data/sb_thumb.gif" title="[生病]"></li>
				<li><img src="/ssm_grimm/a_data/mb_thumb.gif" title="[太开心]"></li>
				<li><img src="/ssm_grimm/a_data/ldln_thumb.gif" title="[懒得理你]"></li>
				<li><img src="/ssm_grimm/a_data/yhh_thumb.gif" title="[右哼哼]"></li>
				<li><img src="/ssm_grimm/a_data/zhh_thumb.gif" title="[左哼哼]"></li>
				<li><img src="/ssm_grimm/a_data/x_thumb.gif" title="[嘘]"></li>
				<li><img src="/ssm_grimm/a_data/cry.gif" title="[衰]"></li>
				<li><img src="/ssm_grimm/a_data/wq_thumb.gif" title="[委屈]"></li>
				<li><img src="/ssm_grimm/a_data/t_thumb.gif" title="[吐]"></li>
				<li><img src="/ssm_grimm/a_data/k_thumb.gif" title="[打哈气]"></li>
				<li><img src="/ssm_grimm/a_data/bba_thumb.gif" title="[抱抱]"></li>
				<li><img src="/ssm_grimm/a_data/angrya_thumb.gif" title="[怒]"></li>
				<li><img src="/ssm_grimm/a_data/yw_thumb.gif" title="[疑问]"></li>
				<li><img src="/ssm_grimm/a_data/cza_thumb.gif" title="[馋嘴]"></li>
				<li><img src="/ssm_grimm/a_data/88_thumb.gif" title="[拜拜]"></li>
				<li><img src="/ssm_grimm/a_data/sk_thumb.gif" title="[思考]"></li>
				<li><img src="/ssm_grimm/a_data/sweata_thumb.gif" title="[汗]"></li>
				<li><img src="/ssm_grimm/a_data/sleepya_thumb.gif" title="[困]"></li>
				<li><img src="/ssm_grimm/a_data/sleepa_thumb.gif" title="[睡觉]"></li>
				<li><img src="/ssm_grimm/a_data/money_thumb.gif" title="[钱]"></li>
				<li><img src="/ssm_grimm/a_data/sw_thumb.gif" title="[失望]"></li>
				<li><img src="/ssm_grimm/a_data/cool_thumb.gif" title="[酷]"></li>
				<li><img src="/ssm_grimm/a_data/hsa_thumb.gif" title="[花心]"></li>
				<li><img src="/ssm_grimm/a_data/hatea_thumb.gif" title="[哼]"></li>
				<li><img src="/ssm_grimm/a_data/gza_thumb.gif" title="[鼓掌]"></li>
				<li><img src="/ssm_grimm/a_data/dizzya_thumb.gif" title="[晕]"></li>
				<li><img src="/ssm_grimm/a_data/bs_thumb.gif" title="[悲伤]"></li>
				<li><img src="/ssm_grimm/a_data/crazya_thumb.gif" title="[抓狂]"></li>
				<li><img src="/ssm_grimm/a_data/h_thumb.gif" title="[黑线]"></li>
				<li><img src="/ssm_grimm/a_data/yx_thumb.gif" title="[阴险]"></li>
				<li><img src="/ssm_grimm/a_data/nm_thumb.gif" title="[怒骂]"></li>
				<li><img src="/ssm_grimm/a_data/hearta_thumb.gif" title="[心]"></li>
				<li><img src="/ssm_grimm/a_data/unheart.gif" title="[伤心]"></li>
				<li><img src="/ssm_grimm/a_data/pig.gif" title="[猪头]"></li>
				<li><img src="/ssm_grimm/a_data/ok_thumb.gif" title="[ok]"></li>
				<li><img src="/ssm_grimm/a_data/ye_thumb.gif" title="[耶]"></li>
				<li><img src="/ssm_grimm/a_data/good_thumb.gif" title="[good]"></li>
				<li><img src="/ssm_grimm/a_data/no_thumb.gif" title="[不要]"></li>
				<li><img src="/ssm_grimm/a_data/z2_thumb.gif" title="[赞]"></li>
				<li><img src="/ssm_grimm/a_data/come_thumb.gif" title="[来]"></li>
				<li><img src="/ssm_grimm/a_data/sad_thumb.gif" title="[弱]"></li>
				<li><img src="/ssm_grimm/a_data/lazu_thumb.gif" title="[蜡烛]"></li>
				<li><img src="/ssm_grimm/a_data/clock_thumb.gif" title="[钟]"></li>
				<li><img src="/ssm_grimm/a_data/cake.gif" title="[蛋糕]"></li>
				<li><img src="/ssm_grimm/a_data/m_thumb.gif" title="[话筒]"></li>
				<li><img src="/ssm_grimm/a_data/weijin_thumb.gif" title="[围脖]"></li>
				<li><img src="/ssm_grimm/a_data/lxhzhuanfa_thumb.gif" title="[转发]"></li>
				<li><img src="/ssm_grimm/a_data/lxhluguo_thumb.gif" title="[路过这儿]"></li>
				<li><img src="/ssm_grimm/a_data/bofubianlian_thumb.gif" title="[bofu变脸]"></li>
				<li><img src="/ssm_grimm/a_data/gbzkun_thumb.gif" title="[gbz困]"></li>
				<li><img src="/ssm_grimm/a_data/boboshengmenqi_thumb.gif" title="[生闷气]"></li>
				<li><img src="/ssm_grimm/a_data/chn_buyaoya_thumb.gif" title="[不要啊]"></li>
				<li><img src="/ssm_grimm/a_data/daxiongleibenxiong_thumb.gif" title="[dx泪奔]"></li>
				<li><img src="/ssm_grimm/a_data/cat_yunqizhong_thumb.gif" title="[运气中]"></li>
				<li><img src="/ssm_grimm/a_data/youqian_thumb.gif" title="[有钱]"></li>
				<li><img src="/ssm_grimm/a_data/cf_thumb.gif" title="[冲锋]"></li>
				<li><img src="/ssm_grimm/a_data/camera_thumb.gif" title="[照相机]"></li>	
			</ul>
		</div>
		<!--face end-->
	</div>
</div>
<!--qq end-->
<div id="time1"></div>
<!--msgCon begin-->
<div class="msgCon">




</div>


	
	
	
	
	
	
	
	
	

	
	</div>
</body>
</html>