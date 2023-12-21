<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<%@ include file="../layout/header.jsp" %>

<div>
    <div class="frame">

        <div class="row">
            <%@include file="../layout/userInfoInside.jsp" %>
            <div class="userInfo_body col-md-8 box">
                <a href="/user/logout"> 로그아웃 </a>
            </div>
        </div>
    </div>
</div>


<%@ include file="../layout/footer.jsp" %>