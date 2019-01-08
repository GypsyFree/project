<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Pragma" contect="no-cache">
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="format-detection" content="telephone=no">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0, minimum-scale=1.0, maximum-scale=1.0">
    <meta name="mobile-web-app-capable" content="yes">
    <meta name="apple-mobile-web-app-capable" content="yes">
    <meta content="yes" name="apple-mobile-web-app-capable">
    <meta content="yes" name="apple-touch-fullscreen">
    <meta name="full-screen" content="yes">
    <meta content="default" name="apple-mobile-web-app-status-bar-style">
    <meta name="screen-orientation" content="portrait">
    <meta name="browsermode" content="application">
    <meta name="msapplication-tap-highlight" content="no">
    <meta name="x5-orientation" content="portrait">
    <meta name="x5-fullscreen" content="true">
    <meta name="x5-page-mode" content="app">
    <base target="_blank">
    <title>会话_聊天机器人</title>
    <link href="/ssm_grimm/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <link rel="stylesheet" href="/ssm_grimm/css/chat.css">
    <script src="/ssm_grimm/js/jquery.min.js"></script>
   <!-- websocket -->
  <script type="text/javascript">

  window.onload= function   line(){
  	var userphone = $("#whoru").text();

  	if ('WebSocket' in window) {
  		websocket = new WebSocket(
  					"ws://localhost:8080/ssm_grimm/websocket/" + userphone); 
  	
  		

  	} else {
  		alert('当前浏览器 Not support websocket')
  	}

  	websocket.onerror = function() {
  		alert("WebSocket连接发生错误");
  	};

  	websocket.onopen = function() {

  	}

  	websocket.onmessage = function(event) {
  		receive(event.data);

  	}

  	websocket.onclose = function() {

  	}

  	

  	
  }
  
  function receive(sendMessage) {
		//$("#message0").remove;
		
		var strs = new Array(); //定义一数组 
		strs = sendMessage.split("用户手机号"); //字符分割 
		var time = strs[0];
		var strs1 = new Array(); //定义一数组 
		strs1 = strs[1].split("用户名字"); //字符分割
		var whosendyou = strs1[0];//手机号
		var strs2 = new Array(); //定义一数组
		strs2 = strs1[1].split("发来消息");
		var name = strs2[0];
		var content = strs2[1];
		
		AddMsg(name,content);
        var div=document.getElementById('show');
        div.scrollTop = div.scrollHeight;

	}
	
//发送消息
      function send(content,ToSendUserno) {
      
         var content;

          content=content+"|"+ToSendUserno//将要发送的信息和内容拼起来，以便于服务端知道消息要发给谁
          websocket.send(content);
      }


  
  
  
  </script>
  <script type="text/javascript">
 function SendMsg()
{
    var text = document.getElementById("text");
    var  contentsendtohim=text.value;
    
    if (text.value == "" || text.value == null)
    {
        alert("发送信息为空，请输入！")
    }
    else
    {       var name=$("#whoyourname").text();
    var whosend=$("#whosendu").text();
        AddMsg(name, SendMsgDispose(text.value));
        
        text.value = "";
        var div=document.getElementById('show');
        div.scrollTop = div.scrollHeight;
        send(contentsendtohim,whosend);
    } 
  }
// 发送的信息处理
 function SendMsgDispose(detail)
{
    detail = detail.replace("\n", "<br>").replace(" ", "&nbsp;")
    return detail;
}

// 增加信息
function AddMsg(user,content)
{
    var str = CreadMsg(user, content);
    var msgs = document.getElementById("msgs");
    msgs.innerHTML = msgs.innerHTML + str;
}

// 生成内容
function CreadMsg(user, content)
{
    
	//发送到
	var str = "";
    var name=$("#whoyourname").text();
    if(user == name)
    {
        str = "<div class=\"msg guest\"><div class=\"msg-right\"><div class=\"msg-host headDefault\"></div><div class=\"msg-ball\" title=\"今天 17:52:06\">" + content +"</div></div></div>"
    }
    else
    {
        str = "<div class=\"msg robot\"><div class=\"msg-left\" worker=\"" + user + "\"><div class=\"msg-host photo\" style=\"background-image: url(../userPhoto/"+${whosend}+".jpg)\"></div><div class=\"msg-ball\" title=\"今天 17:52:06\">" + content + "</div></div></div>";
    }
    return str;
}
 


