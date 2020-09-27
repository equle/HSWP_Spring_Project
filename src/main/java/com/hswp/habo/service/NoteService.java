package com.hswp.habo.service;

import java.util.List;

import com.hswp.habo.dto.NoteDTO;

public interface NoteService {

	public void write(NoteDTO dto) throws Exception;
	
	public List<NoteDTO> list() throws Exception;
	
	public NoteDTO read(int num) throws Exception;
	
	public void update(NoteDTO dto) throws Exception;
	
	public void delete(int num) throws Exception;
	
}
