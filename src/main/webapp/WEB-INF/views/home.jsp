<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<%@ include file="layout/header.jsp" %>


<div>
    <div class="frame">
        <ul class="nav">
            <li class="main_link nav-item dropdown">
                <a class="nav-link dropdown-toggle" role="button" data-bs-toggle="dropdown">
                    공간 대여
                </a>
                <ul class="dropdown-menu sub_navbar_style">
                    <li><a class="dropdown-item" href="#">실내 스포츠</a></li>
                    <li><a class="dropdown-item" href="#">야외 스포츠</a></li>
                </ul>
            </li>
            <li class="main_link">
                <a href="/matching-page">매칭</a>
            </li>

            <li class="main_link">
                <a href="/league-main">리그</a>
            </li>
            <li class="main_link">
                <a href="/notice-main">고객센터</a>
            </li>
        </ul>
    </div>
    <div class="frame">

        <!-- Carousel -->
        <div id="demo" class="carousel slide" data-bs-ride="carousel">

            <!-- Indicators/dots -->
            <div class="carousel-indicators">
                <button type="button" data-bs-target="#demo" data-bs-slide-to="0" class="active"></button>
                <button type="button" data-bs-target="#demo" data-bs-slide-to="1"></button>
                <button type="button" data-bs-target="#demo" data-bs-slide-to="2"></button>
            </div>

            <!-- The slideshow/carousel -->
            <div class="carousel-inner">
                <div class="carousel-item active">
                    <img src="/images/BasketballMainBanner2.png" alt="Los Angeles" class="d-block w-100">
                </div>
                <div class="carousel-item">
                    <img src="/images/SoccerMainBanner2.png" alt="Chicago" class="d-block w-100">
                </div>
                <div class="carousel-item">
                    <img src="/images/FutsalMainBanner2.png" alt="New York" class="d-block w-100">
                </div>
            </div>

            <!-- Left and right controls/icons -->
            <button class="carousel-control-prev" type="button" data-bs-target="#demo" data-bs-slide="prev">
                <span class="carousel-control-prev-icon"></span>
            </button>
            <button class="carousel-control-next" type="button" data-bs-target="#demo" data-bs-slide="next">
                <span class="carousel-control-next-icon"></span>
            </button>
        </div>

        <div>
            <div class="main_search_filter">
                <div class="dropdown">
                    <button class="drop_btn">
                        인기순
                    </button>
                    <div class="dropdown-content">
                        <a href="#">인기순</a>
                        <a href="#">최신순</a>
                        <a href="#">관심순</a>
                    </div>
                </div>
                <div class="main_filter">
                    <button class="filter_button">
                        <img src="/images/filter.png" width="20px" height="20px">
                    </button>
                </div>
            </div>
            <div class="container-fluid">
                <div class="main_layout">

                    <c:forEach var="item" items="${spaces}">
                        <div>
                            <div class="inside_content">
                                <a href="/space-detail/1"><img src="/images/${item.spacePic}"></a>
                            </div>

                            <div class="main_content_title m-2">
                                    ${item.spaceName}
                            </div>
                            <div class="main_content_category m-2">
                                [${item.sector}/${item.sportName}]
                                    ${item.isInside() ? '실내 체육관' : '실외 체육관'}
                            </div>
                            <div class="main_content_location m-2">
                                    ${item.regionName}
                            </div>
                            <div class="main_content_price m-2 mb-4">
                                    ${item.pricePerHour}원 ~
                            </div>
                        </div>
                    </c:forEach>

                </div>

                <ul class="pagination main_paging">
                    <li class="page-item${pageVO.currentPage eq pageVO.firstPage ? ' disabled' : ''}">
                        <a class="page-link"
                           href="/home?currentPage=${pageVO.firstPage}">
                            <<
                        </a>
                    </li>
                    <li class="page-item${pageVO.currentPage eq pageVO.firstPage ? ' disabled' : ''}">
                        <a class="page-link"
                           href="/home?currentPage=${pageVO.currentPage - 1}">
                            <
                        </a>
                    </li>
                    <c:choose>
                        <c:when test="${pageVO.lastPage <= 5}">
                            <!-- 페이지가 5개 이하일 경우 -->
                            <c:forEach begin="1" end="${pageVO.lastPage}" var="pageNumber">
                                <li class="page-item ${pageVO.currentPage eq pageNumber ? 'active' : ''}">
                                    <a class="page-link"
                                       href="/home?currentPage=${pageNumber}">
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
                                       href="/home?currentPage=${pageNumber}">
                                            ${pageNumber}
                                    </a>
                                </li>
                            </c:forEach>
                        </c:otherwise>
                    </c:choose>
                    <li class="page-item${pageVO.currentPage eq pageVO.lastPage ? ' disabled' : ''}">
                        <a class="page-link"
                           href="/home?currentPage=${pageVO.currentPage + 1}">
                            >
                        </a>
                    </li>
                    <li class="page-item${pageVO.currentPage eq pageVO.lastPage ? ' disabled' : ''}">
                        <a class="page-link" href="/home?currentPage=${pageVO.lastPage}">
                            >>
                        </a>
                    </li>
                </ul>

            </div>
        </div>
    </div>
</div>

<script>
    $(document).ready(function () {
        $(".pagination a").click(function (e) {
            e.preventDefault();

            var page = $(this).text();

            $.ajax({
                url: "/homePaging?currentPage="+page,
                type: "GET",
                contentType: "application/json",
                success: function (data) {
                    console.log(data)
                    console.log("여기부터")
                    $(".main_layout").empty();
                    var htmlString = "";
                    data.forEach(function (item) {
                        htmlString += '<div>' +
                            '<div class="inside_content">' +
                            '<a href="/space-detail/1"><img src="/images/' + item.spacePic + '"></a>' +
                            '</div>' +
                            '<div class="main_content_title m-2">' + item.spaceName + '</div>' +
                            '<div class="main_content_category m-2">[' + item.sector + '/' + item.sportName + ']' +
                            '</div>' +
                            '<div class="main_content_location m-2">' + item.regionName + '</div>' +
                            '<div class="main_content_price m-2 mb-4">' + item.pricePerHour + '원 ~</div>' +
                            '</div>';
                    });

                    $(".main_layout").append(htmlString);
                    console.log("Clicked Page: " + page);
                    console.log("여기까지")
                },
                error: function () {
                    console.log(data)
                    alert("AJAX 요청 중 오류가 발생했습니다.");
                }
            });
        });
    });

    $(document).ready(function() {
        // 페이지네이션 버튼 클릭 이벤트 처리
        $('.main_paging').on('click', 'li.page-item:not(.disabled) a.page-link', function(e) {
            // 모든 페이지네이션 버튼에서 'active' 클래스 제거
            $('.main_paging li.page-item').removeClass('active');

            // 클릭한 버튼에 'active' 클래스 추가
            $(this).parent('li.page-item').addClass('active');
        });
    });
</script>

<%@ include file="layout/footer.jsp" %>

