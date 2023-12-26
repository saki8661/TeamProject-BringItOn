<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<div class="admin_body_frame">
    <div class="admin_user_quickMenu">
        <div>공지관리</div>
        <ul class="admin_user_title" id="members">공지리스트</ul>
        <ul class="admin_user_title" id="statistics">공지작성</ul>
    </div>
    <div class="admin_user_content" style="border: 1px solid blue"></div>

<%--    <div class="admin_user_container" id="noticeListContainer">--%>
<%--        <div class="admin_user_info">공지리스트</div>--%>


<%--        <c:forEach var="notice" items="${notices}">--%>
<%--            <div class="customer_notice_list">--%>
<%--                <button type="button" class="more_button">--%>
<%--                    <div class="customer_notice_layout">--%>
<%--                        <div class="customer_notice_item">--%>
<%--                            <div>--%>
<%--                                    ${notice.noticeCategory}--%>
<%--                            </div>--%>
<%--                            <div>--%>
<%--                                    ${notice.noticeTitle}--%>
<%--                            </div>--%>
<%--                        </div>--%>
<%--                        <div class="d-flex">--%>
<%--                            <div class="customer_notice_date">--%>
<%--                                    ${notice.createdAt}--%>
<%--                            </div>--%>
<%--                            <div>--%>
<%--                                <img src="/images/more.png" class="inquire_toggle_image">--%>
<%--                            </div>--%>
<%--                        </div>--%>
<%--                    </div>--%>
<%--                    <div class="customer_notice_content cs_detail" style="display: none">--%>
<%--                        <div class="d-flex justify-content-between px-3 pt-3 m-3">--%>
<%--                            <div>--%>
<%--                                    ${notice.noticeContent}--%>
<%--                            </div>--%>
<%--                        </div>--%>
<%--                    </div>--%>
<%--                </button>--%>
<%--            </div>--%>
<%--        </c:forEach>--%>
<%--    </div>--%>

    <div class="admin_user_container" id="noticeWriteContainer">
        <div class="admin_user_info">공지작성</div>
        <form action="/notice-write" method="post">
            <div class="mb-5 mt-3">
                <div class="dropdown">
                    <select class="customer_dropdown_btn" name="noticeCategoryId" id="dropdown">
                        <div class="customer_dropdown_menu">
                            <c:forEach var="category" items="${noticeCategories}">
                                <option value="${category.id}">
                                    <div class="customer_dropdown_item">
                                            ${category.noticeCategory}
                                    </div>
                                </option>
                            </c:forEach>
                        </div>
                    </select>
                    <input type="hidden" value="selectedValue">
                </div>
            </div>
            <input type="text" class="form-control form-control-lg mb-5" value="" placeholder="공지 제목을 입력해 주세요"
                   name="noticeTitle">
            <!-- Summernote를 적용할 텍스트 영역 -->
            <textarea class="mt-3 form-control" rows="5" id="summernote" name="noticeContent"
                      placeholder="내용을 입력해 주세요"></textarea>
            <div class="mt-3" style="padding-bottom: 20px;">
                <button type="submit" class="btn btn-success float-end">공지 등록</button>
            </div>
        </form>

    </div>
</div>


<script>
    $(document).ready(function () {
        $('#members').click(function () {
            loadNoticeList();
        });

        $('#statistics').click(function () {
            loadNoticeWrite();
        });
    });
    $(document).ready(function () {
        // 초기 페이지 로딩 시 "공지리스트" 섹션 불러오기
        loadNoticeList();

        // "공지리스트" 클릭 시
        $('#members').click(function () {
            loadNoticeList();
        });

        // "공지작성" 클릭 시
        $('#statistics').click(function () {
            loadNoticeWrite();
        });
    });

    function loadNoticeList() {
        $.ajax({
            url: '/getNoticeList',  // 실제 경로에 맞게 수정
            type: 'GET',
            dataType: 'html',
            success: function (data) {
                // 성공 시 공지리스트 섹션 업데이트
                $('#noticeListContainer').html(data);
                $('#noticeListContainer').show();
                $('#noticeWriteContainer').hide();
            },
            error: function (xhr, status, error) {
                console.error('Error loading notice list:', status, error);
            }
        });
    }

    function loadNoticeWrite() {
        $.ajax({
            url: '/getNoticeWritePage',  // 실제 경로에 맞게 수정
            type: 'GET',
            dataType: 'html',
            success: function (data) {
                // 성공 시 공지작성 섹션 업데이트
                $('#noticeWriteContainer').html(data);
                $('#noticeListContainer').hide();
                $('#noticeWriteContainer').show();
            },
            error: function (xhr, status, error) {
                console.error('Error loading notice write page:', status, error);
            }
        });
    }
    $(document).ready(function () {
        // 초기 페이지 로딩 시 "공지리스트" 섹션 불러오기
        loadNoticeList();

        // "공지리스트" 클릭 시
        $('#members').click(function () {
            loadNoticeList();
        });

        // "공지작성" 클릭 시
        $('#statistics').click(function () {
            loadNoticeWrite();
        });
    });

    function loadNoticeList() {
        $.ajax({
            url: '/getNoticeList',  // 실제 경로에 맞게 수정
            type: 'GET',
            dataType: 'html',
            success: function (data) {
                // 성공 시 공지리스트 섹션 업데이트
                $('#noticeListContainer').html(data);
            },
            error: function () {
                console.error('Error loading notice list');
            }
        });
    }

    function loadNoticeWrite() {
        $.ajax({
            url: '/getNoticeWritePage',  // 실제 경로에 맞게 수정
            type: 'GET',
            dataType: 'html',
            success: function (data) {
                // 성공 시 공지작성 섹션 업데이트
                $('#noticeWriteContainer').html(data);
            },
            error: function () {
                console.error('Error loading notice write page');
            }
        });
    }

    $(document).ready(function () {
        // Fetch notice categories asynchronously
        $.ajax({
            url: '/getNoticeCategories',
            type: 'GET',
            dataType: 'json',
            success: function (data) {
                // Update the dropdown with fetched data
                var dropdown = $('#dropdown');
                dropdown.empty();
                $.each(data, function (index, category) {
                    dropdown.append($('<option>', {
                        value: category.id,
                        text: category.noticeCategory
                    }));
                });

                // Trigger the change event to update the selected item
                dropdown.trigger('change');
            },
            error: function () {
                console.error('Error fetching notice categories');
            }
        });

        // Summernote 초기화
        $('#summernote').summernote({
            height: 300,
            width: '100%'
        });

        // 드롭다운 메뉴에서 항목을 선택할 때의 이벤트 핸들러
        $('#dropdown').change(function () {
            // 선택한 항목의 텍스트를 가져와서 표시
            var selectedText = $(this).find('option:selected').text();
            $('#selectedItem').text(selectedText);
        });
    });
</script>


