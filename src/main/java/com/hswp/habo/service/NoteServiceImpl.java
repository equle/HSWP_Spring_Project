package com.hswp.habo.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.hswp.habo.dao.NoteDAO;
import com.hswp.habo.dto.NoteDTO;

@Service
public class NoteServiceImpl implements NoteService {

	@Inject NoteDAO dao;
	
	@Override
	public void write(NoteDTO dto) throws Exception {
		// TODO Auto-generated method stub
		System.out.println(dto.getTitle());
		System.out.println(dto.getContents());
		System.out.println(dto.getCategory());
		System.out.println(dto.getParts());
		dao.write(dto);
	}

	@Override
	public List<NoteDTO> list() throws Exception {

		return dao.list();
	}

	@Override
	public NoteDTO read(int num) throws Exception {

		return dao.read(num);
	}

	@Override
	public void update(NoteDTO dto) throws Exception {

		dao.update(dto);
	}

	@Override
	public void delete(int num) throws Exception {

		dao.delete(num);
	}

}
