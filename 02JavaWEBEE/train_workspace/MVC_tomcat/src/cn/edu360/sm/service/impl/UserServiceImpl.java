package cn.edu360.sm.service.impl;

import org.apache.ibatis.session.SqlSession;

import cn.edu360.sm.dao.UserMapper;
import cn.edu360.sm.model.User;
import cn.edu360.sm.service.UserService;
import cn.edu360.sm.util.MybatisUtil;

public class UserServiceImpl implements UserService {

	@Override
	public User findUserByusernameAndPassword(User user) {
	    SqlSession session=MybatisUtil.getFactory().openSession();
	    UserMapper userMapper=session.getMapper(UserMapper.class);
	    return userMapper.findUserByusernameAndPassword(user);
	}

	@Override
	public User findUserById(Integer userId) {
		SqlSession session=MybatisUtil.getFactory().openSession();
	    UserMapper userMapper=session.getMapper(UserMapper.class);
	    return userMapper.selectByPrimaryKey(userId);
	}

}
