	<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!-- 메뉴 -->
    <div id="side">
        <ul id="menu">
            <li>
                <!-- 상품관리 메뉴(나중에 각 메뉴별로 href옵션에 링크 걸어야함) -->
                <div>
                    <div class="glyphicon glyphicon-gift"></div>
                    <a href="javascript:void(0);" id="item" class="mainmenu">상품관리</a>
                    <ul class="sublist" id="itemlist">
                        <li><a href="#">상품 조회</a></li>
                        <li><a href="#">상품 등록</a></li>
                        <li><a href="#">상품 수정&삭제</a></li>
                        <li><a href="#">상품 대분류 관리</a></li>
                    </ul>
                </div>
                <!-- 인사&급여관리 메뉴 -->
                <div>
                    <div class="glyphicon glyphicon-shopping-cart"></div>
                    <a href="javascript:void(0);" id="employee" class="mainmenu">인사&급여관리</a>
                    <ul class="sublist" id="employeelist">
                        <li><a href="#">인사관리</a></li>
                        <li><a href="#">급여관리</a></li>
                    </ul>
                </div>
                <!-- 재고관리 메뉴 -->
                <div>
                    <div class="glyphicon glyphicon-user"></div>
                    <a href="javascript:void(0);" id="inventory" class="mainmenu">재고관리</a>
                    <ul class="sublist" id="inventorylist">
                        <li><a href="/mherp/inventory/enrollinventory.action">재고실사 및 조정</a></li>
                        <li><a href="/mherp/inventory/edithistory.action">재고조정 내역관리</a></li>
                        <li><a href="/mherp/inventory/inventorybyproduct.action">상품별 재고현황</a></li>
                    </ul>
                </div>
                <!-- 입출고 관리 메뉴 -->
                <div>
                    <div class="glyphicon glyphicon-list-alt"></div>
                    <a href="javascript:void(0);" id="inout" class="mainmenu">입출고관리</a>
                    <ul class="sublist" id="inoutlist">
                        <li><a href="#">입출고 등록</a></li>
                        <li><a href="#">입출고 내역관리</a></li>
                    </ul>
                </div>
                <!-- 매출 관리 메뉴 -->
                <div>
                    <div class="glyphicon glyphicon-signal"></div>
                    <a href="javascript:void(0);" id="sales" class="mainmenu">매출관리</a>
                    <ul class="sublist" id="saleslist">
                    	<li><a href="#">기간별 매출내역 조회</a></li>
                        <li><a href="#">기간별 매출변화 추이</a></li>
                    </ul>
                </div>
            </li>
        </ul>
    </div>
    <script src="/mherp/resources/js/admin_template.js"></script>