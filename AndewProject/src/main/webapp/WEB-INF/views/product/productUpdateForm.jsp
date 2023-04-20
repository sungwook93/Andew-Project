<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c"	uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>
<%	request.setCharacterEncoding("UTF-8"); %>

<!DOCTYPE html>
	<html>
		<head>
			<meta charset="UTF-8">
			<title>게시글 등록 화면</title>
			<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
			<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
			<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
			<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>	
			<link href="${contextPath}/resources/css/menu.css" rel="stylesheet" type="text/css">	
			<link href="${contextPath}/resources/css/product.css" rel="stylesheet" type="text/css">
			<script src="${contextPath}/resources/js/product.js"></script>	
		</head>
		<body>
		
			<!-- 상단 메뉴 -->
			<jsp:include page="../common/topMenu.jsp" flush="false"/>
				
			<div id="mainTitle">
				<hr/>
				<h1>상품 수정</h1>
			</div>
					
			<div class="container">
				<table id="pdRegTable">
					<tr>
						<td>
							<br/> <!-- 간격 벌리기 -->
						</td>
					</tr>
					<tr class="pdRegTr">
						<td class="tdTitle">상품명</td>
						<td><input type="text" id="product_name" value="${productDTO.product_name}" maxlength = "200"/></td>
					</tr>
					<tr class="pdRegTr">
						<td class="tdTitle">상품 가격</td>
						<td>
							<input type="number" id="product_price" value="${productDTO.product_price}" maxlength = "20"/>
						</td>
					</tr>
					<tr class="pdRegTr">
						<td>
							상품 타입
						</td>
						<td>
							<select id="product_type">
								<option value="top"<c:if test="${productDTO.product_type =='top'}">selected</c:if>>TOP</option>
								<option value="bottom"<c:if test="${productDTO.product_type =='bottom'}">selected</c:if>>BOTTOM</option>
								<option value="outer"<c:if test="${productDTO.product_type =='outer'}">selected</c:if>>OUTER</option>
								<option value="acc"<c:if test="${productDTO.product_type =='acc'}">selected</c:if>>ACC</option>
							</select>
						</td>
					</tr>
					<tr class="pdRegTr">
						<td>
							상품 이미지
						</td>
						<td>
							<input type="file" id="file" multiple/>
						</td>
					</tr>
					<tr>
						<td>
							<br/> <!-- 간격 벌리기 -->
						</td>
					</tr>						
					<tr class="pdRegTr" id="pdRegTrBtn">
						<td colspan="2">
							<h1></h1>
							<button type="button" class="btn btn-light" onclick="fn_productUpdate()">해당 상품 수정하기</button>
							<button type="button"  class="btn btn-light" onclick="location.href='/main.do'">main</button>					
						</td>
					</tr>
					<tr>
						<td>
							<br/> <!-- 간격 벌리기 -->
						</td>
					</tr>
					<tr>
						<td>
							<br/> <!-- 간격 벌리기 -->
						</td>
					</tr>										
				</table>
				
				<!-- 함수 사용을 위한 hidden input -->
				<div>
					<input type="hidden" id="product_code" value="${productDTO.product_code}"/>
					<input type="hidden" id="originPdName" value="${productDTO.product_name}"/>
					<input type="hidden" id="originPdPrice" value="${productDTO.product_price}"/>
					<input type="hidden" id="originPdType" value="${productDTO.product_type}"/>
				</div>
			</div>
			
			<!-- 하단 메뉴바 -->
			<jsp:include page = "../common/footer.jsp" flush = "false"/>
	</html>








