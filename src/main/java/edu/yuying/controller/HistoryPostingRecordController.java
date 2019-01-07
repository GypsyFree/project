package edu.yuying.controller;

import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.lang.ProcessBuilder.Redirect;
import java.security.NoSuchAlgorithmException;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.context.request.NativeWebRequest;
import org.springframework.web.servlet.ModelAndView;

import com.alibaba.fastjson.parser.deserializer.StringFieldDeserializer;

import edu.yuying.entity.ChatWithPeople;
import edu.yuying.entity.HistoryPostingRecord;
import edu.yuying.entity.User;
import edu.yuying.service.imp.ChatServiceImp;
import edu.yuying.service.imp.HistoryPostingRecordServiceImp;
import edu.yuying.service.imp.UserServiceImp;
import edu.yuying.util.PhoneCode;
import edu.yuying.util.Util;

@Controller

public class HistoryPostingRecordController {
	@Resource
	private UserServiceImp userServiceImp;
	@Resource
	private ChatServiceImp chatServiceImp;
	@Resource
	private HistoryPostingRecordServiceImp historyPostingRecordServiceImp;
	@RequestMapping("ajax/showPostingHistory.mvc")
	public @ResponseBody  ModelAndView  getChatTotalHistory(HttpServletRequest request,
			HttpServletResponse response) throws UnsupportedEncodingException, NoSuchAlgorithmException {
		 ModelAndView  map = new  ModelAndView ();
		 String  usernamefromcookie=Util.searchCookie(request, response, "session_name");
		System.out.println(usernamefromcookie);
		String sessioname=(String)request.getSession().getAttribute("userphone");
		System.out.println(sessioname);
		String phone=null;
		if(null==usernamefromcookie){
			phone=sessioname;
		}else{
			phone=usernamefromcookie;
		}
			
				
		System.out.println("===================="+phone);
		map.setViewName("/showselfposting");
		List<HistoryPostingRecord> HistoryPostingRecord=historyPostingRecordServiceImp.showHistoryPost(phone);
		//request.setAttribute("yourPost", HistoryPostingRecord);
		map.addObject("yourPost", HistoryPostingRecord);
		return map;

	}

	@RequestMapping("ajax/insertPostingHistory.mvc")
	public String  insertPostingHistory(HttpServletRequest request,
			HttpServletResponse response) throws UnsupportedEncodingException, NoSuchAlgorithmException {
		Map<String, Object> map = new HashMap<String, Object>();
		request.setCharacterEncoding("UTF-8");
		
	//	String phone=(String)request.getSession().getAttribute("userphone");
		String type=request.getParameter("type");
		String content=request.getParameter("content");
		String title=request.getParameter("title");
		String phone = (String)request.getSession().getAttribute("userphone");
		//title放在content中 中间用+连接 存储
		String all = title + "内容" + content;
		
		//拿到user
		User user = null;
		if(userServiceImp.user_exist(phone)) {
			user = userServiceImp.user_exist_returnUser((String)request.getSession().getAttribute("userphone"));
		}
		
	   Timestamp time = new Timestamp(System.currentTimeMillis()); 
	   HistoryPostingRecord historyPostingRecord=new HistoryPostingRecord();
	   historyPostingRecord.setContent(all);
	   historyPostingRecord.setPhone(phone);
	   historyPostingRecord.setContentType(Integer.valueOf(type));
	   historyPostingRecord.setTime(time);
	   historyPostingRecord.setUser(user);
	   int res = historyPostingRecordServiceImp.insertPost(historyPostingRecord);
	   if(1 == res){
		   System.out.println("插入成功");
			return "redirect:/ajax/showPostingHistory.mvc";
		   
	   }
		
		return "失敗";

	}
//根据id删帖
	@RequestMapping(value = "ajax/deletePosting.mvc")
	public @ResponseBody Map<String, Object>  deleteUser(HttpServletRequest request, HttpServletResponse response)
			throws IOException {
		response.setContentType("text/html");
		Map<String, Object> map = new HashMap<String, Object>();
		String id=request.getParameter("id");
		System.out.println("帖子"+id);
	if(1==historyPostingRecordServiceImp.deletePostingById(Integer.valueOf(id)))
			{		
		//删除成功
		map.put("state", 0);
	}else{
		map.put("state", 1);
	}
		
		return  map;
		}
		
	//显示详情页
	
	@RequestMapping(value = "ajax/showPostDetail.mvc")
	public @ResponseBody ModelAndView showPostDetail(HttpServletRequest request, HttpServletResponse response)
			throws IOException {
		response.setContentType("text/html");
		//ModelAndView mav = new ModelAndView();
		//Map<String, Object> map = new HashMap<String, Object>();
		String id=request.getParameter("postid");
	     HistoryPostingRecord historyPostingRecord=	historyPostingRecordServiceImp.showPostById(Integer.valueOf(id));
		// System.out.println(historyPostingRecord.getReviewList().get(0).getFromuser().getuName());
	     ModelAndView mav = new ModelAndView();
		mav.setViewName("/showpostdetail");
	    mav.addObject("historyPostingRecord",historyPostingRecord);
	    mav.addObject("theam", historyPostingRecord.getContent().split("内容")[0]);
		return  mav;
		}
	//管理员展现所有list
	@RequestMapping("ajax/showAllPosting.mvc")
	public @ResponseBody  ModelAndView  showAllPosting(HttpServletRequest request,
			HttpServletResponse response) throws UnsupportedEncodingException, NoSuchAlgorithmException {
		 ModelAndView  map = new  ModelAndView ();
		 request.setCharacterEncoding("UTF-8");
		  List<HistoryPostingRecord> HistoryPostingRecord=historyPostingRecordServiceImp.showAllPosting();
		//request.setAttribute("yourPost", HistoryPostingRecord);
		map.addObject("allPost", HistoryPostingRecord);
		map.setViewName("/showallposting");
		return map;

	}
	//顯示的所有人的評論
	@RequestMapping("ajax/showPostCenter.mvc")
	public @ResponseBody  ModelAndView  showPostCenter(HttpServletRequest request,
			HttpServletResponse response) throws UnsupportedEncodingException, NoSuchAlgorithmException {
		 ModelAndView  map = new  ModelAndView ();
	
		
			
				
		map.setViewName("/postcenter");
		List<HistoryPostingRecord> HistoryPostingRecord=historyPostingRecordServiceImp.showAllPosting();
		//request.setAttribute("yourPost", HistoryPostingRecord);
		map.addObject("allPost", HistoryPostingRecord);
		return map;

	}
}
