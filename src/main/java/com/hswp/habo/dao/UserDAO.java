package com.hswp.habo.dao;

import com.hswp.habo.dto.UserDTO;

public interface UserDAO {

	public void join(UserDTO dto) throws Exception;
	
	public String idCheck(String id) throws Exception;
	
	public UserDTO login(UserDTO dto) throws Exception;

}
