package edu.yuying.controller;

import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.security.NoSuchAlgorithmException;
import java.sql.Timestamp;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.faces.flow.builder.ReturnBuilder;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.context.request.NativeWebRequest;
import org.springframework.web.servlet.ModelAndView;

import com.alibaba.fastjson.parser.deserializer.StringFieldDeserializer;
import com.mysql.cj.x.protobuf.MysqlxCrud.Insert;

import edu.yuying.entity.ChatWithPeople;
import edu.yuying.entity.User;
import edu.yuying.service.imp.ChatServiceImp;
import edu.yuying.service.imp.UserServiceImp;
import edu.yuying.util.PhoneCode;
import edu.yuying.util.Photo;
import edu.yuying.util.Util;

@Controller

public class UpdatePersonInfoController {
	@Resource
	private UserServiceImp userServiceImp;
	@Resource
	private ChatServiceImp chatServiceImp;
	@RequestMapping(value = "ajax/uploadimage.mvc")
	public @ResponseBody Map<String, Object> uploadimage(HttpServletRequest request, HttpServletResponse response)
			throws IOException {
		response.setContentType("text/html");
		Map<String, Object> map = new HashMap<String, Object>();
		// 获取前段截取的图片

	response.setContentType("text/html");
		String dataurl = request.getParameter("image");
	//	System.out.println("图片数据" + dataurl);
		String imgcontent = dataurl.substring(27, dataurl.length() - 2);
		//System.out.println("裁剪后图片数据" + imgcontent);
		
		String t = Thread.currentThread().getContextClassLoader().getResource("").getPath();
		 String  usernamefromcookie=Util.searchCookie(request, response, "session_name");
		
		String sessioname=(String)request.getSession().getAttribute("userphone");
			String  photoname=null;
			if(null==usernamefromcookie){
				photoname=sessioname;
				
			}else{
				photoname=usernamefromcookie;
			}
		String  path_webapp=t.substring(0,t.length()-16)+"userPhoto/"+photoname+".jpg";
		Photo.base64StrToImage(imgcontent, path_webapp);
       

		System.out.println(path_webapp);
		
		map.put("finish", "true");
		return map;

	}/////
	@RequestMapping(value = "ajax/turn_personal.mvc")
	public @ResponseBody ModelAndView turn_personal(HttpServletRequest request, HttpServletResponse response)
			throws IOException {
		response.setContentType("text/html");
		ModelAndView mav = new ModelAndView();
	String 	phone=null;
     if(0==Util.user_state(request, response, userServiceImp)){
    	 
    	 mav.setViewName("personal_page/personal_manage");
    	 System.out.println("用户存在");
         String  usernamefromcookie=Util.searchCookie(request, response, "session_name");
    	
    	String sessioname=(String)request.getSession().getAttribute("userphone");
           String phones[]={usernamefromcookie,sessioname};	
           for (int i = 0; i < phones.length; i++) {
               if(phones[i]!=null){
            	   phone=phones[i];
               }
           }
    	 mav.addObject("userdetail", userServiceImp.user_exist_returnUser(phone));
    	   
    		return mav;
     }else{
    	 
    		return mav;
     }
    	 
    	

	}
		
