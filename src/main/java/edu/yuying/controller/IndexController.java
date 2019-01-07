package edu.yuying.controller;

import java.io.UnsupportedEncodingException;
import java.security.NoSuchAlgorithmException;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
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
import com.mysql.cj.conf.HostInfo;

import edu.yuying.entity.ChatWithPeople;
import edu.yuying.entity.HistoryPostingRecord;
import edu.yuying.entity.HotPosting;
import edu.yuying.entity.User;
import edu.yuying.service.imp.ChatServiceImp;
import edu.yuying.service.imp.HistoryPostingRecordServiceImp;
import edu.yuying.service.imp.UserServiceImp;
import edu.yuying.util.PhoneCode;
import edu.yuying.util.Util;

@Controller

public class IndexController {
	@Resource
	private UserServiceImp userServiceImp;
	@Resource
	private ChatServiceImp chatServiceImp;
	@Resource
	private HistoryPostingRecordServiceImp historyPostingRecordServiceImp;

	@RequestMapping("ajax/index.mvc")
	public @ResponseBody ModelAndView  getIndexPage(HttpServletRequest request,
			HttpServletResponse response) throws UnsupportedEncodingException, NoSuchAlgorithmException {
		//String [][]showlis=new String[5][3];
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/index");
		if(0==Util.user_state(request, response, userServiceImp)){
			//用户一切正常
			
			 String  usernamefromcookie=Util.searchCookie(request, response, "session_name");
			  String  passwordfromcookie= Util.searchCookie(request, response, "session_password");
			String sessioname=(String)request.getSession().getAttribute("userphone");
				String sessionpassword=(String)request.getSession().getAttribute("userpwd");
			System.out.println("usernamefromcookie"+usernamefromcookie);	
			System.out.println("passwordfromcookie"+passwordfromcookie);	
			System.out.println("sessioname"+sessioname);	
			System.out.println("sessionpassword"+sessionpassword);
			//显示热帖
			//System.out.println("帖子评论"+historyPostingRecordServiceImp.showHotPosting().size());
			List<HotPosting> hotpostlist=historyPostingRecordServiceImp.showHotPosting();
			Iterator<HotPosting> iter = null;
		    String  numtotal=historyPostingRecordServiceImp.showAllPosting().size()+"";
		    
		    String  peopletotal=userServiceImp.queryAlLUser().size()+"";
			String  reviewnum=historyPostingRecordServiceImp.showAllreviewlist().size()+"";
			
			//返回热门帖子信息
			if(usernamefromcookie==null){
				//返回用户信息
				
				 mav.addObject("userdetail", userServiceImp.user_exist_returnUser(sessioname));
				 //热门帖子
				 mav.addObject("hotpostlist", historyPostingRecordServiceImp.showHotPosting());
				 mav.addObject("newhis", historyPostingRecordServiceImp.showAllPosting().subList(0, 3));
				 mav.addObject("numtotal", numtotal);
				 mav.addObject("peopletotal", peopletotal);
				 mav.addObject("reviewnum", reviewnum);
				 mav.addObject("username", userServiceImp.user_exist_returnUser(sessioname).getuName());
				return mav;
			}else{
				 mav.addObject("userdetail", userServiceImp.user_exist_returnUser(usernamefromcookie));
				 mav.addObject("hotpostlist", historyPostingRecordServiceImp.showHotPosting());
				 mav.addObject("newhis", historyPostingRecordServiceImp.showAllPosting().subList(0, 3));
				 mav.addObject("numtotal", numtotal);
				 mav.addObject("peopletotal", peopletotal);
				 mav.addObject("reviewnum", reviewnum);
				 mav.addObject("username", userServiceImp.user_exist_returnUser(usernamefromcookie).getuName());
				 return mav;
				
			}
			
			
		}else{
			
			
			List<HotPosting> hotpostlist=historyPostingRecordServiceImp.showHotPosting();
			Iterator<HotPosting> iter = null;
		    String  numtotal=historyPostingRecordServiceImp.showAllPosting().size()+"";
		    
		    String  peopletotal=userServiceImp.queryAlLUser().size()+"";
			String  reviewnum=historyPostingRecordServiceImp.showAllreviewlist().size()+"";
			// mav.addObject("userdetail", userServiceImp.user_exist_returnUser(sessioname));
			 //热门帖子
			 mav.addObject("hotpostlist", historyPostingRecordServiceImp.showHotPosting());
			 mav.addObject("newhis", historyPostingRecordServiceImp.showAllPosting().subList(0, 3));
			 mav.addObject("numtotal", numtotal);
			 mav.addObject("peopletotal", peopletotal);
			 mav.addObject("reviewnum", reviewnum);
		//	 mav.addObject("username", userServiceImp.user_exist_returnUser(sessioname).getuName());
			
			
			
			
			
			
			
			
			
			return mav;
		}
		
	   
	

	}
	

	@RequestMapping("ajax/destroy.mvc")
	public @ResponseBody ModelAndView  destroy(HttpServletRequest request,
			HttpServletResponse response) throws UnsupportedEncodingException, NoSuchAlgorithmException {
		//String [][]showlis=new String[5][3];
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/wait");
		 String  usernamefromcookie=Util.searchCookie(request, response, "session_name");
		  String  passwordfromcookie= Util.searchCookie(request, response, "session_password");
		String sessioname=(String)request.getSession().getAttribute("userphone");
			String sessionpassword=(String)request.getSession().getAttribute("userpwd");
			if(null!=usernamefromcookie){
				
				Util.setCookie(request, response, "usernamefromcookie", null);
			}if(null!=passwordfromcookie){
				Util.setCookie(request, response, "passwordfromcookie", null);
			}if(null!=sessioname){
				request.getSession().setAttribute("userphone", null);
			}if(null!=sessionpassword){
				
				request.getSession().setAttribute("userpwd", null);
			}
			return mav;
		
		
	   
	

	}
	
}
