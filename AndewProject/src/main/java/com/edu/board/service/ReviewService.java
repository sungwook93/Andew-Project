package com.edu.board.service;

import java.util.List;

import com.edu.board.dto.ReviewDTO;
import com.edu.common.util.ReviewCriteria;
import com.edu.product.dto.OrderDTO;

//-----------------------------------------------------------------------------------------------------------
// public interface ReviewService
//-----------------------------------------------------------------------------------------------------------
public interface ReviewService {

	//-----------------------------------------------------------------------------------------------------------
	// 리뷰 등록하기
	//-----------------------------------------------------------------------------------------------------------
	public int reviewRegister(ReviewDTO reviewDTO) throws Exception;
	
	//-----------------------------------------------------------------------------------------------------------
	// 해당 상품 리뷰 목록 보기
	//-----------------------------------------------------------------------------------------------------------
	public List<ReviewDTO> reviewProductList(ReviewCriteria rCri) throws Exception;
	
	//-----------------------------------------------------------------------------------------------------------
	// 리뷰 전체 목록 보기 + paging
	//-----------------------------------------------------------------------------------------------------------
	public List<ReviewDTO> reviewList(ReviewCriteria rCri) throws Exception;		
	
	//-----------------------------------------------------------------------------------------------------------
	// 리뷰 목록에서 회원 아이디 익명화 후 목록 반환
	//-----------------------------------------------------------------------------------------------------------	
	public List<ReviewDTO> userIDAnony(List<ReviewDTO> reviewList) throws Exception;
	
	//-----------------------------------------------------------------------------------------------------------
	// 리뷰 목록에서 리뷰 제목 보이는 글자 수 제한 후 목록 반환
	//-----------------------------------------------------------------------------------------------------------
	public List<ReviewDTO> reviewSubAnony(List<ReviewDTO> reviewList) throws Exception;
	
	//-----------------------------------------------------------------------------------------------------------
	// 리뷰 목록에서 리뷰 내용 보이는 글자 수 제한 후 목록 반환
	//-----------------------------------------------------------------------------------------------------------
	public List<ReviewDTO> reviewConAnony(List<ReviewDTO> reviewList) throws Exception;
	
	//해당 상품 리뷰 전체 갯수 구하기
	public int reviewTotalCount(ReviewCriteria rCri) throws Exception;
	
	//-----------------------------------------------------------------------------------------------------------
	// 리뷰 삭제하기
	//-----------------------------------------------------------------------------------------------------------
	public int reviewDelete(int review_bno);	
	
	
	//회원 아이디 + 상품코드에 대한 리뷰 가져오기
	public ReviewDTO getReviewDTO(OrderDTO orderDTO)  throws Exception;
} // end public interface ReviewService