	@RequestMapping(value = "ajax/updatePeopleinfo.mvc")
	public @ResponseBody Map<String, Object> updatePeopleinfo(HttpServletRequest request, HttpServletResponse response)
			throws IOException {
		request.setCharacterEncoding("UTF-8");String sr=request.getCharacterEncoding();
		System.out.println(sr);
		response.setContentType("text/html");
		Map<String, Object> map = new HashMap<String, Object>();
		String phone=request.getParameter("phone");
	
		String  name=request.getParameter("name");
		String  gender=request.getParameter("gender");
		String  date= request.getParameter("date");
		  SimpleDateFormat sdf = new SimpleDateFormat("yyyy");
	        Date date1 = new Date(); 
	       int Year=Integer.valueOf(sdf.format(date1));
	       int bearYear=Integer.valueOf(date.split("-")[0]);
	       int age=Year-bearYear;
	       System.out.println("你的岁数"+age);
	  	 if(age<=0){
	    	   //未出生
	    	   age=0;
	    	   map.put("state",0);
	    	   return map;
	    	   
	       }
	       if(age>=110){
	    	   //长寿老人
	    	   age=0;
	    	   map.put("state",1);
	    	   return map;
	    	   
	       }
	   	System.out.println(phone+name+gender+date);
	    //如果phone被修改
	   	String  nowphoneSession=Util.searchCookie(request, response, "session_name");
	String nowphonecookie=(String)request.getSession().getAttribute("userphone");
	String nowphone=null;
	if(null==nowphoneSession){
		nowphone=nowphonecookie;
	
	}else{
		nowphone=nowphoneSession;
	}
	
	System.out.println(nowphone+"现在");
	if(phone.equals(nowphone)){
	
		//正常修改
		User user=new User();
		user.setPhone(nowphone);
		user.setUage(age);
		user.setuName(name);
		user.setUgender(gender);
	if(userServiceImp.userUpdate(user)){
		//成功
		map.put("state",2);
		   return map;
		
	}else{
		System.out.println("更新失败");
		//更新失败
		map.put("state",3);
		   return map;
	}	
		
		
	}else{
		if(userServiceImp.user_exist(phone)){
			
			//拒绝修改 已经注册啦
			
			User user=new User();
			user.setPhone(nowphone);
			user.setUage(age);
			user.setuName(name);
			user.setUgender(gender);
		if(userServiceImp.userUpdate(user)){
			//修改基本信息
			map.put("state",4);
			   return map;
			
			
		}else{
			System.out.println("更新失败");
			//更新失败
			map.put("state",3);
			   return map;
		}	
			
			
			
			
			
			
			
			
		}else{
			
			
			//设置验证码
	     //  PhoneCode.getCode(request, response, phone,"updatePhonecode");
	       //需要验证验证码
	       
	       User user=new User();
			user.setPhone(nowphone);
			user.setUage(age);
			user.setuName(name);
			user.setUgender(gender);
		if(userServiceImp.userUpdate(user)){
			//修改基本信息
			map.put("state",5);
			   return map;
			
			
		}else{
			System.out.println("更新失败");
			//更新失败
			map.put("state",3);
			   return map;
		}	
			
	       
		}
		
		
	}
    	 
     
	}
	//获取更改手机号 的验证码 以及验证手机号允不允许更改

	@RequestMapping(value = "ajax/getupdatePhoneCode.mvc")
	public @ResponseBody Map<String, Object> getupdatePhoneCode(HttpServletRequest request, HttpServletResponse response)
			throws IOException {
		response.setContentType("text/html");
		Map<String, Object> map = new HashMap<String, Object>();
		String  newphone=request.getParameter("phone");
		if(newphone.equals(Util.searchCookie(request, response, "session_name"))||newphone.equals(((String)request.getSession().getAttribute("userphone")))
		){
	
			//手机号为原手机号
			map.put("state",0);
			   return map;
	
    	 
     
	}else{
		      //
		if(userServiceImp.user_exist(newphone)){
			map.put("state",1);
			//已被注册
			   return map;
		}else{
			//获取验证码
			map.put("state",2);
		String code=PhoneCode.getCode(request, response, newphone,"updatePhonecode");
		System.out.println(code);	 
		return map;
			
		}
		
		
		
		
		   
	}
	}
	//更改手机号
	

