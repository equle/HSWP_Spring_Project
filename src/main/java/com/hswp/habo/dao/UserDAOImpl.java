package com.hswp.habo.dao;

import javax.inject.Inject;

import org.apache.ibatis.cursor.Cursor;
import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.hswp.habo.dto.UserDTO;

@Repository
public class UserDAOImpl implements UserDAO {

	@Inject SqlSession sql;
	
	@Override
	public void join(UserDTO dto) throws Exception {

		sql.insert("userMapper.join", dto);

	}

	@Override
	public UserDTO login(UserDTO dto) throws Exception {
		
		return sql.selectOne("userMapper.login", dto);
	}

	@Override
	public String idCheck(String id) throws Exception {
		System.out.println(id);
		String st = sql.selectOne("userMapper.idCheck",id);
		System.out.println(st);
		return st;
	}

}
