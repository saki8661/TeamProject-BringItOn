<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<%@ include file="../../views/admin/layout/adminHeader.jsp" %>

<div class="admin_body_container" id="adminMain">

    <div class="admin_body_content">
        <div class="admin_body_title">
            <p>전체 주문 통계</p>
            <div><a href="#">주문내역 바로가기</a></div>
        </div>
        <div>
            <div class="admin_body_item">
                <div class="admin_body_total_container">
                    <div class="admin_body_total_table">
                        <p>전체 주문 현황</p>
                        <table>
                            <thead>
                            <tr>
                                <th>총 주문 건수</th>
                                <th>총 주문 금액</th>
                            </tr>
                            </thead>
                            <tbody>
                            <tr>
                                <td>1</td>
                                <td>1</td>
                            </tr>
                            </tbody>
                        </table>
                    </div>
                    <div class="admin_body_total_table">
                        <p>주문 상태 현황</p>
                        <table>
                            <thead>
                            <tr>
                                <th>입금 대기</th>
                                <th>입금 완료</th>
                                <th>배송 준비</th>
                                <th>배송 중</th>
                                <th>배송 완료</th>
                            </tr>
                            </thead>
                            <tbody>
                            <tr>
                                <td>1</td>
                                <td>1</td>
                                <td>1</td>
                                <td>1</td>
                                <td>1</td>
                            </tr>
                            </tbody>
                        </table>
                    </div>
                    <div class="admin_body_total_table">
                        <p>구매 확정 현황</p>
                        <table>
                            <thead>
                            <tr>
                                <th>미확정</th>
                                <th>취소</th>
                                <th>환불</th>
                                <th>반품</th>
                                <th>교환</th>
                            </tr>
                            </thead>
                            <tbody>
                            <tr>
                                <td>0</td>
                                <td>0</td>
                                <td>0</td>
                                <td>0</td>
                                <td>1</td>
                            </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="admin_body_content">
        <div class="admin_body_title">
            <p>최근 주문내역</p>
            <div><a href="#">주문내역 바로가기</a></div>
        </div>
        <div>
            <div class="admin_body_item">
                <table>
                    <thead>
                    <tr>
                        <th>주문 번호</th>
                        <th>주문자 명</th>
                        <th>수령자 명</th>
                        <th>전화 번호</th>
                        <th>결제 방법</th>
                        <th>주문 금액</th>
                        <th>주문 일시</th>
                    </tr>
                    </thead>
                    <tbody>
                    <tr>
                        <td>1,1</td>
                        <td>1,2</td>
                        <td>1,3</td>
                        <td>1,4</td>
                        <td>1,5</td>
                        <td>1,6</td>
                        <td>1,7</td>
                    </tr>
                    <tr>
                        <td>1,1</td>
                        <td>1,2</td>
                        <td>1,3</td>
                        <td>1,4</td>
                        <td>1,5</td>
                        <td>1,6</td>
                        <td>1,7</td>
                    </tr>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
    <div class="admin_body_content">
        <div class="admin_body_title">
            <p>최근 회원가입</p>
            <div><a href="#">회원관리 바로가기</a></div>
        </div>
        <div>
            <div class="admin_body_item">
                <table>
                    <thead>
                    <tr>
                        <th>nickname</th>
                        <th>username</th>
                        <th>Email</th>
                        <th>address</th>
                        <th>Position</th>
                        <th>age</th>
                        <th>createdAt</th>
                    </tr>
                    </thead>
                    <tbody>
                    <tr>
                        <td>1,1</td>
                        <td>1,2</td>
                        <td>1,3</td>
                        <td>1,4</td>
                        <td>1,5</td>
                        <td>1,6</td>
                        <td>1,7</td>
                    </tr>
                    <tr>
                        <td>1,1</td>
                        <td>1,2</td>
                        <td>1,3</td>
                        <td>1,4</td>
                        <td>1,5</td>
                        <td>1,6</td>
                        <td>1,7</td>
                    </tr>
                    </tbody>
                </table>
            </div>
        </div>
    </div>

</div>

<script>
    const adminTabCg = document.querySelectorAll(".admin_tab_category > li > a");
    const adminTab = document.querySelectorAll(".admin_tab_items > li");
    const adminMain = document.querySelector("#adminMain");

    adminTabCg.forEach((tab, index) => {
        tab.addEventListener("click", function (event) {
            // 기존에 active 클래스가 있는 요소에서 제거
            const activeTab = document.querySelector(".admin_tab_category a.admin_tab_active");
            adminMain.style.display = "none";

            if (activeTab) {
                activeTab.classList.remove("admin_tab_active");
            }

            // 클릭된 탭에 'admin_tab_active' 클래스 추가
            adminTab.forEach((inner) => {
                inner.classList.remove("admin_tab_active");
            });

            adminTabCg.forEach((item) => {
                item.classList.remove("admin_tab_active");
            });

            adminTab[index].classList.add("admin_tab_active");
            tab.classList.add("admin_tab_active");

            // 기본 동작인 링크 이동을 방지
            event.preventDefault();
        });
    });

</script>

<%@ include file="../../views/admin/layout/adminFooter.jsp" %>