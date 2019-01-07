<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<script src="/ssm_grimm/js/jquery.min.js" type="text/javascript"></script>
	
	<!-- 时间线-->

  <link rel="stylesheet" href="../layui/css/layui.css"  media="all">
  <script language="javascript"> 
    function delcfm(id) { 
        if (!confirm("确认要删除？")) { 
        
        	
       /*      window.event.returnValue = false;  */
        
        } else{
        
        	//删除标签
        	 $.ajax({ 

 			    data:{"id":id
 			    },
 			

 			    type:"POST", 
 			    async: false,

 			    dataType: 'json',

 			    url:"/ssm_grimm/ajax/deletePosting.mvc", 
 			    

 			    success:function(data){ 
 				if(data.state==0){
 					window.location.href="/ssm_grimm/ajax/showPostingHistory.mvc";
 				}
 				else{alert("删除失败！请稍后再试");}
 				
 	               
 			    },

 			     error:function(data){ 

 			    	    alert("后台故障，请稍等");

 			    }

 			    });  
        	
        }
    } 
   
        function showdetail(id) { 
       window.location.href="../ajax/showPostDetail.mvc?postid="+id;
    } 
</script>

</head>
<body>



					<div style="width: 100%; height: 100%;"
						id="showselfpost">
					
						
						<ul class="layui-timeline">
						
				<c:forEach items="${yourPost}" var="hostinf">

					 <li class="layui-timeline-item" id="${hostinf.id}" >
    <i class="layui-icon layui-timeline-axis" onclick="delcfm(${hostinf.id});">&#xe63f;</i>
    <div class="layui-timeline-content layui-text">
      <h3 class="layui-timeline-title">${hostinf.time}</h3>
      <p>
        你发表啦！！
        <br>一个可爱到爆炸的说说 <br>
     <p onclick="showdetail(${hostinf.id});"> <a href="#"> ${hostinf.content}</a></p>  <br>
        <i class="layui-icon"></i>
      </p>
    </div>
  </li>
					

				</c:forEach>
						
 
</ul>
						
						
					</div>
</body>
</html>