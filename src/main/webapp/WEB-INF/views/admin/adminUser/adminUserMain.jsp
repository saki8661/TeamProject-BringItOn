<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<div class="admin_tab_container">
    <ul class="admin_tab_category">
        <li><a href="#">회원 관리</a></li>
        <li><a href="#">시설 관리</a></li>
        <li><a href="#">상품 관리</a></li>
        <li><a href="#">주문 관리</a></li>
        <li><a href="#">고객 지원</a></li>
    </ul>
</div>
<div class="admin_tab_content">
    <ul class="admin_tab_items">
        <li>
            <%@ include file="../adminUser/adminUser.jsp" %>
        </li>
        <li>
            <%@ include file="../adminSpace/adminSpace.jsp" %>
        </li>
        <li>
            <%@ include file="../adminProduct/adminProduct.jsp" %>
        </li>
        <li>
            <%@ include file="../adminOrder/adminOrder.jsp" %>
        </li>
        <li>
            <%@ include file="../adminCustomer/adminCustomer.jsp" %>
        </li>
    </ul>
</div>