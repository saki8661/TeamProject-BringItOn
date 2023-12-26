<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<div class="admin_frame">
    <div class="frame">

        <form action="/notice-write" method="post">
            <div class="mb-5 mt-3">
                <div id="selectedItem">${selectedItem}</div>
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

