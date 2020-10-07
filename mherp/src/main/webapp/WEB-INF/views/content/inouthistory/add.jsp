<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<style>
/* 상품등록 css */
.prodcBody {
	width: 1600px;
}

.where {
	font-size: 1.2em;
	color: #999;
}

.mainTitle {
	width: 0 auto;
}

.mainTitle h1 {
	/* border: 1px solid blueviolet; */
	font-size: 2em;
	font-weight: bold;
	/* height: 60px; */
}

#prodcTable {
	padding: 30px;
}

#prodcTable th {
	/* width: 150px; */
	height: auto;
	padding: 10px;
	text-align: center;
}

#prodcTable td .txtName {
	width: 500px;
	height: 25px;
}

#prodcTable td .gpselect {
	width: 200px;
	height: 25px;
}

#prodcTable td .txtNum {
	width: 500px;
	height: 25px;
}

#prodcTable td .txtPr {
	width: 500px;
	height: 25px;
}

textarea {
	resize: none;
	width: 800px;
	height: 150px;
}

.InImg {
	padding: 30px;
	margin-left: 70px;
}

#inBtn {
	padding: 10px;
}

#inBtn button {
	text-align: center;
	width: 185px;
	height: 50px;
	background-color: #08718E;
	border: 1px solid white;
	border-radius: 3px;
	margin: auto;
	position: absolute;
	left: 900px;
}

/* modal css */
.modal-body {
	font-size: 1.5em;
	text-align: center;
	padding: 50px;
}

.modal-footer {
	text-align: center;
}

.modal-footer #yyeess {
	width: 70px;
	height: 40px;
	background-color: #08718E;
	border: 1px solid white;
	color: white;
	border-radius: 3px;
	margin-right: 10px;
}

.modal-footer #nnoo {
	width: 70px;
	height: 40px;
	background-color: white;
	border: 1px solid #08718E;
	color: teal;
	border-radius: 3px;
}

#isBtn {
	margin-left: 10px;
	
}
</style>

<body>
	<!-- 메인 안에서 부터 구현하시면 됩니다. -->
	<!-- <div id="main"> -->

	<!-- 상품등록 페이지 -->
	<div id="container">

		<div id="headerTitle" style="margin: 30px 15px;">
			<div class="where">
				<span class="wh"> 홈 > 입출고관리 > 입고 상품 신규 등록 </span>
			</div>
			<div class="mainTitle">
				<h1>입고 상품 신규 등록</h1>
			</div>
		</div>

		<div class="prodcBody">
			<table class="table table-bordered" id="prodcTable">
				<tbody>
					<tr class="titleName">
						<th class="pdName">상품명
						<td class="nameSp">
						<input type="text" name="isProductName" class="txtName" >
							 <input type="button" value="검색" id="isBtn" >
						
							
							
							</td>
						</th>
					</tr>

					<tr class="titleGroup">
						<th class="gpName">상품 번호
						<td class="gpSp"><input type="text" name="productseq"
							class="txtNum" readonly></td>
						</th>
					</tr>

					<tr class="titleNum">
						<th class="pdNum">상품 가격
						<td class="numSp"><input type="text" name="isProductNum"
							class="txtNum" readonly></td>
						</th>
					</tr>

					
					
					<tr class="titlePrice">
						<th class="gpPrice">입고 날짜
						<td class="priceSp"><input type="date" name="regdate" id="currentDate"
							class="txtPr"></td>
						</th>
					</tr>

					<tr class="titleExp">
						<th class="pdExp">수량
						<td class="expSp"><input type="text" name="qty"
							class="txtPr"></textarea></td>
						</th>
					</tr>

				</tbody>
			</table>
			<div id="inBtn">
				<button class="btn btn-lg btn-danger" data-toggle="modal"
					data-target="#myModal">등록</button>
			</div>

			<!-- Modal -->
			<div class="modal fade" id="myModal" tabindex="-1" role="dialog"
				aria-labelledby="myModalLabel" aria-hidden="true">
				<div class="modal-dialog">
					<div class="modal-content">
						<div class="modal-body">입고 상품을 등록하시겠습니까?</div>
						<div class="modal-footer">
							<button type="button" id="yyeess" data-dismiss="modal">네</button>
							<button type="button" data-dismiss="modal" id="nnoo">아니요</button>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>




	<!--   </div> -->
	
	

	<script>
	
		function enterSearch() {
			if(event.keyCode == 13) {
				myFunction();
			}
		}
		
		function myFunction() {
			var x = document.getElementById("text").value;
			
		}
	
		/*  날짜 입력 때 오늘날짜가 자동으로 설정되도록 */
		document.getElementById('currentDate').value = new Date().toISOString().substring(0,10);
	
		$("#yyeess").click(function() {
			location.href = "";
		});
		
		
		
	</script>
	<script src="/mh/js/admin_template.js"></script>

</body>
</html>