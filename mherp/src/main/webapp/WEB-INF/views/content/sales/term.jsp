<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<link rel="stylesheet" href="/mherp/resources/css/term.css" />

<div class="content">

	<!-- main 상단 -->
    <div id="headerTitle">
       <div id="menustep"><span>홈 > 매출 관리 > 기간별 매출내역 조회</span></div>
       <div id="menuname"><span>기간별 매출내역 조회</span></div>
    </div>

   <!-- 탭 메뉴 -->
   <div id="issue">
       <ul class="tabs">
           <li class="active" rel="tab1">년도별</li>
           <li rel="tab2">분기별</li>
       </ul>
       <div class="tab_container">
           <div id="tab1" class="tab_content">
               <table id="tblsearch">
	                <tr>
	                    <th>기간</th>
	                    <td>
	                        <input type="text" class="txtbox" id="txt1" autocomplete="off" />
	                    </td>
	                </tr>
            	</table>
            	
            	<!-- 검색 버튼을 묶는 orderBtn-->
	            <div id="orderBtn">
	               <input type="button" value="검색" id="btn1" class="btnSearch" />
	               <input type="button" value="초기화" id="btn2" class="btnSearch" />
	            </div>
	            
				<!-- 그래프 -->
	            <div id="searchresult" style="width: 1100px; margin: 30px 40px; font-size: 1.2em; font-weight: bold; color: #666666;">
		            <div id="grapbox" style="width: 1100px;">
		                <div id="chart"></div>
		            </div>            
		        </div>
				
				<!-- 검색결과 -->
	            <div id="result">
		            <div id="orderResult">
		                	<span>(검색결과
		                <span style="color: red;">0</span>건)
		                </span>
		            </div>
		            <table id="resultTable" class="table table-bordered">
		            	<thead>
			                <tr>
			                	<th>상품번호</th>
			                    <th>상품명</th>
			                    <th>금액</th>
			                    <th>수량</th>
			                    <th>날짜</th>
			                    <th>총 판매금액</th>
			                </tr>
		                </thead>
		                <tbody>
			                <tr>
			                    <td></td>
			                    <td></td>
			                    <td></td>
			                    <td></td>
			                    <td></td>
			                    <td></td>                           
			                </tr>
		                </tbody>
		            </table>
		        </div>        	
           </div>
           <div id="tab2" class="tab_content">
               <table id="tblsearch">
	                <tr>
	                    <th>기간</th>
	                    <td>
	                        <input type="text" class="txtbox" id="txt1" autocomplete="off" />
	                    </td>
	                </tr>
            	</table>
            	
            	<!-- 검색 버튼을 묶는 orderBtn-->
	            <div id="orderBtn">
	               <input type="button" value="검색" id="btn1" class="btnSearch" />
	               <input type="button" value="초기화" id="btn2" class="btnSearch" />
	            </div>
	            
	            <!-- 그래프 -->
	            <div id="searchresult" style="width: 1100px; margin: 30px 40px; font-size: 1.2em; font-weight: bold; color: #666666;">
		            <div id="grapbox" style="width: 1100px;">
		                <div id="chart2"></div>
		            </div>            
		        </div>
	            
	            <!-- 검색결과 -->
	            <div id="result">
		            <div id="orderResult">
		                	<span>(검색결과
		                <span style="color: red;">0</span>건)
		                </span>
		            </div>
		            <table id="resultTable" class="table table-bordered">
		            	<thead>
			                <tr>
			                	<th>상품번호</th>
			                    <th>상품명</th>
			                    <th>금액</th>
			                    <th>수량</th>
			                    <th>날짜</th>
			                    <th>총 판매금액</th>
			                </tr>
		                </thead>
		                <tbody>
			                <tr>
			                    <td></td>
			                    <td></td>
			                    <td></td>
			                    <td></td>
			                    <td></td>
			                    <td></td>                           
			                </tr>
		                </tbody>
		            </table>
		        </div>
           </div>
       </div>
   </div>
</div>

<script>
	//탭메뉴를 클릭했을 때 탭메뉴의 색깔과 출력되는 정보변경
	$(function () {
	    $(".tab_content").hide();
	    $("ul.tabs li:first").css("background-color", "#08718E");
	    $("ul.tabs li:first").css("color", "white");
	    $(".tab_content:first").show();
	
	    $("ul.tabs li").click(function () {
	        $("ul.tabs li").removeClass("active").css("background-color", "white");
	        $("ul.tabs li").removeClass("active").css("color", "black");
	        $(this).addClass("active").css("background-color", "#08718E");
	        $(this).addClass("active").css("color", "white");
	        $(".tab_content").hide()
	        var activeTab = $(this).attr("rel");
	        $("#" + activeTab).fadeIn()
	    });
	});
	
	$("#txt1").keydown(function() {
		if (event.keyCode == 13) {
			$("#btn1").click();
		}
	});
	
	Highcharts.chart('chart', {

	    title: {
	        text: '년도별 매출 그래프'
	    },

	    yAxis: {
	        title: {
	            text: 'Average monthly sales'
	        }
	    },

	    xAxis: {
	        accessibility: {
	            rangeDescription: 'Range: 1 to 9'
	        }
	    },

	    legend: {
	        layout: 'vertical',
	        align: 'right',
	        verticalAlign: 'middle'
	    },

	    plotOptions: {
	        series: {
	            label: {
	                connectorAllowed: false
	            },
	            pointStart: 1
	        }
	    },

	    series: [{
	        name: 'Sales',
	        data: [43934, 52503, 57177, 69658, 97031, 119931, 137133, 154175]
	    }],

	    responsive: {
	        rules: [{
	            condition: {
	                maxWidth: 500
	            },
	            chartOptions: {
	                legend: {
	                    layout: 'horizontal',
	                    align: 'center',
	                    verticalAlign: 'bottom'
	                }
	            }
	        }]
	    }

	});
	
	Highcharts.chart('chart2', {

	    title: {
	        text: '분기별 매출 그래프'
	    },

	    yAxis: {
	        title: {
	            text: 'Quarterly sales'
	        }
	    },

	    xAxis: {
	        accessibility: {
	            rangeDescription: 'Range: 1 to 6'
	        }
	    },

	    legend: {
	        layout: 'vertical',
	        align: 'right',
	        verticalAlign: 'middle'
	    },

	    plotOptions: {
	        series: {
	            label: {
	                connectorAllowed: false
	            },
	            pointStart: 1
	        }
	    },

	    series: [{
	        name: 'Sales',
	        data: [43934, 52503, 57177, 69658, 97031, 119931, 137133, 154175]
	    }],

	    responsive: {
	        rules: [{
	            condition: {
	                maxWidth: 500
	            },
	            chartOptions: {
	                legend: {
	                    layout: 'horizontal',
	                    align: 'center',
	                    verticalAlign: 'bottom'
	                }
	            }
	        }]
	    }

	});
</script>