package edu.yuying.controller;

import java.io.IOException;
import java.io.UnsupportedEncodingException;
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
import edu.yuying.entity.RecordHistoricalChanges;
import edu.yuying.entity.User;
import edu.yuying.service.imp.ChatServiceImp;
import edu.yuying.service.imp.HistoryPostingRecordServiceImp;
import edu.yuying.service.imp.UserServiceImp;
import edu.yuying.util.PhoneCode;
import edu.yuying.util.Util;

@Controller

public class RecordHistoricalChangesController {
	@Resource
	private UserServiceImp userServiceImp;
	@Resource
	private ChatServiceImp chatServiceImp;
	@Resource
	private HistoryPostingRecordServiceImp historyPostingRecordServiceImp;
	//显示你的所有评论
	
		@RequestMapping(value = "ajax/showReviewDetail.mvc")
		public @ResponseBody ModelAndView showReviewDetail(HttpServletRequest request, HttpServletResponse response)
				throws IOException {
			response.setContentType("text/html");
			String  phone=null;
			 String  usernamefromcookie=Util.searchCookie(request, response, "session_name");
		
			String sessioname=(String)request.getSession().getAttribute("userphone");
			if(null==usernamefromcookie){
				phone=sessioname;
			}else{
				phone=usernamefromcookie;
			}
			//ModelAndView mav = new ModelAndView();
			//Map<String, Object> map = new HashMap<String, Object>();
		
			String id=request.getParameter("postid");
		     List<RecordHistoricalChanges> recordHistoricalChangesByYorselfList=	historyPostingRecordServiceImp.showAllSelfReviews(phone);
			// System.out.println(historyPostingRecord.getReviewList().get(0).getFromuser().getuName());
		     ModelAndView mav = new ModelAndView();
			mav.setViewName("/showreviewsyousendpeople");
		    mav.addObject("recordHistoricalChangesByYorselfList",recordHistoricalChangesByYorselfList);
		  //  mav.addObject("theam", historyPostingRecord.getContent().split("内容")[0]);
			return  mav;
			}
		//插入评论
		@RequestMapping(value = "ajax/insertReiew.mvc")
		public @ResponseBody 	Map<String, Object>  insertReiew(HttpServletRequest request, HttpServletResponse response)
				throws IOException {
			response.setContentType("text/html");
			String  fromphone=null;
			 String  usernamefromcookie=Util.searchCookie(request, response, "session_name");
		
			String sessioname=(String)request.getSession().getAttribute("userphone");
			
				fromphone=sessioname;
			
			Map<String, Object> map = new HashMap<String, Object>();
           String id=request.getParameter("id");
           String content=request.getParameter("content");
           String tophone=request.getParameter("phone");
           Timestamp time = new Timestamp(System.currentTimeMillis()); 
           RecordHistoricalChanges changes=new RecordHistoricalChanges();
           changes.setContent(content);
           //changes.setFromuser(userServiceImp.user_exist_returnUser(fromphone));
           changes.setId(Integer.valueOf(id));
           changes.setSendPhone(fromphone);
           changes.setReceivePhone(tophone);
           changes.setTime(time);
    int a=  historyPostingRecordServiceImp.insertrecordHistoricalChanges(changes);
          if(a==1){
        	  System.err.println("插入评论成功");
        	  map.put("state", 0);
        	  return  map;
          }
          else{ map.put("state", 1);
          
          return  map;}
			
			}
		
		
}
