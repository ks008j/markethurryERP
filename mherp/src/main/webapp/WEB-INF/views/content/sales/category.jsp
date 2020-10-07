<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<link rel="stylesheet" href="/mherp/resources/css/sales.css" />

<div class="content">
	
	<!-- main 상단 -->
    <div id="headerTitle">
       <div id="menustep"><span>홈 > 매출 관리 > 카테고리별 매출내역 조회</span></div>
       <div id="menuname"><span>카테고리별 매출내역 조회</span></div>
    </div>
    
    <table id="tblsearch">
        <tr>
            <th>검색어</th>
            <td>
            	<select id="sel1">
                    <option>채소</option>
                    <option>과일</option>
                    <option>육류</option>
                    <option>수산</option>
                    <option>가공식품</option>
                    <option>양념식품</option>
                    <option>유제품</option>
                    <option>건강식품</option>
                    <option>음료</option>
                </select>
            </td>
        </tr>
    </table>
    
    <!-- 검색 버튼을 묶는 orderBtn-->
    <div id="orderBtn">
        <input type="button" value="검색" id="btn1" class="btnSearch" />
        <input type="button" value="초기화" id="btn2" class="btnSearch" />
    </div>
    
    <div id="graphBox" style="margin-top: 20px">
        <div id="chart" style="display: inline-block;"></div>
        <div id="chart2" style="display: inline-block;"></div>
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
Highcharts.chart('chart', {
    chart: {
        type: 'pie'
    },
    title: {
        text: '판매분류 순위'
    },
    subtitle: {
        text: '판매수량(%)'
    },

    accessibility: {
        announceNewData: {
            enabled: true
        },
        point: {
            valueSuffix: '%'
        }
    },

    plotOptions: {
        series: {
            dataLabels: {
                enabled: true,
                format: '{point.name}: {point.y:.1f}%'
            }
        }
    },

    tooltip: {
        headerFormat: '<span style="font-size:11px">{series.name}</span><br>',
        pointFormat: '<span style="color:{point.color}">{point.name}</span>: <b>{point.y:.2f}%</b> of total<br/>'
    },

    series: [
        {
            name: "product",
            colorByPoint: true,
            data: [
                {
                    name: "채소",
                    y: 22.74,
                    drilldown: "채소"
                },
                {
                    name: "과일",
                    y: 20.57,
                    drilldown: "과일"
                },
                {
                    name: "육류",
                    y: 17.23,
                    drilldown: "육류"
                },
                {
                    name: "수산",
                    y: 9.58,
                    drilldown: "수산"
                },
                {
                    name: "가공식품",
                    y: 14.02,
                    drilldown: "가공식품"
                },
                {
                    name: "소스",
                    y: 5.92,
                    drilldown: "소스"
                },
                {
                    name: "유제품",
                    y: 13.62,
                    drilldown: "유제품"
                },
                {
                    name: "건강식품",
                    y: 7.62,
                    drilldown: "건강식품"
                },
                {
                    name: "음료",
                    y: 17.62,
                    drilldown: "음료"
                }
            ]
        }
    ]
    // drilldown: {
    //     series: [
    //         {
    //             name: "Chrome",
    //             id: "Chrome",
    //             data: [
    //                 [
    //                     "v65.0",
    //                     0.1
    //                 ],
    //                 [
    //                     "v64.0",
    //                     1.3
    //                 ],
    //                 [
    //                     "v63.0",
    //                     53.02
    //                 ],
    //                 [
    //                     "v62.0",
    //                     1.4
    //                 ],
    //                 [
    //                     "v61.0",
    //                     0.88
    //                 ],
    //                 [
    //                     "v60.0",
    //                     0.56
    //                 ],
    //                 [
    //                     "v59.0",
    //                     0.45
    //                 ],
    //                 [
    //                     "v58.0",
    //                     0.49
    //                 ],
    //                 [
    //                     "v57.0",
    //                     0.32
    //                 ],
    //                 [
    //                     "v56.0",
    //                     0.29
    //                 ],
    //                 [
    //                     "v55.0",
    //                     0.79
    //                 ],
    //                 [
    //                     "v54.0",
    //                     0.18
    //                 ],
    //                 [
    //                     "v51.0",
    //                     0.13
    //                 ],
    //                 [
    //                     "v49.0",
    //                     2.16
    //                 ],
    //                 [
    //                     "v48.0",
    //                     0.13
    //                 ],
    //                 [
    //                     "v47.0",
    //                     0.11
    //                 ],
    //                 [
    //                     "v43.0",
    //                     0.17
    //                 ],
    //                 [
    //                     "v29.0",
    //                     0.26
    //                 ]
    //             ]
    //         }
    //         // {
    //         //     name: "Firefox",
    //         //     id: "Firefox",
    //         //     data: [
    //         //         [
    //         //             "v58.0",
    //         //             1.02
    //         //         ],
    //         //         [
    //         //             "v57.0",
    //         //             7.36
    //         //         ],
    //         //         [
    //         //             "v56.0",
    //         //             0.35
    //         //         ],
    //         //         [
    //         //             "v55.0",
    //         //             0.11
    //         //         ],
    //         //         [
    //         //             "v54.0",
    //         //             0.1
    //         //         ],
    //         //         [
    //         //             "v52.0",
    //         //             0.95
    //         //         ],
    //         //         [
    //         //             "v51.0",
    //         //             0.15
    //         //         ],
    //         //         [
    //         //             "v50.0",
    //         //             0.1
    //         //         ],
    //         //         [
    //         //             "v48.0",
    //         //             0.31
    //         //         ],
    //         //         [
    //         //             "v47.0",
    //         //             0.12
    //         //         ]
    //         //     ]
    //         // },
    //         // {
    //         //     name: "Internet Explorer",
    //         //     id: "Internet Explorer",
    //         //     data: [
    //         //         [
    //         //             "v11.0",
    //         //             6.2
    //         //         ],
    //         //         [
    //         //             "v10.0",
    //         //             0.29
    //         //         ],
    //         //         [
    //         //             "v9.0",
    //         //             0.27
    //         //         ],
    //         //         [
    //         //             "v8.0",
    //         //             0.47
    //         //         ]
    //         //     ]
    //         // },
    //         // {
    //         //     name: "Safari",
    //         //     id: "Safari",
    //         //     data: [
    //         //         [
    //         //             "v11.0",
    //         //             3.39
    //         //         ],
    //         //         [
    //         //             "v10.1",
    //         //             0.96
    //         //         ],
    //         //         [
    //         //             "v10.0",
    //         //             0.36
    //         //         ],
    //         //         [
    //         //             "v9.1",
    //         //             0.54
    //         //         ],
    //         //         [
    //         //             "v9.0",
    //         //             0.13
    //         //         ],
    //         //         [
    //         //             "v5.1",
    //         //             0.2
    //         //         ]
    //         //     ]
    //         // },
    //         // {
    //         //     name: "Edge",
    //         //     id: "Edge",
    //         //     data: [
    //         //         [
    //         //             "v16",
    //         //             2.6
    //         //         ],
    //         //         [
    //         //             "v15",
    //         //             0.92
    //         //         ],
    //         //         [
    //         //             "v14",
    //         //             0.4
    //         //         ],
    //         //         [
    //         //             "v13",
    //         //             0.1
    //         //         ]
    //         //     ]
    //         // },
    //         // {
    //         //     name: "Opera",
    //         //     id: "Opera",
    //         //     data: [
    //         //         [
    //         //             "v50.0",
    //         //             0.96
    //         //         ],
    //         //         [
    //         //             "v49.0",
    //         //             0.82
    //         //         ],
    //         //         [
    //         //             "v12.1",
    //         //             0.14
    //         //         ]
    //         //     ]
    //         // }
    //     ]
    // }
});


