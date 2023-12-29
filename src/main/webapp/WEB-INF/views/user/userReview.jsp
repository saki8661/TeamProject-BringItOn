<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<%@ include file="../layout/header.jsp" %>

<div>
    <div class="frame">

        <div class="row">
            <%@include file="../layout/userInfoInside.jsp" %>
            <div class="userInfo_body col-md-8 box">
                <div class="d-flex pe-3 my-3">
                    <div class="userInfo_title">후기 관리</div>
                </div>
                <hr/>
                <div class="userInfo_main">
                    <div class="userReview_container">
                        <c:choose>
                            <c:when test="${sessionUser.userDivision eq 'general'}">
                                <c:forEach var="review" items="${reviewList}">
                                    <div class="userReview_review_box">
                                        <div class="userReview_item_tile">
                                            <div class="userReview_item_separation">
                                                <div class="userReview_teamname">
                                                        ${review.spaceName}
                                                </div>
                                                <div class="userReview_created_at">
                                                        ${review.reviewCreatedAt}
                                                </div>
                                            </div>
                                            <div class="userReview_rating">
                                                <c:forEach begin="1" end="${review.rating}">
                                                    <div class="fas fa-star text-warning"></div>
                                                </c:forEach>
                                            </div>
                                        </div>
                                        <div class="userReview_content">
                                                ${review.comment}
                                        </div>
                                        <div class="userReview_button">

                                            <button type="button" class="userInfo_review_delete" data-review-id="${review.id}">
                                                삭제하기
                                            </button>
                                        </div>
                                    </div>
                                </c:forEach>
                            </c:when>
                            <c:otherwise>
                                <c:forEach var="review" items="${reviewList}">
                                    <div class="userReview_review_box">
                                        <div class="userReview_item_tile">
                                            <div class="userReview_item_separation">
                                                <div class="userReview_teamname">
                                                        ${review.nickname}
                                                </div>
                                                <div class="userReview_created_at">
                                                        ${review.reviewCreatedAt}
                                                </div>
                                            </div>
                                            <div class="userReview_rating">
                                                <c:forEach begin="1" end="${review.rating}">
                                                    <div class="fas fa-star text-warning"></div>
                                                </c:forEach>
                                            </div>
                                        </div>
                                        <div class="userReview_place">
                                                ${review.spaceName}
                                        </div>
                                        <div class="userReview_content">
                                                ${review.comment}
                                        </div>
                                    </div>
                                </c:forEach>
                            </c:otherwise>
                        </c:choose>
                    </div>
                </div>


                <div class="mt-3 d-flex justify-content-center">
                    <ul class="pagination">
                        <c:choose>
                            <c:when test="${pageVO.lastPage <= 5}">
                                <!-- 페이지가 5개 이하일 경우 -->
                                <c:forEach begin="1" end="${pageVO.lastPage}" var="pageNumber">
                                    <li class="page-item ${pageVO.currentPage eq pageNumber ? 'active' : ''}">
                                        <a class="page-link"
                                           href="/user/review/${sessionUser.id}?currentPage=${pageNumber}">
                                                ${pageNumber}
                                        </a>
                                    </li>
                                </c:forEach>
                            </c:when>
                            <c:otherwise>
                                <!-- 페이지가 5개 초과일 경우 -->
                                <c:set var="startPage" value="${pageVO.currentPage - 2}"/>
                                <c:choose>
                                    <c:when test="${startPage lt 1}">
                                        <c:set var="startPage" value="1"/>
                                    </c:when>
                                    <c:when test="${startPage gt pageVO.lastPage - 4}">
                                        <c:set var="startPage" value="${pageVO.lastPage - 4}"/>
                                    </c:when>
                                </c:choose>

                                <c:forEach begin="${startPage}" end="${startPage + 4}" var="pageNumber">
                                    <li class="page-item ${pageVO.currentPage eq pageNumber ? 'active' : ''}">
                                        <a class="page-link"
                                           href="/user/review/${sessionUser.id}?currentPage=${pageNumber}">
                                                ${pageNumber}
                                        </a>
                                    </li>
                                </c:forEach>
                            </c:otherwise>
                        </c:choose>
                    </ul>
                </div>

            </div>
        </div>
    </div>
</div>


<script>
    $(document).ready(function () {

        $('.userInfo_review_delete').on('click', function () {

            var id = $(this).data('review-id');

            $.ajax({
                type: 'GET',
                url: '/api/review-delete/' + id ,
                contentType: 'application/json',
                success: function (response) {
                    console.log("리뷰 삭제 됨")
                    location.reload();
                },
                error: function (error) {

                }
            });
        });
    });
</script>

<%@ include file="../layout/footer.jsp" %>