	@RequestMapping(value = "ajax/updatePhone.mvc")
	public @ResponseBody Map<String, Object> updatePhone(HttpServletRequest request, HttpServletResponse response)
			throws IOException {
		response.setContentType("text/html");
		Map<String, Object> map = new HashMap<String, Object>();
		String  newphone=request.getParameter("phone");
		String  code=request.getParameter("code");
		String phonecode=""+request.getSession().getAttribute("updatePhonecode");
		System.out.println("===================="+phonecode);
		if(phonecode.equals(code)){
			//执行修改
		    //获取cookiename  sessionmname
			//request.getSession().setAttribute("userphone",phone);
			//Util.searchCookie(request,response,"session_name")
		
				//用 cookie 去找
			if(null==Util.searchCookie(request,response,"session_name")){
			if(0==userServiceImp.userPhoneUpdate((String)request.getSession().getAttribute("userphone"), newphone))
			{
				//更新失败
				System.out.println("更新手机号失败");
				map.put("state", "1");
				return map;
			}else{
				System.out.println("更新手机号成功");
				map.put("state", "0");
				return map;
			}
			}
			if(0==	userServiceImp.userPhoneUpdate(Util.searchCookie(request,response,"session_name"),newphone)){
				
				
				System.out.println("更新手机号失败");
				map.put("state", "1");
				return map;
			}else{
				
				System.out.println("更新手机号成功");
				map.put("state", "0");
				return map;
			}
		
			
		}
		else{
			System.out.println("验证码错误");
			map.put("state", "2");return map;
			
		}
		
		
		
	}//获取所有用户
	@RequestMapping(value = "ajax/getUserList.mvc")
	public @ResponseBody ModelAndView  getUserList(HttpServletRequest request, HttpServletResponse response)
			throws IOException {
		response.setContentType("text/html");
		ModelAndView mode=new ModelAndView();
		List<User> userslist=userServiceImp.queryAlLUser();
		mode.setViewName("/userlist");
		mode.addObject("userlist", userslist);
		return mode;
			
			
			
		}
	
	@RequestMapping(value = "ajax/deleteUser.mvc")
	public @ResponseBody Map<String, Object>  deleteUser(HttpServletRequest request, HttpServletResponse response)
			throws IOException {
		response.setContentType("text/html");
		Map<String, Object> map = new HashMap<String, Object>();
		String connect=request.getParameter("connect");
		System.out.println(connect);
		User user=userServiceImp.user_exist_returnUser_byCOnnect(connect);
		if(user.getUstate()!=2){
			user.setUstate(2);
			System.out.println(user.getPhone());
			String  nowphoneSession=Util.searchCookie(request, response, "session_name");
			String nowphonecookie=(String)request.getSession().getAttribute("userphone");
			if(user.getPhone().equals(nowphoneSession)||user.getPhone().equals(nowphonecookie)){
				
				//刪的是自己
				map.put("state",0);
				return map;
				
			}else{
				
				 if(userServiceImp.userUpdateByConnect(user)){
					 map.put("state",1);
					 return map;
						
				 
				
				 } else{//不成功
					 map.put("state",2);
					 return map;
					 
				 }
					
				
			}
		}
		else{//要恢复
			
			user.setUstate(0);
			System.out.println(user.getPhone());
			String  nowphoneSession=Util.searchCookie(request, response, "session_name");
			String nowphonecookie=(String)request.getSession().getAttribute("userphone");
			if(user.getPhone().equals(nowphoneSession)||user.getPhone().equals(nowphonecookie)){
				
				//刪的是自己
				map.put("state",0);
				return map;
				
			}else{
				
				 if(userServiceImp.userUpdateByConnect(user)){
					 map.put("state",3);
					 return map;
						
				 
				
				 } else{//不成功
					 map.put("state",4);
					 return map;
					 
				 }
					
				
			}
			
			
		}
		
	
			
			
		}
	
		
		
	///修改密码
	@RequestMapping(value = "ajax/changePassword.mvc")
	public @ResponseBody ModelAndView  changePassword(HttpServletRequest request, HttpServletResponse response)
			throws IOException {
		response.setContentType("text/html");
		ModelAndView mode=new ModelAndView();
		String phone=request.getParameter("phone");
		System.out.println("修改吗"+phone);
		mode.setViewName("/changpassword");
		request.getSession().setAttribute("passwordphonechange", phone);
		return mode;
			
			
			
		}
	
///修改密码
@RequestMapping(value = "ajax/updatepassword.mvc")
public @ResponseBody Map<String, Object>  updatepassword(HttpServletRequest request, HttpServletResponse response)
		throws IOException {
	response.setContentType("text/html");
	Map<String, Object> map = new HashMap<String, Object>();
	String password=request.getParameter("pass2");
	System.out.println("密码"+password);
	String phone=(String)request.getSession().getAttribute("passwordphonechange");
	System.out.println(phone);
	User user=userServiceImp.user_exist_returnUser(phone);
	try {
		user.setUpwd(Util.md5(password));
	} catch (NoSuchAlgorithmException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
   if(userServiceImp.userUpdate(user)){
	   map.put("state", 0);
	   return  map;
   }else{
	   map.put("state", 1);
	   return  map;
   }

	
		
	}
	
	
	
	
}
