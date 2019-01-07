
package edu.yuying.entity;

import java.math.BigInteger;
import java.sql.Timestamp;
/**
* @author 王林
* @englishname:Grimm
* @githubcount LinLinLinWang
* @version 创建时间：2018年12月25日 上午11:29:39
* 类说明
*/
/**
 * @author 王林
 *
 */

public class RecordHistoricalChanges {
	private   int id;//在谁的说说下？
	private String sendPhone;
	private String receivePhone;
    private	String Content;
    private Timestamp time;
    private User fromuser;//一条回复就对应一个回复的人
    private User touser;//一条回复就对应一个被回复的人
    //一条帖子对应着一条原文章
    private HistoryPostingRecord historyPostingRecord;
	public HistoryPostingRecord getHistoryPostingRecord() {
		return historyPostingRecord;
	}
	public void setHistoryPostingRecord(HistoryPostingRecord historyPostingRecord) {
		this.historyPostingRecord = historyPostingRecord;
	}
	/**
	 * @return the id
	 */
	public int getId() {
		return id;
	}
	/**
	 * @param id the id to set
	 */
	public void setId(int id) {
		this.id = id;
	}
	/**
	 * @return the sendPhone
	 */
	public String getSendPhone() {
		return sendPhone;
	}
	/**
	 * @param sendPhone the sendPhone to set
	 */
	public void setSendPhone(String sendPhone) {
		this.sendPhone = sendPhone;
	}
	/**
	 * @return the receivePhone
	 */
	public String getReceivePhone() {
		return receivePhone;
	}
	/**
	 * @param receivePhone the receivePhone to set
	 */
	public void setReceivePhone(String receivePhone) {
		this.receivePhone = receivePhone;
	}
	/**
	 * @return the content
	 */
	public String getContent() {
		return Content;
	}
	/**
	 * @param content the content to set
	 */
	public void setContent(String content) {
		Content = content;
	}
	/**
	 * @return the time
	 */
	public Timestamp getTime() {
		return time;
	}
	/**
	 * @param time the time to set
	 */
	public void setTime(Timestamp time) {
		this.time = time;
	}
	/**
	 * @return the fromuser
	 */
	public User getFromuser() {
		return fromuser;
	}
	/**
	 * @param fromuser the fromuser to set
	 */
	public void setFromuser(User fromuser) {
		this.fromuser = fromuser;
	}
	/**
	 * @return the touser
	 */
	public User getTouser() {
		return touser;
	}
	/**
	 * @param touser the touser to set
	 */
	public void setTouser(User touser) {
		this.touser = touser;
	}
	
    
}

