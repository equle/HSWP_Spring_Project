package com.hswp.habo.service;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.hswp.habo.dao.UserDAO;
import com.hswp.habo.dto.UserDTO;

@Service
public class UserServiceImpl implements UserService {

	@Inject UserDAO dao;
	
	@Override
	public void join(UserDTO dto) throws Exception {
		
		dao.join(dto);
		
	}

	@Override
	public UserDTO login(UserDTO dto) throws Exception {

		return dao.login(dto);
	}

	@Override
	public String idCheck(String id) throws Exception {
		System.out.println(id);
		return dao.idCheck(id);
		
	}

}
