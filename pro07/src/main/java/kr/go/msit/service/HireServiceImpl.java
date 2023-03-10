package kr.go.msit.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.go.msit.dto.HireDTO;
import kr.go.msit.model.HireDAO;

@Service
public class HireServiceImpl implements HireService{
	
	@Autowired
	private HireDAO hireDAO;

	@Override
	public List<HireDTO> hireList() throws Exception {
		return hireDAO.hireList();
	}
	
	@Override
	public HireDTO hireDetail(int seq) throws Exception {
		return hireDAO.hireDetail(seq);
	}
	
	public void hireInsert(HireDTO dto) throws Exception {
		hireDAO.hireInsert(dto);
	}
	
	@Override
	public void hireDelete(int seq) throws Exception {
		hireDAO.hireDelete(seq);
	}
	
	@Override
	public void hireEdit(HireDTO dto) throws Exception {
		hireDAO.hireEdit(dto);
	}

}
