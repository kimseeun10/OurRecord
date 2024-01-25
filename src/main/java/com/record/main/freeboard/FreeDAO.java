package com.record.main.freeboard;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.record.main.util.Pager;

@Mapper
public interface FreeDAO {

	public Long getTotal(Pager pager) throws Exception;
	
	public List<FreeVO> getFreeList(Pager pager) throws Exception;
	
	public List<FreeVO> getCategoryList() throws Exception; // 카테고리 옵션에 넣을 값 
	
	public FreeVO movePage(Long freeNum) throws Exception;
	
	public int freeAdd(FreeVO freeVO) throws Exception;
	
	public int categoryAdd(FreeVO freeVO) throws Exception; // 카테고리 추가 
	
	public FreeVO freeDetail(FreeVO freeVO) throws Exception;
	
	public int freeUpdate(FreeVO freeVO) throws Exception;
	
	public int freeDelete(FreeVO freeVO) throws Exception;
	
	public int hitUpdate(FreeVO freeVO) throws Exception;
	
}
