<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="content-type" content="text/html; charset=UTF-8">
	<meta charset="UTF-8">
	<title>发表评论</title>
	
	<link rel="stylesheet" type="text/css" href="a_data/dmaku.css">
</head>

<body>

<div id="qq">
	<p>有什么新鲜事想告诉大家?</p>
	<div class="message" contenteditable="true"></div>

	<div class="But">
		<img src="a_data/bba_thumb.gif" class="bq">
		<span class="submit">发表</span>
		<!--face begin-->
		<div class="face" style="">
			<ul>
				<li><img src="a_data/zz2_thumb.gif" title="[织]"></li>
				<li><img src="a_data/horse2_thumb.gif" title="神马]"></li>
				<li><img src="a_data/fuyun_thumb.gif" title="[浮云]"></li>
				<li><img src="a_data/geili_thumb.gif" title="[给力]"></li>
				<li><img src="a_data/wg_thumb.gif" title="[围观]"></li>
				<li><img src="a_data/vw_thumb.gif" title="[威武]"></li>
				<li><img src="a_data/panda_thumb.gif" title="[熊猫]"></li>
				<li><img src="a_data/rabbit_thumb.gif" title="兔子]"></li>
				<li><img src="a_data/otm_thumb.gif" title="[奥特曼]"></li>
				<li><img src="a_data/j_thumb.gif" title="[囧]"></li>
				<li><img src="a_data/hufen_thumb.gif" title="[互粉]"></li>
				<li><img src="a_data/liwu_thumb.gif" title="[礼物]"></li>
				<li><img src="a_data/smilea_thumb.gif" title="呵呵]"></li>
				<li><img src="a_data/tootha_thumb.gif" title="嘻嘻]"></li>
				<li><img src="a_data/laugh.gif" title="[哈哈]"></li>
				<li><img src="a_data/tza_thumb.gif" title="[可爱]"></li>
				<li><img src="a_data/kl_thumb.gif" title="[可怜]"></li>
				<li><img src="a_data/kbsa_thumb.gif" title="[挖鼻屎]"></li>
				<li><img src="a_data/cj_thumb.gif" title="[吃惊]"></li>
				<li><img src="a_data/shamea_thumb.gif" title="[害羞]"></li>
				<li><img src="a_data/zy_thumb.gif" title="[挤眼]"></li>
				<li><img src="a_data/bz_thumb.gif" title="[闭嘴]"></li>
				<li><img src="a_data/bs2_thumb.gif" title="[鄙视]"></li>
				<li><img src="a_data/lovea_thumb.gif" title="[爱你]"></li>
				<li><img src="a_data/sada_thumb.gif" title="[泪]"></li>
				<li><img src="a_data/heia_thumb.gif" title="[偷笑]"></li>
				<li><img src="a_data/qq_thumb.gif" title="[亲亲]"></li>
				<li><img src="a_data/sb_thumb.gif" title="[生病]"></li>
				<li><img src="a_data/mb_thumb.gif" title="[太开心]"></li>
				<li><img src="a_data/ldln_thumb.gif" title="[懒得理你]"></li>
				<li><img src="a_data/yhh_thumb.gif" title="[右哼哼]"></li>
				<li><img src="a_data/zhh_thumb.gif" title="[左哼哼]"></li>
				<li><img src="a_data/x_thumb.gif" title="[嘘]"></li>
				<li><img src="a_data/cry.gif" title="[衰]"></li>
				<li><img src="a_data/wq_thumb.gif" title="[委屈]"></li>
				<li><img src="a_data/t_thumb.gif" title="[吐]"></li>
				<li><img src="a_data/k_thumb.gif" title="[打哈气]"></li>
				<li><img src="a_data/bba_thumb.gif" title="[抱抱]"></li>
				<li><img src="a_data/angrya_thumb.gif" title="[怒]"></li>
				<li><img src="a_data/yw_thumb.gif" title="[疑问]"></li>
				<li><img src="a_data/cza_thumb.gif" title="[馋嘴]"></li>
				<li><img src="a_data/88_thumb.gif" title="[拜拜]"></li>
				<li><img src="a_data/sk_thumb.gif" title="[思考]"></li>
				<li><img src="a_data/sweata_thumb.gif" title="[汗]"></li>
				<li><img src="a_data/sleepya_thumb.gif" title="[困]"></li>
				<li><img src="a_data/sleepa_thumb.gif" title="[睡觉]"></li>
				<li><img src="a_data/money_thumb.gif" title="[钱]"></li>
				<li><img src="a_data/sw_thumb.gif" title="[失望]"></li>
				<li><img src="a_data/cool_thumb.gif" title="[酷]"></li>
				<li><img src="a_data/hsa_thumb.gif" title="[花心]"></li>
				<li><img src="a_data/hatea_thumb.gif" title="[哼]"></li>
				<li><img src="a_data/gza_thumb.gif" title="[鼓掌]"></li>
				<li><img src="a_data/dizzya_thumb.gif" title="[晕]"></li>
				<li><img src="a_data/bs_thumb.gif" title="[悲伤]"></li>
				<li><img src="a_data/crazya_thumb.gif" title="[抓狂]"></li>
				<li><img src="a_data/h_thumb.gif" title="[黑线]"></li>
				<li><img src="a_data/yx_thumb.gif" title="[阴险]"></li>
				<li><img src="a_data/nm_thumb.gif" title="[怒骂]"></li>
				<li><img src="a_data/hearta_thumb.gif" title="[心]"></li>
				<li><img src="a_data/unheart.gif" title="[伤心]"></li>
				<li><img src="a_data/pig.gif" title="[猪头]"></li>
				<li><img src="a_data/ok_thumb.gif" title="[ok]"></li>
				<li><img src="a_data/ye_thumb.gif" title="[耶]"></li>
				<li><img src="a_data/good_thumb.gif" title="[good]"></li>
				<li><img src="a_data/no_thumb.gif" title="[不要]"></li>
				<li><img src="a_data/z2_thumb.gif" title="[赞]"></li>
				<li><img src="a_data/come_thumb.gif" title="[来]"></li>
				<li><img src="a_data/sad_thumb.gif" title="[弱]"></li>
				<li><img src="a_data/lazu_thumb.gif" title="[蜡烛]"></li>
				<li><img src="a_data/clock_thumb.gif" title="[钟]"></li>
				<li><img src="a_data/cake.gif" title="[蛋糕]"></li>
				<li><img src="a_data/m_thumb.gif" title="[话筒]"></li>
				<li><img src="a_data/weijin_thumb.gif" title="[围脖]"></li>
				<li><img src="a_data/lxhzhuanfa_thumb.gif" title="[转发]"></li>
				<li><img src="a_data/lxhluguo_thumb.gif" title="[路过这儿]"></li>
				<li><img src="a_data/bofubianlian_thumb.gif" title="[bofu变脸]"></li>
				<li><img src="a_data/gbzkun_thumb.gif" title="[gbz困]"></li>
				<li><img src="a_data/boboshengmenqi_thumb.gif" title="[生闷气]"></li>
				<li><img src="a_data/chn_buyaoya_thumb.gif" title="[不要啊]"></li>
				<li><img src="a_data/daxiongleibenxiong_thumb.gif" title="[dx泪奔]"></li>
				<li><img src="a_data/cat_yunqizhong_thumb.gif" title="[运气中]"></li>
				<li><img src="a_data/youqian_thumb.gif" title="[有钱]"></li>
				<li><img src="a_data/cf_thumb.gif" title="[冲锋]"></li>
				<li><img src="a_data/camera_thumb.gif" title="[照相机]"></li>	
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

<script type="text/javascript" src="js/modernizr.js"></script>
<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript">

	//点击小图片，显示表情
	$(".bq").click(function(e){
		$(".face").slideDown();//慢慢向下展开
		e.stopPropagation();   //阻止冒泡事件
	});

	//在桌面任意地方点击，他是关闭
	$(document).click(function(){
		$(".face").slideUp();//慢慢向上收
	});

	//点击小图标时，添加功能
	$(".face ul li").click(function(){
		var simg=$(this).find("img").clone();
		$(".message").append(simg);
	});

	//点击发表按扭，发表内容
	$("span.submit").click(function(){

		var txt=$(".message").html();
		if(txt==""){
			$('.message').focus();//自动获取焦点
			return;
		}

		$(".msgCon").prepend("<div class='msgBox'><dl><dt><img src='images/tx.jpg' width='50' height='50'/></dt><dd>阿炜</dd></dl><div class='msgTxt'>"+txt+"</div></div>");
	});

</script>


 

</body></html>