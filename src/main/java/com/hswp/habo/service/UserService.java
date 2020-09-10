package com.hswp.habo.service;

import com.hswp.habo.dto.UserDTO;

public interface UserService {

	
	//회원가입
	public void join(UserDTO dto) throws Exception;
	
	//idCheck
	public String idCheck(String id) throws Exception;
	
	//로그인
	public UserDTO login(UserDTO dto) throws Exception;
}
