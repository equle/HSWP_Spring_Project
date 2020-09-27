package com.hswp.habo.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.hswp.habo.dto.NoteDTO;

@Repository
public class NoteDAOImpl implements NoteDAO {

	@Inject SqlSession sql;
	
	@Override
	public void write(NoteDTO dto) throws Exception {

		sql.insert("noteMapper.write", dto);
	}

	@Override
	public List<NoteDTO> list() throws Exception {
		
		return sql.selectList("noteMapper.list");
	}

	@Override
	public NoteDTO read(int num) throws Exception {
		
		return sql.selectOne("noteMapper.read", num);
	}

	@Override
	public void update(NoteDTO dto) throws Exception {

		sql.update("noteMapper.update", dto);
		
	}

	@Override
	public void delete(int num) throws Exception {

		sql.delete("noteMapper.delete", num);
	}

}
