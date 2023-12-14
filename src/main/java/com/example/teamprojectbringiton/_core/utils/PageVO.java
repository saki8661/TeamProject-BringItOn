package com.example.teamprojectbringiton._core.utils;

import lombok.Data;

@Data
public class PageVO {

    //사용자가 선택한 페이지 정보를 담을 변수.
    private int pageNum;            // 페이지 번호
    private int currentPage;        // 현재 페이지
    private int countPerPage;       // 전체 페이지 개수
    private int pageSize;           // 페이지당 출력할 데이터 개수
    private int countSize;          // 화면 하단에 출력할 페이지 사이즈
    private int lastPage;           // 마지막 페이지
    private int firstPage;          // 처음 페이지


    public PageVO() {
        this.pageNum = 1;
        this.pageSize = 8;
        this.countSize = 5;
        this.lastPage = 1;
        this.firstPage = 0;
    }


}