// Create the chart
Highcharts.chart('chart2', {
    chart: {
        type: 'pie'
    },
    title: {
        text: '판매분류 순위'
    },
    subtitle: {
        text: '판매합계(%)'
    },

    accessibility: {
        announceNewData: {
            enabled: true
        },
        point: {
            valueSuffix: '%'
        }
    },

    plotOptions: {
        series: {
            dataLabels: {
                enabled: true,
                format: '{point.name}: {point.y:.1f}%'
            }
        }
    },

    tooltip: {
        headerFormat: '<span style="font-size:11px">{series.name}</span><br>',
        pointFormat: '<span style="color:{point.color}">{point.name}</span>: <b>{point.y:.2f}%</b> of total<br/>'
    },

    series: [
        {
            name: "product",
            colorByPoint: true,
            data: [
                {
                    name: "채소",
                    y: 15.74,
                    drilldown: "채소"
                },
                {
                    name: "과일",
                    y: 20.57,
                    drilldown: "과일"
                },
                {
                    name: "육류",
                    y: 37.23,
                    drilldown: "육류"
                },
                {
                    name: "수산",
                    y: 19.58,
                    drilldown: "수산"
                },
                {
                    name: "가공식품",
                    y: 8.02,
                    drilldown: "가공식품"
                },
                {
                    name: "소스",
                    y: 5.92,
                    drilldown: "소스"
                },
                {
                    name: "유제품",
                    y: 13.62,
                    drilldown: "유제품"
                },
                {
                    name: "건강식품",
                    y: 17.62,
                    drilldown: "건강식품"
                },
                {
                    name: "음료",
                    y: 7.62,
                    drilldown: "음료"
                }
            ]
        }
    ]
    
});
</script>