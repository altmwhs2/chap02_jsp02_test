package com.javalab.vo;

import java.io.Serializable;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

/*********************************************
 * 영화 자바빈즈(도메인 클래스)
 * @author 홍길동
 * 2024.06.11
 * 영화정보를 저장하는 자바빈즈
 * - 롬복 애노테이션으로 간단하게 구현
 * - 자바빈즈의 직렬화시 안정성 확보차원에서 Serializable 구현
 *********************************************/
//롬복 애노테이션 - 메타데이타
@NoArgsConstructor      // 기본 생성자
@AllArgsConstructor      // 오버로딩생성자
@Getter               // 게터 메소드
@Setter               // 세터 메소드
@ToString            // ToString() 메소드

public class Album implements Serializable {/**
    * 
    */
   private static final long serialVersionUID = 1L;
   private String title;
   private String artist;
   private int releaseYear;

}
