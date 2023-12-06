<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<%@ include file="../layout/header.jsp" %>

<div>
    <div class="frame">
        <div class="userInfo_frame">
            <div class="row">
                <%@include file="../layout/userInfoInside.jsp" %>
                <div class="col-md-9 box">
                    <div class="d-flex pe-3 my-3">
                        <div class="userInfo_title">후기 관리</div>
                    </div>
                    <hr/>
                    <div class="userInfo_main">
                        <div class="userReview_upper_box">
                        </div>
                        <div class="userReview_review_box">
                            <div class="d-flex">
                                <div class="userReview_teamname">
                                    FC혜림
                                </div>
                                <div class="userReview_created_at">
                                    2023-12-05
                                </div>
                            </div>
                            <div class="userReview_place">
                                장소 명
                            </div>
                            <div class="userReview_content">
                                후기 내용
                            </div>
                            <div class="userReview_button">
                                <button type="button">
                                    삭제하기
                                </button>
                            </div>
                        </div>
                        <div class="userReview_review_box">
                            <div class="d-flex">
                                <div class="userReview_teamname">
                                    FC혜림
                                </div>
                                <div class="userReview_created_at">
                                    2023-12-05
                                </div>
                            </div>
                            <div class="userReview_place">
                                장소 명
                            </div>
                            <div class="userReview_content">
                                후기 내용
                            </div>
                            <div class="userReview_button">
                                <button type="button">
                                    삭제하기
                                </button>
                            </div>
                        </div>
                        <div class="userReview_review_box">
                            <div class="d-flex ">
                                <div class="userReview_teamname">
                                    팀 이름
                                </div>
                                <div class="userReview_created_at">
                                    2023-12-05
                                </div>
                            </div>
                            <div class="userReview_place">
                                장소 명
                            </div>
                            <div class="userReview_content">
                                후기 내용
                            </div>
                            <div class="userReview_button">
                                <button type="button">
                                    삭제하기
                                </button>
                            </div>
                        </div>
                    </div>
                    <div class="mt-5 d-flex justify-content-center">
                        <ul class="pagination">
                            <li class="page-item"><a class="page-link" href="#"><</a></li>
                            <li class="page-item"><a class="page-link" href="#">1</a></li>
                            <li class="page-item"><a class="page-link" href="#">2</a></li>
                            <li class="page-item"><a class="page-link" href="#">3</a></li>
                            <li class="page-item"><a class="page-link" href="#">></a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>


<%@ include file="../layout/footer.jsp" %>