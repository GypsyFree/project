/**
 * 
 */
package edu.yuying.service;

import java.util.List;

import com.mysql.cj.conf.HostInfo;

import edu.yuying.entity.HistoryPostingRecord;
import edu.yuying.entity.HotPosting;
import edu.yuying.entity.RecordHistoricalChanges;
import edu.yuying.entity.User;

/**
* @author 王林
* @englishname:Grimm
* @githubcount LinLinLinWang
* @version 创建时间：2018年12月28日 下午4:20:42
* 类说明
*/
/**
 * @author 王林
 *
 */

public interface HistoryPostingRecordService {
	
	
	//显示所有的帖子

	public List<HistoryPostingRecord> 	showAllPosting();
public List<HistoryPostingRecord> showHistoryPost(String fromphone);
	//根据id显示帖子

public HistoryPostingRecord showPostById(int id);
	//根据评论人的手机号 以及类型区分
	public List<HistoryPostingRecord> showPostByPhoneAndType(String phone,int type);
    //根据评论人时间 指定时间  指定时间段
	public List<HistoryPostingRecord> postPostByTime(String phone,String startTime ,String endtime  );
	//插入评论记录
	int insertPost(HistoryPostingRecord historyPostingRecord);
	//删除某条记录
	int deletePostingById(long id);
	//查看热帖
	   public List<HotPosting> showHotPosting();
	   //查看自己给别人的所有评论
   public List<RecordHistoricalChanges> showAllSelfReviews(String  fromPhone);
//显示所有pinglun
   public List<RecordHistoricalChanges> showAllreviewlist();
   
	//插入评论
	int  insertrecordHistoricalChanges(RecordHistoricalChanges recordHistoricalChanges);
   
}
