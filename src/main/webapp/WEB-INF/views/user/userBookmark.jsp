<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<%@ include file="../layout/header.jsp" %>

<div>
    <div class="frame">
        <div class="row">
            <%@include file="../layout/userInfoInside.jsp" %>
            <div class="userInfo_body col-md-8 box">
                <div class="d-flex pe-3 my-3">
                    <div class="userInfo_title">북마크 관리</div>
                </div>
                <hr/>
                <div class="userInfo_main">
                    <div class="container-fluid">

                        <c:choose>
                        <c:when test="${empty bookmarkList}">
                            <div class="userInfo_item_empty">
                                <div>
                                    <div>북마크가 비어있습니다.</div>
                                </div>
                            </div>
                        </c:when>
                        <c:otherwise>
                        <div class="userBookmark_layout">
                            <c:forEach var="item" items="${bookmarkList}">
                                <div>
                                    <div class="userBookmark_content" data-id="${item.id}">
                                        <a href="/space-detail/${item.id}"><img src="/img/${item.spacePic}"></a>
                                        <div class="fas fa-heart text-danger bookmark_icon"></div>
                                    </div>
                                    <div class="main_content_title m-2">
                                            ${item.spaceName}
                                    </div>
                                    <div class="main_content_category m-2">
                                        [${item.sector}/${item.sportName}] 실내 체육관
                                    </div>
                                    <div class="main_content_location m-2">
                                            ${item.spaceLocation}
                                    </div>
                                    <div class="main_content_price m-2 mb-4">
                                            ${item.price}원 ~
                                    </div>
                                </div>
                            </c:forEach>
                            </c:otherwise>
                            </c:choose>
                        </div>
                    </div>
                    <div class="mt-5 d-flex justify-content-center">
                        <ul class="pagination">
                            <li class="page-item"><a class="page-link" href="#"><</a></li>
                            <li class="page-item"><a class="page-link" href="#">1</a></li>
                            <li class="page-item"><a class="page-link" href="#">></a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<script>
    $(document).ready(function () {
        $(".bookmark_icon").on('click', function (e) {
            var userBookmarkContent = this.closest('.userBookmark_content');

            // userBookmarkContent에서 bookmarkId를 가져옵니다.
            var bookmarkId = userBookmarkContent.getAttribute('data-id');


            console.log(bookmarkId)

            // Ajax 요청
            $.ajax({
                url: "/api/bookmark-delete/" + bookmarkId,
                type: 'GET',
                success: function (response) {
                    console.log('DELETE 요청 성공:', response);
                    pageReloading(response);
                },
                error: function (error) {
                    console.error('DELETE 요청 실패:', error);
                    // 요청이 실패한 경우 오류 처리를 수행할 수 있습니다.
                }
            });

            function pageReloading(data) {

                console.log("페이지를 리로딩합니다.");

                // 페이지 리로딩
                location.reload();
            }

        });
    });
</script>

<%@ include file="../layout/footer.jsp" %>