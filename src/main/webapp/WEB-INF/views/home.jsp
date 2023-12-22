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
                <a href="/team-main">팀</a>
            </li>

            <li class="main_link">
                <a href="/matching-main">매칭</a>
            </li>

            <li class="main_link">
                <a href="/league-main">리그</a>
            </li>

            <li class="main_link">
                <a href="/board-main">게시판</a>
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
                    </div>
                </div>
                <div class="main_filter">
                    <button class="filter_button">
                        <img src="/images/filter.png" width="20px" height="20px">
                    </button>
                </div>
            </div>

            <div class="container-fluid" style="height: 657px">
                <div class="main_layout">
                    <c:forEach var="item" items="${spaces}">
                        <div>
                            <div class="inside_content">
                                <a href="/space-detail/${item.id}"><img src="/img/${item.spacePic}"></a>
                            </div>

                            <div class="main_content_title m-2">
                                    ${item.spaceName}
                            </div>
                            <div class="main_content_category m-2">
                                [${item.sector}/${item.sportName}]
                                    ${item.isInside ? '실내 체육관' : '실외 체육관'}
                            </div>
                            <div class="main_content_location m-2">
                                    ${item.spaceLocation}
                            </div>
                            <div class="main_content_price m-2 mb-4">
                                    ${item.price}원 ~
                            </div>
                        </div>
                    </c:forEach>
                </div>
            </div>

            <ul class="pagination main_paging">
                <li class="first_page_item page-item">
                    <a class="page-link"
                       href="/home?currentPage=${pageVO.firstPage}">
                        <<
                    </a>
                </li>
                <li class="page-item">
                    <a class="prev_page_item page-link"
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
                <li class="next_page_item page-item">
                    <a class="next_page_item page-link"
                       href="/home?currentPage=${pageVO.currentPage + 1}">
                        >
                    </a>
                </li>
                <li class="last_page_item page-item">
                    <a class="page-link" href="/home?currentPage=${pageVO.lastPage}">
                        >>
                    </a>
                </li>
            </ul>
        </div>
    </div>
</div>

<script>

    $(document).ready(function () {
        // 현재 페이지, 첫 페이지, 마지막 페이지 설정
        var currentPage = parseInt("${currentPage}");
        var firstPage = parseInt("${pageVO.firstPage}");
        var lastPage = parseInt("${pageVO.lastPage}");

        $('.main_paging').on('click', 'li.page-item:not(.disabled) a.page-link, li.prev_page_item:not(.disabled) a.prev_page_link, li.next_page_item:not(.disabled) a.next_page_link, li.first_page_item:not(.disabled) a.first_page_link, li.last_page_item:not(.disabled) a.last_page_link', function (e) {
            e.preventDefault();

            // 클릭한 페이지 번호 가져오기
            var clickedPage;
            if ($(this).parent('li').hasClass('prev_page_item')) {
                clickedPage = currentPage - 1;
            } else if ($(this).parent('li').hasClass('next_page_item')) {
                clickedPage = currentPage + 1;
            } else if ($(this).parent('li').hasClass('last_page_item')) {
                clickedPage = lastPage;
            } else if ($(this).parent('li').hasClass('first_page_item')) {
                clickedPage = firstPage;
            } else {
                clickedPage = parseInt($(this).text());
            }
            console.log(clickedPage);

            $.ajax({
                url: "/homePaging?currentPage=" + clickedPage,
                type: "GET",
                contentType: "application/json",
                success: function (data) {
                    if (Array.isArray(data)) {
                        updatePagination(clickedPage);
                        updateMainLayout(data);
                        console.log(data)
                    }
                },
                error: function () {
                    alert("AJAX 요청 중 오류가 발생했습니다.");
                }
            });
        });

        // 페이지 갱신 로직
        function updatePagination(clickedPage) {
            var pagination = $(".main_paging");
            pagination.empty();

            var totalPages = parseInt("${pageVO.lastPage}");
            var maxVisiblePages = 5;

            // 현재 페이지 갱신
            $(".pagination li").removeClass("active");
            $(".pagination li:contains('" + clickedPage + "')").addClass("active");

            // 페이지 번호
            if (totalPages <= maxVisiblePages) {
                // 페이지가 5개 이하인 경우 모든 페이지 번호 표시
                for (var i = 1; i <= totalPages; i++) {
                    pagination.append('<li class="page-item' + (clickedPage === i ? ' active' : '') + '"><a class="page-link" href="/home?currentPage=' + i + '">' + i + '</a></li>');
                }
            } else {
                var startPage = Math.max(1, clickedPage - Math.floor(maxVisiblePages / 2));
                var endPage = Math.min(totalPages, startPage + maxVisiblePages - 1);
                for (var i = startPage; i <= endPage; i++) {
                    pagination.append('<li class="page-item' + (clickedPage === i ? ' active' : '') + '"><a class="page-link" href="/home?currentPage=' + i + '">' + i + '</a></li>');
                }
            }

            var currentPage = parseInt("${currentPage}");
            var firstPage = parseInt("${pageVO.firstPage}");
            var lastPage = parseInt("${pageVO.lastPage}");


            // 이전 페이지
            pagination.prepend('<li class="page-item' + (clickedPage === firstPage ? ' disabled' : '') + '"><a class="page-link prev_page_item" href="/home?currentPage=${pageVO.currentPage - 1}"><</a></li>');

            // 다음 페이지
            pagination.append('<li class="page-item' + (clickedPage === lastPage ? ' disabled' : '') + '"><a class="page-link next_page_item" href="/home?currentPage=${pageVO.currentPage + 1}">></a></li>');

            // 처음 페이지
            pagination.prepend('<li class="page-item' + (clickedPage === firstPage ? ' disabled' : '') + '"><a class="page-link first_page_item" href="/home?currentPage=${firstPage}"><<</a></li>');

            // 마지막 페이지
            pagination.append('<li class="page-item' + (clickedPage === lastPage ? ' disabled' : '') + '"><a class="page-link last_page_item" href="/home?currentPage=${lastPage}">>></a></li>');
        }


        // 화면 갱신 로직
        function updateMainLayout(data) {
            $(".main_layout").empty();
            var htmlString = "";
            data.forEach(function (item) {
                htmlString += '<div>' +
                    '<div class="inside_content">' +
                    '<a href="/space-detail/' + item.id + '"><img src="/images/' + item.spacePic + '"></a>' +
                    '</div>' +
                    '<div class="main_content_title m-2">' + item.spaceName + '</div>' +
                    '<div class="main_content_category m-2">[' + item.sector + '/' + item.sportName + ']' +
                    '</div>' +
                    '<div class="main_content_location m-2">' + item.regionName + '</div>' +
                    '<div class="main_content_price m-2 mb-4">' + item.pricePerHour + '원 ~</div>' +
                    '</div>';
            });

            $(".main_layout").append(htmlString);
        }
    });

    $('.main_paging').on('click', 'li.page-item:not(.disabled) a.page-link', function (e) {
        $('.main_paging li.page-item').removeClass('active');
        $(this).parent('li.page-item').addClass('active');
    });

</script>

<%@ include file="layout/footer.jsp" %>

