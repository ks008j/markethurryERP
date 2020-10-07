<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<style>
#resultTable th, td {
	text-align: center;
}

/* 결과 - 상품금액 오른쪽 정렬  */
#resultTable td:nth-child(5) {
	text-align: right;
}

#sel1, #sel2 {
	width: 110px;
}

#searchOrder > div > div {
	display: inline-block;
}
</style>



<div id="container">

	<h3>상품관리 > 상품 조회</h3>


	<!-- 종류별 검색을 진행하는 div#searchOrder -->
        <div id="searchOrder">
            <div id="SearchWord">
                <div>상품 조회</div>
                <select id="sel1">
                    <option>조건 선택</option>
                    <option>상품명</option>
                    <option>상품 분류</option>
                    <option>상품 번호</option>
                </select>
                <input type="text" id="txtsearch" class="txt" name="search">
            </div>

			<div id="period">
                <div>최종 판매일</div>
                <input type="text" id="date1" class="txt" style="margin-left: 10px; margin-top: 11px;" disabled>
                <span style="margin: auto 20px;">~</span>
                <input type="text" id="date2" class="txt" disabled>
            </div>
            

            <div id="product">
                <div>정렬 기준</div>
                <select id="sel2">
                    <option>기준 선택</option>
                    <option>상품 번호</option>
                    <option>판매량</option>
                    <option>최종 판매일</option>
                </select>
            </div>
            
        </div>

        <!-- 검색 버튼을 묶는 orderBtn-->
        <div id="orderBtn">
            <input type="button" value="검색" id="btnsearch">
            <input type="button" value="초기화" id="btnclear">
            <input type="button" value="수정" id="btnedit" onclick="">
        </div>
        
   

        <!-- 검색 결과 헤더를 묶는 div#ResultHeader -->
        <div id="searchresult">▶ 검색결과</div>

        <div id="result">
            <div id="orderResult">검색결과 ( <span id="resultCount" style="color: red;">${list.size()}</span>건 )</div>
        

        <!-- 검색 결과 내용을 묶는 div#result -->
        <!-- <div style="width: 1570px; margin: 20px 55px;"> -->
            <table id="resultTable" class="table table-bordered">
                <tr style="text-align:center;">
                    <th>
                        <input type="checkbox" id="allCheck">
                    </th>
                    <th>상품번호</th>
                    <th>상품 분류</th>
                    <th>상품명</th>
                    <th>상품 가격</th>
                    <th>판매량</th>
                    <th>최종 판매일</th>
                </tr>
                

                <c:forEach items="${list}" var="dto">
                
                <tr>
                	<td><input type="checkbox" class="productCheck"></td>
                    <td>${dto.seq}</td>
                    <td>${dto.category}</td>
                    <td>${dto.name}</td>
                    <td class="price">${dto.price}</td>
                    <td>${dto.sales}</td>
                    <td class="odate">${dto.odate}</td>
                </tr>
                
                </c:forEach>
                
                
                <c:if test="${list.size() == 0}">
	           	<tr style="text-align:center;">
	           		<td colspan="6">검색 결과가 없습니다.</td>
	           	</tr>                    	
		        </c:if>
	
                
                <!-- <tr>
                    <td>
                        <input type="checkbox" class="productCheck">
                    </td>
                    <td>125</td>
                    <td>채소</td>
                    <td>애호박 1개</td>
                    <td class="tblPrice"><span>1,480</span><span>원</span></td>
                    <td>100</td>
                    <td>2020-07-11</td>
                </tr> -->
                
            </table>

        </div>

</div>



<script>

	$("#btnclear").click(function() {
		$(".txt").val("");
	});
		

	
	// 천단위 , 찍기
    function numberWithCommas(x) {
        return x.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",");
    }
	
    $(".price").each(function(index, item){
    	var beforeprice = $(item).text();
    	$(item).text(numberWithCommas(beforeprice));
    })
    
    
    // 체크박스 전체선택
    var check = true;

    $("#allCheck").click(function() {
        if (check) {
            $("input:checkbox[class=productCheck]").each(function() {
                this.checked = check;
            });
            check = false;
        } else {
            $("input:checkbox[class=productCheck]").each(function() {
                this.checked = check;
            });
            check = true;
        }
    });
    
    
    
    
      
    //검색어 붙게끔  
    $("#txtsearch").keyup(function() {

	    if(event.keyCode ==  13){
	    	var search = $("#txtsearch").val();
	    	/* location.href="/product/search.action?search="+search;
	    	
	    	$.ajax({
	    		type:"GET",
	    		url:"/product/searchok.action",
	    		data:"search=" + $("#txtsearch").val(),
	    		dataType:"text",
	    		success: function(result){
	    			alert("search")
	    		},
	    		error: function(a,b,c){
	    			console.log(a,b,c);
	    		}
	    	}) */
	    }
    });


    $("#btnsearch").click(function(){
    	var search = $("#txtsearch").val();
    	/* location.href="/product/search.action?search=" +search; */
    	
    	
    /* 	$.ajax({
    		type:"GET",
    		url:"/product/searchok.action",
    		data:"search=" + $("#txtsearch").val(),
    		dataType:"text",
    		success: function(result){
    			alert("search")
    		},
    		error: function(a,b,c){
    			console.log(a,b,c);
    		}
    	}) */
    })

</script>