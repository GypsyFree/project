/**
 * 
 */
package edu.yuying.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import edu.yuying.entity.HistoryPostingRecord;
import edu.yuying.entity.HotPosting;
import edu.yuying.entity.RecordHistoricalChanges;
import edu.yuying.entity.User;

/**
* @author 王林
* @englishname:Grimm
* @githubcount LinLinLinWang
* @version 创建时间：2018年12月27日 下午7:45:21
* 类说明
*/
/**
 * @author 王林
 *
 */

public interface PostInfoDao {
	//显示所有
	 public List<HistoryPostingRecord>showAllPosting();
	//查看指定id的帖子
	  public HistoryPostingRecord showPostById(int  id);
	//查看自己上传过的所有
   public List<HistoryPostingRecord> showPostByPhone(String phone);
   //查看指定类型的说说HistoryPostingRecord
   public List<HistoryPostingRecord> showPostByPhoneByState(String phone,int  state);
   //查看自己指定时间的说说
   public List<HistoryPostingRecord> showPostByPhoneAndTime(String phone,String starttime,String   endtime);
   //插入
   int  insertPost(HistoryPostingRecord historyPostingRecord);
   int  deletePost(long id);
   //查看热帖
   public List<HotPosting> showHotPosting();
   //查看自己的评论
   
   public List<RecordHistoricalChanges> showAllSelfReviews(String  fromPhone);
 //显示所有評論
 	 public List<RecordHistoricalChanges>showAllreviewlist();
 	 //插入评论
 	 int  insertrecordHistoricalChanges(RecordHistoricalChanges recordHistoricalChanges);
}