</script>
</head>
<body lang="zh">
<div id="whoyourname" style="display:none;">${yourname}</div>		
<div id="whosendu" style="display:none;">${whosend}</div>
<div id="whoru" style="display:none;">${whoru}</div>
  <!-- <!--   <img style="width:100%;height:100%" src="~/Images/chatBack.jpg"> --> 
    <div class="abs cover contaniner">
        <div class="abs cover pnl">
            <div class="top pnl-head">您正在跟网友 ${message.fromuser.uName} 聊天</div>
            <div class="abs cover pnl-body" id="pnlBody">
                <div class="abs cover pnl-left">
                    <div class="abs cover pnl-msgs scroll" id="show">
                        <div class="msg min time" id="histStart">加载历史消息</div>
                        <div class="pnl-list" id="hists">
                            <!-- 历史消息 -->
                        </div>
                        <div class="pnl-list" id="msgs">
                     <!--        <div class="msg robot">
                                <div class="msg-left" worker="小龙">
                                    <div class="msg-host photo" style="background-image: url(../Images/head.png)"></div>
                                    <div class="msg-ball" title="今天 17:52:06">你好，我是只能打字的聊天机器人                <br><br>您是想要了解哪些方面呢？</div>
                                </div>
                            </div>
                            
                              
			
                            
                            
                            
                            
                            <div class="msg guest">
                                <div class="msg-right">
                                    <div class="msg-host headDefault"></div>
                                    <div class="msg-ball" title="今天 17:52:06">你好</div>
                                </div>
                            </div> -->
							<c:forEach items="${listmessage}" var="message">

								<div class="msg robot">
									<div class="msg-left" worker="${message.fromuser.uName}">
										<div class="msg-host photo"
											style="background-image: url(../userPhoto/${whosend}.jpg)"></div>
										<div class="msg-ball" title="今天 17:52:06">${message.content}</div>
									</div>
								</div>

							</c:forEach>
						</div>
                        <div class="pnl-list hide" id="unreadLine">
                            <div class="msg min time unread">未读消息</div>
                        </div>
                    </div>
                    <div class="abs bottom pnl-text">
                        <div class="abs top pnl-warn" id="pnlWarn">
                            <div class="fl btns rel pnl-warn-free">
                               <!--  <img src="../Images/icon/Smile.png" class="kh warn-btn" title="表情" id="emojiBtn" />
                                <img src="../Images/icon/pic.png" class="kh warn-btn" title="截屏" id="emojiBtn" />
                                <img src="../Images/icon/camera.png" class="kh warn-btn" title="图片" id="emojiBtn" />
                                <img src="../Images/icon/edit.png" class="kh warn-btn" title="保存" id="emojiBtn" /> -->
                            </div>
                        </div>
                        <div class="abs cover pnl-input">
                            <textarea class="scroll" id="text" wrap="hard" placeholder="在此输入文字信息..."></textarea>
                            <div class="abs atcom-pnl scroll hide" id="atcomPnl">
                                <ul class="atcom" id="atcom"></ul>
                            </div>
                        </div>
                        <div class="abs br pnl-btn" id="submit" style="background-color: rgb(32, 196, 202); color: rgb(255, 255, 255);" onclick="SendMsg();">发送</div>
                        <div class="pnl-support" id="copyright"><a href="#">版权什么的</a></div>
                    </div>
                </div>
                <div class="abs right pnl-right">
                    <div class="slider-container hide"></div>
                    <div class="pnl-right-content">
                        <div class="pnl-tabs">
                            <div class="tab-btn active" id="hot-tab">常见问题</div>
                            <div class="tab-btn" id="rel-tab">相关问题</div>
                        </div>
                        <div class="pnl-hot">
                            <ul class="rel-list unselect" id="hots">
                                <!-- <li class="rel-item">这是一个问题，这是一个问题？</li> -->
                            </ul>
                        </div>
                        <div class="pnl-rel" style="display: none;">
                            <ul class="rel-list unselect" id="rels">
                                <!-- <li class="rel-item">这是一个问题，这是一个问题？</li> -->
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</body>

</html>