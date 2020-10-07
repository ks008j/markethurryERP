<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<style>
/* 상단 헤더 */
#menustep>span {
	font-size: 1.2em;
	color: #999999;
}

#menuname>span {
	font-size: 2em;
	font-weight: bold;
	color: #666666;
}

/* 상단 헤더 */
#menustep>span {
	font-size: 1.2em;
	color: #999999;
}

#menuname>span {
	font-size: 2em;
	font-weight: bold;
	color: #666666;
}

#menustep {
	margin-bottom: 15px;
}

#headerTitle {
	width: 1570px;
	margin: 30px auto;
}

#tblrecentlist {
	border-collapse: collapse;
	border: 1px solid #ccc;
	padding: 10px;
	margin: 0px auto;
}

#tblrecentlist td, #tblrecentlist th {
	border: 1px solid #ccc;
	height: 40px;
	text-align: center;
}

#tblrecentlist th:nth-child(1) {
	width: 130px;
}

#tblrecentlist th:nth-child(2) {
	width: 240px;
}

#tblrecentlist th:nth-child(5) {
	width: 250px;
}

#tblrecentlist th {
	text-align: center;
	width: 100px;
	font-size: 1.2em;
	font-weight: bold;
	background-color: #F3F3F3;
}

/* 테이블 */
#tblsearch {
	border-collapse: collapse;
	border: 1px solid #ccc;
	padding: 10px;
	width: 530px;
}

#tblsearch td, #tblsearch th {
	border: 1px solid #ccc;
	height: 50px;
}

#tblsearch th {
	text-align: center;
	width: 100px;
	font-size: 1.2em;
	font-weight: bold;
	background-color: #F3F3F3;
}

.txtbox {
	height: 30px;
	width: 330px;
	border: 1px solid #aaa;
	margin-left: 15px;
	padding-left: 10px;
}

.numbox {
	height: 30px;
	width: 150px;
	border: 1px solid #aaa;
	margin-left: 15px;
	padding-left: 10px;
}

.datepick {
	height: 30px;
}

.ui-datepicker-week-end .ui-state-default {
	color: RED;
}

.hasDatepicker {
	width: 130px;
	height: 30px;
	margin: 0px 10px;
	text-align: center;
	margin-left: 15px; 
	padding-left: 10px; 
	border: 1px solid #aaa;
}

#orderBtn {
	width: 530px;
	margin: 0px auto;
	margin-top: 30px;
	text-align: center;
	padding-bottom: 30px;
}

.btnSearch {
	outline: none;
	background-color: white;
	border: 1px solid #ccc;
	font-weight: bold;
	width: 100px;
	height: 40px;
	padding-top: 10px;
	padding-bottom: 25px;
}


</style>


<div id="headerTitle">
	<div id="menustep">
		<span>홈 > 재고관리 > 재고조정 내역관리</span>
	</div>
	<div id="menuname">
		<span>재고조정 내역관리</span>
	</div>
</div>
<!-- 물품별, 수량별, 기간별 -->
<div style="display: flex; margin: 0px auto;">
	
	<!-- left side -->
	<div>
		<form method="POST" action="/mherp/inventory/enrollinventoryok.action"
		id="enrollinventory">
		<table id="tblsearch">
			<tr>
				<th>상품명</th>
				<td><input type="text" class="txtbox" name="pname" required /></td>
			</tr>
			<tr>
				<th>직원명</th>
				<td><input type="text" class="txtbox" name="ename" required /></td>
			</tr>
			<tr>
				<th>조정수량</th>
				<td>
					<input type="text" class="numbox" /> - 
					<input type="text" class="numbox" />
				</td>
			</tr>
			<tr>
				<th>조정날짜</th>
				<td>
					<input type="text" class="datepickerimg dtpiker" name="regdate" required />
					<input type="text" class="datepickerimg dtpiker" name="regdate" required />
				</td>
			<tr>
		</table>
		<div id="orderBtn">
			<input type="submit" value="등록" style="background-color: #ccc;"
				class="btnSearch" />
		</div>
	</form>
	</div>
	
	<table id="tblrecentlist">
		<tr>
			<th>재고조정번호</th>
			<th>상품명</th>
			<th>직원명</th>
			<th>조정날짜</th>
			<th>조정사유</th>
			<th>조정수량</th>
		</tr>
		<c:forEach items="${list}" var="idto">
			<tr>
				<td>${idto.seq}</td>
				<td>${idto.productseq}</td>
				<td>${idto.employeeseq}</td>
				<td>${idto.regdate}</td>
				<td>${idto.reason}</td>
				<td>${idto.qty}</td>
			</tr>
		</c:forEach>
	</table>
</div>

<script>
</script>

