<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<link rel="stylesheet" href="/mherp/resources/css/sales.css" />

<div class="content">
	
	<!-- main 상단 -->
    <div id="headerTitle">
       <div id="menustep"><span>홈 > 매출 관리 > 제품별 매출내역 조회</span></div>
       <div id="menuname"><span>제품별 매출내역 조회</span></div>
    </div>
    
    <table id="tblsearch">
        <tr>
            <th>검색어</th>
            <td>
                <input type="text" class="txtbox" id="txt1" />
            </td>
        </tr>
    </table>
    
    <!-- 검색 버튼을 묶는 orderBtn-->
    <div id="orderBtn">
        <input type="button" value="검색" id="btn1" class="btnSearch" />
        <input type="button" value="초기화" id="btn2" class="btnSearch" />
    </div>
    
    <!-- 검색결과 -->
    <div id="result">
        <div id="orderResult">검색결과 ( <span id="resultCount" style="color: red;">0</span>건 )</div>
        <table id="resultTable" class="table table-bordered">
            <tr class="resultList">
                <th id="thnum">제품번호</th>
                <th id="thname">상품명</th>
                <th id="thprice">금액</th>
                <th id="thqty">수량</th>
                <th id="thdate">날짜</th>
                <th id="thcate">총 판매금액</th>
            </tr>

            <tr class="resultList"> 
                <td>1</td>
                <td>2020.07.24</td>
                <td >
                    <div class="productCategory overflowtd">
                        <div>채소</div>
                        <div>채소</div>
                        <div>채소</div>
                    </div>
                </td>
                <td>
                    <div class="productName overflowtd">
                        <div>초당옥수수</div>
                        <div>초당옥수수</div>
                        <div>초당옥수수</div>
                    </div>
                </td>
                <td>
                    <div class="productQty overflowtd">
                        <div>4</div>
                        <div>4</div>
                        <div>4</div>
                    </div>
                </td>
                <td>23000</td>
            </tr>

            <tr class="resultList" rowspan="3">
                <td>2</td>
                <td>2020.07.24</td>
                <td>
                    <div class="productCategory overflowtd">
                        <div>과일</div>
                        <div>과일</div>
                        <div>과일</div>
                    </div>
                </td>
                <td>
                    <div class="productName overflowtd">
                        <div>복숭아</div>
                        <div>복숭아</div>
                        <div>복숭아</div>
                    </div>
                </td>
                <td>
                    <div class="productQty overflowtd">
                        <div>4</div>
                        <div>4</div>
                        <div>4</div>
                    </div>
                </td>
                <td>12000</td>
            </tr>
        </table>
    </div>
	
</div>

<script>

    
});
</script>