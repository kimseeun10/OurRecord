package com.record.main.freeboard;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.record.main.util.Pager;

@Service
public class FreeService {

	@Autowired
	private FreeDAO freeDAO;
	
	public List<FreeVO> getFreeList(Pager pager) throws Exception{
		pager.setPerPage(10L);
		pager.makeRowNum();
		
		Long totalCount = freeDAO.getTotal(pager);
		
		pager.makePageNum(totalCount);
		
		return freeDAO.getFreeList(pager);
	}
	
	public FreeVO freeDetail(FreeVO freeVO) throws Exception{
		return freeDAO.freeDetail(freeVO);
	}
	
	public FreeVO movePage(Long freeNum) throws Exception{
		return freeDAO.movePage(freeNum);
	}
	
	public int freeAdd(FreeVO freeVO) throws Exception{
		Long categoryNum = freeVO.getCategoryNum();
		
		
		return freeDAO.freeAdd(freeVO);
	}
	
	public int categoryAdd(FreeVO freeVO) throws Exception{
		return freeDAO.categoryAdd(freeVO);
	}
	
	public int freeUpdate(FreeVO freeVO) throws Exception{
		return freeDAO.freeUpdate(freeVO);
	}
	
	public int freeDelete(FreeVO freeVO) throws Exception{
		return freeDAO.freeDelete(freeVO);
	}
	
	public int hitUpdate(FreeVO freeVO) throws Exception{
		return freeDAO.hitUpdate(freeVO);
	}
	
	public List<FreeVO> getCategoryList() throws Exception{
		return freeDAO.getCategoryList();
				
	}
}
