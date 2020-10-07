<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>

<style>
#prodcTable > tbody > tr > th {
	text-align: center;
}

</style>

<!-- 상품등록 페이지 -->
<div id="container">

    <div id="headerTitle" style="margin: 30px 15px;">
        <div class="where">
            <span class="wh">
                상품 관리 > 상품 등록
            </span>
        </div>
        <div class="mainTitle">
            <h1>상품 등록</h1>
        </div>
    </div>

    <div class="prodcBody">
    
    	<form method="POST" action="/mherp/product/addok.action">
    
        <table class="table table-bordered" id="prodcTable">
            <tbody>
	            <tr class="titleGroup">
	            	<th class="gpName">상품 분류</th>
					<td class="gpSp">
					    <select id="gpselect" name="categoryseq">
						     <option value="0">분류 선택 </option>
						     <option value="1">채소</option>
						     <option value="2">과일</option>
						     <option value="3">육류</option>
						     <option value="4">수산</option>
						     <option value="5">가공식품</option>
						     <option value="6">양념소스</option>
						     <option value="7">유제품</option>
						     <option value="8">건강식품</option>
						     <option value="9">음료</option>
					     </select>
					</td>
	            </tr>
            

                <tr class="titleName">
                    <th class="pdName">상품명</th>
                    <td class="nameSp">
                        <input type="text" name="name" class="txtName">
                    </td>
                </tr>
                
                 

               <!--  <tr class="titleNum">
                     <th class="pdNum">상품 번호</th>
                     <td class="numSp">
                         <input type="text" name="seq" class="txtNum">
                     </td>
                </tr> -->


                <tr class="titlePrice">
                     <th class="gpPrice">상품 금액</th>
                     <td class="priceSp">
                         <input type="text" name="price" class="txtPr"> 원
                     </td>
                    
                 </tr>

                 <tr class="titleExp">
                     <th class="pdExp">상품 요약설명</th>
                     <td class="expSp">
                         <textarea  name="shortdesc" class="txtExp"></textarea>
                     </td>
                     
                 </tr>
                 <tr class="titleDtExp">
                     <th class="pdDtExp">상품 상세설명</th>
                     <td class="dtExpSp">
                         <textarea  name="content" class="txtDtExp"> </textarea>
                     </td>
                 </tr>
                 
                 <tr class="titleInImg">
                     <th class="pdImg">대표 이미지</th>
                     <td class="dtImg">
                          <div class="InImg">
                             <input type="file" name="img" accept="image/*">
                         </div>
                     </td>
                 </tr>
            </tbody>
        </table>
        
        <!-- <input type="hidden" name="categoryseq" id="categoryseq"> -->
    	
        <div>
        	<input type="submit" value="등록" id="btnadd">
        	<input type="button" value="취소" onclick="history.back();">
        </div>
        
        </form>
        
    </div>
</div>


<script>


/* $("#categoryseq").val($("#gpselect option:selected").val()); */

</script>