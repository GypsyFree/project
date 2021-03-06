package edu.yuying.service;

import java.util.List;

import edu.yuying.entity.User;



public interface UserService {
	//用户插入是否成功
	public boolean registeUser(User user);
   //用户是否已经存在 根据phone
	public boolean user_exist(String phone);
	//返回用户 
	public User user_exist_returnUser(String phone);
	//返回用户 
	public User user_exist_returnUser_byCOnnect(String connect);
	//用户是否存在  根据phone 密码
	public boolean user_exist(String phone,String pwd);
	//用户修改信息
	public boolean  userUpdate(User user);
	//用户修改手机号
	public int  userPhoneUpdate(String phone,String newPhone);
   //获取所有用户信息
	public List<User>  queryAlLUser();
	//用户修改信息
	public boolean  userUpdateByConnect(User user);
	 
}
