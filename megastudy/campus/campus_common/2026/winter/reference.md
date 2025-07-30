# 2026 윈터스쿨

[서초재종 2026 윈터스쿨](https://tseocho.megastudy.net/seocho/nsu/nsu/2026/winter/winter_01.asp)

## &#9989; 디렉토리 구조

```
/seocho/nsu/nsu/2026/winter/
├── winter_01.asp             # 탭 1 - 2026 윈터스쿨 소개
├── winter_02.asp             # 탭 2 - 모집요강
├── winter_03.asp             # 탭 3 - 커리큘럼
└── web.css                   # 개별 스타일 파일

/campus_common/2026/winter/
├── inc_top.asp               # 상단 비주얼 + 탭 + 상담 메뉴
├── inc_head.asp              # 공통 head 구성 (공통 & 전용 CSS/JS 연결)
├── winter_01.asp             # 윈터스쿨 소개 공통 콘텐츠

/public/
├── Method.asp                # ASP 메서드 정의
├── class.Mssql.asp           # DB 관련 클래스
├── js/
│   └── common_new.js         # 공통 자바스크립트
├── jquery/
│   └── jquery-1.12.4.min.js  # jQuery 라이브러리

/common/inc/
├── head_common.asp           # 공통 메타 및 기본 head 구성 포함 파일

/common/css/
├── aos.css                   # AOS 애니메이션 스타일
├── 2026/
│   └── winter.css            # 2026 윈터스쿨 전용 CSS

/common/js/
├── aos.js                    # AOS 애니메이션 JS
├── gsap.min.js               # GSAP 애니메이션 라이브러리
├── apply_info.js             # 온라인 접수 관련 JS
├── 2026/
│   └── winter.js             # 2026 윈터스쿨 전용 JS

```

---

## &#9989; 주요 Include 파일 설명

### 1. `inc_head.asp`
- **페이지 메타 정보**  
  - 문자 인코딩, 뷰포트, 브라우저 호환성 등 기본 메타 설정 포함
- **공통 및 외부 스타일, 스크립트**
  - `head_common.asp`를 통해 공통 CSS/JS 로드
  - jQuery, AOS, slick, GSAP 등 기본 라이브러리 포함
- **윈터스쿨 전용 CSS/JS 포함**
  - `/common/css/2026/winter.css`
  - `/common/js/2026/winter.js`
- **온라인 접수 관련 JS 포함**
  - `/common/js/apply_info.js`

### 2. `inc_top.asp`
- **학원별 상단 분기 처리**
  - 캠퍼스명, 브랜드명, 전화번호 설정
- **비주얼 이미지 분기 출력 (`right_wrap`)**
- **학원별 탭 출력 (`lec_tab`)**
- **상담 퀵메뉴 (`r_quickMn`)**
- **스크롤 시 탭 고정 및 상담 메뉴 노출 JS 포함**

### 3. `winter_01.asp ~ winter_03.asp`
- 각 탭에 해당하는 내용 출력
---

## &#9989; 학원 코드 분기 예시 (inc_top.asp 내부)
```asp
Select Case GetCampusVarsSiteMGC("_CAMPUS_DETAIL_CODE_") 
    Case "CD0208"
        tel = "02-535-5678"
        campusName = "서초"
        campusBrand = "메가스터디학원"
    Case "CD0243"
        tel = "031-797-9332"
        campusName = "자연계 전문관"
        campusBrand = "러셀 기숙학원"
End Select
```

---

## &#9989; 스크립트 설명

- `lec_tab` 스크롤 고정 기능
- `r_quickMn` 상담 메뉴 fadeIn/Out 처리

```js
$(function () {
    if ($('.lec_tab').length === 0 || $('.r_quickMn').length === 0) return;

    $('.r_quickMn').hide();
    var num = $('.lec_tab').offset().top;
    var isVisible = false;
    var ticking = false;

    menuTop();
    $(window).on('scroll', function () {
        if (!ticking) {
            ticking = true;
            requestAnimationFrame(function () {
                menuTop();
                ticking = false;
            });
        }
    });

    function menuTop() {
        if ($(window).scrollTop() > num) {
            $('.lec_tab').css({ top: '0px', position: 'fixed' });
            if (!isVisible) {
                $('.r_quickMn').fadeIn(300);
                isVisible = true;
            }
        } else {
            $('.lec_tab').css({ position: 'relative' });
            if (isVisible) {
                $('.r_quickMn').fadeOut(300);
                isVisible = false;
            }
        }
    }
});
```

---

## &#9989; 기타

### 4. `head_common.asp`

- **페이지 공통 `<head>` 구성 파일**
- 모든 ASP 페이지 상단에서 공통적으로 포함되며, 주요 메타 태그와 CSS/JS 파일을 불러옵니다.
- `inc_head.asp` 내에서 `<!--#include virtual="/common/inc/head_common.asp" -->`로 삽입됩니다.


```asp
<% ' head_common.asp %>

<!-- 메타 태그 -->
<meta charset="euc-kr">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="format-detection" content="telephone=no">

<!-- 파비콘 -->
<!--#Include Virtual = "/library/include/reload/favicon.asp" -->

<!-- 페이지 타이틀 -->
<title><%=gMGC_Campus_Title%></title>

<!-- 공통 CSS -->
<link rel="stylesheet" type="text/css" href="/library/css/common_new.css?v=250620" />
<link rel="stylesheet" type="text/css" href="/library/css/table.css?v=250523" />

<!-- 라이브러리 CSS -->
<link rel="stylesheet" type="text/css" href="/common/css/slick.css">

<!-- jQuery 및 UI -->
<script type="text/javascript" src="/public/jquery/jquery-1.12.4.min.js"></script>
<script type="text/javascript" src="/public/js/jquery-ui.min.js"></script>

<!-- 라이브러리 플러그인 -->
<script type="text/javascript" src="/common/js/slick.js"></script>

<!-- 공통 JS -->
<script type="text/javascript" src="/public/js/common_new.js?v20190812001"></script>

```

- **공통 외의 라이브러리는 해당 페이지에 별도 삽입**

```
<!-- 라이브러리 CSS -->
<link rel="stylesheet" type="text/css" href="/common/css/aos.css">

<!-- 라이브러리 플러그인 -->
<script type="text/javascript" src="/common/js/aos.js"></script>
<script type="text/javascript" src="/common/js/gsap.min.js"></script>