﻿# 서초 메가스터디학원 강사 소개 페이지 구현 가이드

## 1. 프로젝트 소개

이 웹 애플리케이션은 서초 메가스터디학원의 강사를 과목별로 탐색할 수 있는 인터페이스를 제공합니다. Vue.js를 기반으로 동적 콘텐츠 렌더링, 사용자 상호작용, 팝업 기능을 구현하였으며, 반응형 디자인을 통해 모바일 최적화된 사용자 경험을 제공합니다.

## 2. 주요 기능 설명

### 1) 탭 메뉴
사용자는 과목 탭을 클릭하여 특정 과목의 강사 목록을 확인할 수 있습니다. "전체" 탭을 선택하면 모든 과목의 강사를 표시하며, 각 과목에 해당하는 강사들을 필터링해서 보여줍니다.

### 2) 강사 정보 카드
강사의 이름, 과목, 사진, 주요 특징 및 경력을 카드 형식으로 보여줍니다. 사진이 없는 경우 기본 이미지를 표시하며, 카드 클릭 시 해당 강사의 상세 정보를 팝업으로 띄울 수 있습니다.

### 3) 팝업 상세 보기
강사 카드 클릭 시 팝업 창이 열리며, 그 안에 강사의 특징, 경력, 저서 등의 상세 정보가 표시됩니다. 팝업은 닫기 버튼을 통해 종료할 수 있습니다.

### 4) 반응형 디자인
모바일 화면에서도 잘 작동할 수 있도록 다양한 화면 크기에서 최적화된 레이아웃을 제공합니다. `viewport` 메타 태그를 사용하여 화면 크기에 따라 적절한 크기의 레이아웃을 렌더링합니다.

## 3. 기술 스택

- **프론트엔드 프레임워크**: Vue.js 2.x
    - Vue.js의 양방향 데이터 바인딩(`v-bind`, `v-model`)과 조건부 렌더링(`v-if`, `v-show`)을 활용하여 동적인 UI를 구현.
- **HTML/CSS**: 기존 스타일 시트(`main_renew.css`, `teacher_2024.css`)를 활용하여 레이아웃과 기본 스타일링을 적용. 추가적인 스타일링은 필요 시 확장 가능.
- **CDN**: Vue.js는 CDN을 통해 로드하여 별도의 설치 과정 없이 쉽게 사용할 수 있습니다.

## 4. 코드 구조

### 1) HTML 구조
HTML 파일은 `Vue.js` 애플리케이션의 뼈대를 형성합니다. `div#app` 내부에 Vue.js의 컴포넌트들이 렌더링됩니다.

#### 주요 구성 요소
- **`<head>`**: 메타 태그로 캐싱 방지, 반응형 디자인, 이미지 툴바 비활성화 등을 설정.
- **`<body>`**: Vue.js의 메인 애플리케이션 엘리먼트인 `<div id="app">` 내부에 HTML 구조가 정의됩니다.

### 2) Vue.js
#### 데이터 (`data`)
- `selectedTab`: 현재 선택된 과목 탭을 저장.
- `isPopupVisible`: 팝업의 표시 여부.
- `popupTeacher`: 팝업에서 보여줄 강사 정보를 저장.
- `subjects`: 과목 코드와 이름의 매핑 정보.
- `teachers`: 각 과목별 강사 리스트 데이터.

#### 메소드 (`methods`)
- `viewLecTeacherList(tab)`: 선택된 과목 탭에 따라 강사 목록을 필터링.
- `openPopup(teacher)`: 강사 정보를 팝업에 표시.
- `closePopup()`: 팝업을 닫음.

#### 계산된 속성 (`computed`)
- `allTeachers`: 모든 강사를 단일 배열로 반환, "전체" 탭 사용 시 유용.

### 3) CSS
외부 스타일 시트(`main_renew.css`, `teacher_2024.css`)는 전체적인 레이아웃과 기본 스타일링을 담당합니다. 추가적인 스타일링은 `Sass`로 작성된 SCSS 파일을 통해 확장할 수 있습니다.

## 5. 사용 방법

### 1) 설치 없이 실행
웹 브라우저에서 HTML 파일을 열면 바로 실행됩니다. Vue.js는 CDN을 통해 로드되어 별도의 설치 과정 없이 즉시 사용할 수 있습니다.

### 2) 탭 탐색
화면 상단에 있는 과목 탭을 클릭하여 원하는 과목의 강사 목록을 확인할 수 있습니다.

### 3) 강사 상세 보기
강사 카드 클릭 시 팝업으로 강사의 상세 정보를 확인할 수 있습니다. 팝업 오른쪽 상단의 닫기 버튼을 클릭하여 팝업을 종료할 수 있습니다.

## 6. 개선 및 확장 가능성

### 1) 컴포넌트화
강사 카드와 팝업을 별도의 Vue 컴포넌트로 분리하여 재사용성을 높일 수 있습니다.

### 2) 데이터 동적 로드
현재는 `teachers` 데이터를 하드코딩했지만, API 통합을 통해 동적으로 데이터를 로드하도록 개선할 수 있습니다.

### 3) UI/UX 향상
- **Lazy-Loading**: 강사 이미지를 늦게 로드하여 초기 로딩 속도를 개선할 수 있습니다.
- **팝업 외부 클릭 시 자동 닫기** 기능을 추가하여 사용자가 편리하게 팝업을 닫을 수 있도록 합니다.

### 4) 다국어 지원
Vue i18n을 활용하여 다국어(한국어, 영어 등) 지원 기능을 추가할 수 있습니다.

### 5) 검색 기능 추가
사용자가 강사의 이름이나 과목을 검색할 수 있는 기능을 추가하여 더 나은 사용자 경험을 제공할 수 있습니다.

### 6) 테스트 코드 작성
`Jest` 또는 `Cypress`를 활용하여 주요 기능에 대한 테스트 코드를 작성하여 안정성을 강화할 수 있습니다.

## 7. 결론

이 가이드는 코드의 기능과 구조를 상세히 설명하고 있으며, 확장 가능성 및 개선 사항에 대한 아이디어를 제시합니다. 프로젝트를 이해하고 유지보수하거나 확장하는 데 필요한 전반적인 지침으로 사용할 수 있습니다.