/**
 * 
 */
package edu.yuying.util;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.alibaba.fastjson.JSONException;
import com.github.qcloudsms.SmsSingleSender;
import com.github.qcloudsms.SmsSingleSenderResult;
import com.github.qcloudsms.httpclient.HTTPException;

/**
* @author 王林
* @englishname:Grimm
* @githubcount LinLinLinWang
* @version 创建时间：2018年12月26日 下午8:02:34
* 类说明
*/
/**
 * @author 王林
 *
 */

public class PhoneCode {
	public static  String  getCode(HttpServletRequest request, HttpServletResponse response,String phone,String namecontent){
String flag=null;
   int appid = 1400086573;
        String appkey = "8251f605677bef6805bca1df9c4a4d63";
        String smsSign = "境界的彼方";
        int code = (int) (Math.random() * 9000 + 1000);

      

      
        String msg =",您的验证码为" + code + "，请于30分钟内填写。如非本人操作，请忽略本短信。";

      try {
            //指定模板单发短信；
            SmsSingleSender ssender = new SmsSingleSender(appid, appkey);
            SmsSingleSenderResult result = ssender.send(0, "86", phone,
                    msg, "", "");
            System.out.print(result);
            request.getSession().setAttribute("phonecode", code);
            
            return flag="success";
        } catch (HTTPException e) {
            System.out.println("HTTP响应码错误");
        } catch (JSONException e) {
            System.out.println("json解析错误");
        } catch (IOException e) {
            System.out.println("网络IO错误");
        }
	
		
        System.out.println(code);
        request.getSession().setAttribute(namecontent, code);
        
         flag="success";
    
	return flag;
		
	}

}
