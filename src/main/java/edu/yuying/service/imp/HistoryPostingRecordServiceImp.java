/**
 * 
 */
package edu.yuying.service.imp;

import java.math.BigInteger;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import edu.yuying.dao.CommentDao;
import edu.yuying.dao.PostInfoDao;
import edu.yuying.entity.HistoryPostingRecord;
import edu.yuying.entity.HotPosting;
import edu.yuying.entity.RecordHistoricalChanges;
import edu.yuying.entity.User;

/**
* @author 王林
* @englishname:Grimm
* @githubcount LinLinLinWang
* @version 创建时间：2018年12月28日 下午4:22:24
* 类说明
*/
/**
 * @author 王林
 *
 */
@Service
public class HistoryPostingRecordServiceImp implements edu.yuying.service.HistoryPostingRecordService {
	@Resource
	PostInfoDao postInfoDao;
	/* (non-Javadoc)
	 * @see edu.yuying.service.HistoryPostingRecordService#showHistoryPost(java.lang.String)
	 */
	@Override
	public List<HistoryPostingRecord> showHistoryPost(String fromphone) {
		// TODO Auto-generated method stub
		
		return postInfoDao.showPostByPhone(fromphone);
	}

	/* (non-Javadoc)
	 * @see edu.yuying.service.HistoryPostingRecordService#showPostByPhoneAndType(java.lang.String, int)
	 */
	@Override
	public List<HistoryPostingRecord> showPostByPhoneAndType(String phone, int type) {
		// TODO Auto-generated method stub
		return postInfoDao.showPostByPhoneByState(phone, type);
	}

	/* (non-Javadoc)
	 * @see edu.yuying.service.HistoryPostingRecordService#postPostByTime(java.lang.String, java.lang.String, java.lang.String)
	 */
	@Override
	public List<HistoryPostingRecord> postPostByTime(String phone, String starttime, String endtime ) {
		// TODO Auto-generated method stub
		return postInfoDao.showPostByPhoneAndTime(phone, starttime, endtime);
	}

	/* (non-Javadoc)
	 * @see edu.yuying.service.HistoryPostingRecordService#insertRecordHistoricalChanges(edu.yuying.entity.RecordHistoricalChanges)
	 */
	@Override
	public int insertPost(HistoryPostingRecord historyPostingRecord) {
		// TODO Auto-generated method stub
		return postInfoDao.insertPost(historyPostingRecord);
	}

	/* (non-Javadoc)
	 * @see edu.yuying.service.HistoryPostingRecordService#deletePostingById(int)
	 */
	@Override
	public int deletePostingById(long id) {
		// TODO Auto-generated method stub
		return postInfoDao.deletePost(id);
	}

	@Override
	public List<HotPosting> showHotPosting() {
		// TODO Auto-generated method stub
		return  postInfoDao.showHotPosting();
		
	}

	/* (non-Javadoc)
	 * @see edu.yuying.service.HistoryPostingRecordService#showPostById(int)
	 */
	@Override
	public HistoryPostingRecord showPostById(int id) {
		// TODO Auto-generated method stub
		return postInfoDao.showPostById(id);
	}

	/* (non-Javadoc)
	 * @see edu.yuying.service.HistoryPostingRecordService#showAllSelfReviews()
	 */
	@Override
	public List<RecordHistoricalChanges> showAllSelfReviews(String  fromPhone) {
		// TODO Auto-generated method stub
		return postInfoDao.showAllSelfReviews(  fromPhone);
	}

	/* (non-Javadoc)
	 * @see edu.yuying.service.HistoryPostingRecordService#showAllPosting()
	 */
	@Override
	public List<HistoryPostingRecord> showAllPosting() {
		// TODO Auto-generated method stub
		return  postInfoDao.showAllPosting();
	}

	/* (non-Javadoc)
	 * @see edu.yuying.service.HistoryPostingRecordService#showAllreviewlist(java.lang.String)
	 */
	@Override
	public List<RecordHistoricalChanges> showAllreviewlist() {
		// TODO Auto-generated method stub
		return postInfoDao.showAllreviewlist();
	}

	/* (non-Javadoc)
	 * @see edu.yuying.service.HistoryPostingRecordService#insertrecordHistoricalChanges(edu.yuying.entity.RecordHistoricalChanges)
	 */
	@Override
	public int insertrecordHistoricalChanges(RecordHistoricalChanges recordHistoricalChanges) {
		// TODO Auto-generated method stub
		return postInfoDao.insertrecordHistoricalChanges(recordHistoricalChanges);
	}

}
