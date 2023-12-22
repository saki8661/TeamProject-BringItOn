<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<%@ include file="../layout/header.jsp" %>

<div>
    <div class="frame">

        <div class="row">
            <%@include file="../layout/userInfoInside.jsp" %>
            <div class="userInfo_body col-md-8 box">
                <form action="/team-apply-approve/1" method="POST">
                    <input type="hidden" value="1" name="teamId">
                    <input type="hidden" value="10" name="userId">
                <button type="submit" class="btn btn-primary">수락</button>
                </form>
                <button type="button" class="btn btn-danger"><a href="/team-apply-refuse/1">거절</a></button>
            </div>
        </div>
    </div>
</div>


<%@ include file="../layout/footer.jsp" %>