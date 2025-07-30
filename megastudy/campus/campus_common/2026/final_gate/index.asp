<!-- #include virtual="/Public/Method.asp" -->
<!-- #include virtual="/Public/class.Mssql.asp" -->
<!DOCTYPE html>
<html lang="ko">
<head>
    <%
	pageOgMeta = "<meta property='og:image' content='https://img.megastudy.net/campus/library/v2015/library/campus_common/2026/final_gate/thumb.jpg'>"
	response.write pageOgMeta
    %>

	<!--#include virtual="/common/inc/head_common.asp"-->
    <link rel="stylesheet" type="text/css" href="/common/responsive/css/base.css">
    <link rel="stylesheet" type="text/css" href="/common/responsive/css/common.css">
    <link rel="stylesheet" type="text/css" href="/common/responsive/css/util.css">
    <link rel="stylesheet" type="text/css" href="/common/responsive/css/board.css">

    <link rel="stylesheet" type="text/css" href="/common/css/aos.css">
    <link rel="stylesheet" type="text/css" href="/common/css/swiper-bundle.min.css">

    <script type="text/javascript" src="/common/js/aos.js"></script>
    <script type="text/javascript" src="/common/js/swiper-bundle.min.js"></script>
    <script type="text/javascript" src="/common/js/gsap.min.js"></script>

    <meta name="keywords" content="메가스터디, 메가스터디학원, 러셀, 입시학원, 수능, 문제풀이반, 파이널, 고1입시, 고2입시, 고3입시, 2026수능, 2027학년도, 2028학년도, 수능개편, 대입, 실전모의고사, 재수생, N수">
    <meta name="description" content="수능의 정점에 도달하라! 메가스터디학원 2026 수능 파이널 문제풀이반">
    <meta property="og:title" content="메가스터디학원">
    <meta property="og:description" content="수능의 정점에 도달하라! 메가스터디학원 2026 수능 파이널 문제풀이반">
    <meta property="og:site_name" content="메가스터디학원">
    <meta property="og:url" content="https://campus.megastudy.net/campus_common/2026/final_gate/index.asp">

    <link rel="stylesheet" type="text/css" href="web.css">
    <script type="text/javascript" src="ui.js?v=1"></script>
</head>

<body>
<div id="wrapper">
	<!-- 헤더 영역 -->
    <!-- #include virtual="/common/responsive/inc/header.asp"-->

    <div id="mojipgateWrap" class="mojip_gate_wrap">
        <div id="contents">

            <div class="top_bg">
                <div id="topVisual" class="top_visual">
                    <div class="bg_overlay"></div>
                    <div class="visual_inner">
                        <div class="obj_wrap">
                            <img class="act m01" src="<%=Application("img_path")%>/library/campus_common/2026/final_gate/top_tit1.png" alt="수능의 정점에 도달하라!" />
                            <img class="act m02" src="<%=Application("img_path")%>/library/campus_common/2026/final_gate/top_tit2.png" alt="2026 파이널 문제풀이반" />
                            <img class="act m02_2" src="<%=Application("img_path")%>/library/campus_common/2026/final_gate/top_tit2_2.png" alt="2026 파이널 문제풀이반" />
                            <img class="act m03" src="<%=Application("img_path")%>/library/campus_common/2026/final_gate/man.png" alt="" />
                            <img class="act m04" src="<%=Application("img_path")%>/library/campus_common/2026/final_gate/road.png" alt="" />
                        </div>
                    </div>
                </div>
            </div>

            <div class="section_system">
                <div class="mojip_inner">
                    <div class="title_icon" data-aos="fade-up"><img src="<%=Application("img_path")%>/library/campus_common/2026/final_gate/title_icon.png" alt="해" /></div>
                    <div class="title_wrap" data-aos="fade-up">
                        대입성공에 도달하는<br>
                        <strong>수준별 맞춤합격시스템</strong>
                    </div>
                    <div class="sub_title_wrap" data-aos="fade-up">
                        단순한 레벨 구분이 아닌<br>
                        개인별 학습 수준 분석을 통해<br>
                        <strong>실전 감각을 높이는<br class="mo_only"> 수준별 맞춤 학습 완성</strong>
                    </div> 

                    <div class="content_title" data-aos="fade-up">
                        <span><span class="text">수준별 맞춤 학습</span><p class="line"></p></span>
                    </div>
                    
                    <div class="programm_list">
                        <ul> 
                            <li data-aos="fade-up">
                                <p>
                                    <em>All Yours<br> 개인 맞춤 시간표 설계</em>
                                    <span>수업도 관리도 맞춤형으로!</span>
                                    필요한 수업, 부족한 과목만 선택!<br>
                                    효율적인 시간 활용이 가능한<br>
                                    맞춤 시간표
                                </p>
                                <div class="icon"><img src="<%=Application("img_path")%>/library/campus_common/2026/final_gate/program_icon1.png" alt="수준별 맞춤합격시스템"></div>
                            </li>
                            <li data-aos="fade-up">
                                <p>
                                    <em>테마·심화 수업<br> 무제한 수강</em>
                                    <span>수능 트렌드에 맞게!</span>
                                    학생들의 필요 사항 맞춤 반영!<br>
                                    취약 파트 완벽 보완 가능한<br>
                                    테마·심화 수업 무제한 수강
                                </p>
                                <div class="icon"><img src="<%=Application("img_path")%>/library/campus_common/2026/final_gate/program_icon2.png" alt="수준별 맞춤합격시스템"></div>
                            </li> 
                            <li data-aos="fade-up">
                                <p>
                                    <em>수준별<br> 맞춤 콘텐츠</em>
                                    <span>수준별 모의고사로 실전처럼!</span>
                                    과목별, 난이도별, 유형별 모의고사로<br>
                                    고득점 완성을 위한<br>
                                    최종 실력 점검
                                </p>
                                <div class="icon"><img src="<%=Application("img_path")%>/library/campus_common/2026/final_gate/program_icon3.png" alt="수준별 맞춤합격시스템"></div>
                            </li>
                        </ul>
                    </div>
                </div>
            </div> 
    
            <div class="section_tab">
                <div class="mojip_inner">
                    <div class="title_wrap" data-aos="fade-up">
                        실전 감각을 극대화하는<br>
                        <strong>수준별 콘텐츠</strong>
                    </div>
                    <div class="sub_title_wrap" data-aos="fade-up">
                        내가 중심이 되는 Customized-Contents<br>
                        <strong>풍부한 수준별 맞춤 학습 콘텐츠로<br class="mo_only"> 완벽한 실전 대비</strong>
                    </div> 

                    <div class="slider_wrap" data-aos="fade-up">
                        <div class="tabs">
                            <button class="tab active" data-index="0">OMEGA 시리즈</button>
                            <button class="tab" data-index="1">전국 집체 모의고사</button>
                        </div>
                        <div class="slider_content">
                            <div class="slider_content_inner">
                                <div class="swiper-container" data-index="0">
                                    <div class="swiper-wrapper">
                                        <div class="swiper-slide">
                                            <div class="slide_info">
                                                <div class="slide_text">
                                                    <h3>OMEGA</h3>
                                                    <div class="text_sub">
                                                        <strong>실력과 실전의 간극을 좁히다</strong>
                                                        <p><span>&middot;</span><span>실제 수능과 비슷한 난이도의 문제 구성</span></p>
                                                        <p><span>&middot;</span><span>신유형 포함 및 평가원 트렌드를 반영한 문제로<br class="pc_only"> 수능 출제 패턴 체화</span></p>
                                                    </div>
                                                </div>
                                                <a class="slide_link"  
                                                    data-pc="https://campus.megastudy.net/campus_common/2025/2025_omega/index.asp"
                                                    data-mo="https://mcampus.megastudy.net/campus_common/2025/2025_omega/index.asp" 
                                                    href="" target="_self">자세히 보기<span class="link_arrow"></span>
                                                </a>
                                            </div>
                                            <div class="slide-img">
                                                <img src="<%=Application("img_path")%>/library/campus_common/2026/final_gate/tab_01_omega.png" alt="" />
                                            </div>
                                        </div>
                                        <div class="swiper-slide">
                                            <div class="slide_info">
                                                <div class="slide_text">
                                                    <h3>OMEGA link</h3>
                                                    <div class="text_sub">
                                                        <strong>약점을 보완하고 성적이 오르다</strong>
                                                        <p><span>&middot;</span><span>복습 최적화 OMEGA 준 연계 하프 모의고사</span></p>
                                                        <p><span>&middot;</span><span>10지 선다형, OX 문제 등 과목별 맞춤 문항으로<br class="pc_only"> 섬세한 실력 보완</span></p>
                                                    </div>
                                                </div>
                                                <a class="slide_link"  
                                                    data-pc="https://campus.megastudy.net/campus_common/2025/2025_omega/index.asp"
                                                    data-mo="https://mcampus.megastudy.net/campus_common/2025/2025_omega/index.asp" 
                                                    href="" target="_self">자세히 보기<span class="link_arrow"></span>
                                                </a>
                                            </div>
                                            <div class="slide-img">
                                                <img src="<%=Application("img_path")%>/library/campus_common/2026/final_gate/tab_01_link.png" alt="" />
                                            </div>
                                        </div>
                                        <div class="swiper-slide">
                                            <div class="slide_info">
                                                <div class="slide_text">
                                                    <h3>OMEGA black</h3>
                                                    <div class="text_sub">
                                                        <strong>한계를 뛰어넘는 실력을 완성하다</strong>
                                                        <p><span>&middot;</span><span>최상위권을 결정짓는 고난도 실전 모의고사</span></p>
                                                        <p><span>&middot;</span><span>1등급을 넘어 만점을 향한<br class="pc_only"> 고난도 문항 완전 정복</span></p>
                                                    </div>
                                                </div>
                                                <a class="slide_link"  
                                                    data-pc="https://campus.megastudy.net/campus_common/2025/2025_omega/index.asp"
                                                    data-mo="https://mcampus.megastudy.net/campus_common/2025/2025_omega/index.asp" 
                                                    href="" target="_self">자세히 보기<span class="link_arrow"></span>
                                                </a>
                                            </div>
                                            <div class="slide-img">
                                                <img src="<%=Application("img_path")%>/library/campus_common/2026/final_gate/tab_01_black.png" alt="" />
                                            </div>
                                        </div>
                                    </div>
                                    <div class="swiper-pagination"></div>
                                </div>
                                <div class="swiper-container" data-index="1" style="display: none;">
                                    <div class="swiper-wrapper">
                                        <div class="swiper-slide">
                                            <div class="slide_info">
                                                <div class="slide_text">
                                                    <h3>전국 대단위 <br class="ta_only"><br class="mo_only"> 실전 모의고사</h3>
                                                    <div class="text_sub">
                                                        <strong>'전국 수험생'과 경쟁하는 수능 실전 시뮬레이션</strong>
                                                        <p><span>&middot;</span><span>6월 모평·수능 출제 범위를 반영한 전 과목 실전 모의고사</span></p>
                                                        <p><span>&middot;</span><span>개인 성적 분석 리포트, 메가스터디 강사진의 해설 강의로<br class="pc_only"> 학습 효과 극대화</span></p>
                                                    </div>
                                                </div>
                                                <a class="slide_link"  
                                                    data-pc="https://campus.megastudy.net/campus_common/2025/2025_jdsm/index.asp"
                                                    data-mo="https://mcampus.megastudy.net/campus_common/2025/2025_jdsm/index.asp" 
                                                    href="" target="_self">자세히 보기<span class="link_arrow"></span>
                                                </a>
                                            </div>
                                            <div class="slide-img">
                                                <img src="<%=Application("img_path")%>/library/campus_common/2026/final_gate/tab_02_jdsm.png" alt="" />
                                            </div>
                                        </div>
                                        <div class="swiper-slide">
                                            <div class="slide_info">
                                                <div class="slide_text">
                                                    <h3>메가X대성 더 <br class="ta_only"><br class="mo_only">프리미엄 모의고사</h3>
                                                    <div class="text_sub">
                                                        <strong>전국 대단위 전 과목 실전 모의고사</strong>
                                                        <p><span>&middot;</span><span>러셀X메가스터디학원, 대성학원 재원생 전체 응시로<br class="pc_only"> 상세 성적 비교 분석 및 실력 파악 </span></p>
                                                        <p><span>&middot;</span><span>과목별 전문 출제진의 다 회차 검토를 거친 고퀄리티 문항</span></p>
                                                    </div>
                                                </div>
                                                <a class="slide_link"  
                                                    data-pc="https://campus.megastudy.net/campus_common/2025/2025_premium/index.asp"
                                                    data-mo="https://mcampus.megastudy.net/campus_common/2025/2025_premium/index.asp" 
                                                    href="" target="_self">자세히 보기<span class="link_arrow"></span>
                                                </a>
                                            </div>
                                            <div class="slide-img">
                                                <img src="<%=Application("img_path")%>/library/campus_common/2026/final_gate/tab_02_premium.png" alt="" />
                                            </div>
                                        </div>
                                    </div>
                                    <div class="swiper-pagination"></div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="section_level">
                <div class="mojip_inner">
                    <div class="title_wrap" data-aos="fade-up">
                        최적의 전략을 완성하는<br>
                        <strong>입시 전문가</strong>
                    </div>
                    <div class="sub_title_wrap" data-aos="fade-up">
                        폭 넓고 세밀해진 우수 강사 인프라,<br>
                        검증된 관리력 입시 전문 담임<br>
                        <strong>학생 중심 맞춤 관리로<br class="mo_only"> 대입성공의 로드맵 완성</strong>
                    </div>

                    <div data-aos="fade-up">
                        <div class="number_title first">
                            <span class="title_num">1</span>
                            <div>학생들이 인정하는 <strong>우수 강사진</strong></div>
                        </div>
                        <div class="bubble_01">
                            <img src="<%=Application("img_path")%>/library/campus_common/2026/final_gate/bubble_01.png" alt="" />    
                        </div>
                        <div class="content_title">
                            메가스터디학원은 상세 분석 후<br>
                            <span><span class="text">수준별 맞춤 강의 진행!</span><p class="line"></p></span>
                        </div>
                    </div>

                    <div class="teacher_list">
                        <ul> 
                            <li data-aos="fade-up">
                                <p>
                                    <em>팀플 선생님</em>
                                    대입성공을 위한 성적 향상에 최적화
                                </p>
                                <div class="icon"><img src="<%=Application("img_path")%>/library/campus_common/2026/final_gate/teacher_icon1.png" alt="팀플 선생님"></div>
                            </li>
                            <li data-aos="fade-up" data-aos-delay="100">
                                <p>
                                    <em>올데이 선생님</em>
                                    취약 부분 보완을 위한 과목별 심화 수업
                                </p>
                                <div class="icon"><img src="<%=Application("img_path")%>/library/campus_common/2026/final_gate/teacher_icon2.png" alt="올데이 선생님"></div>
                            </li>
                        </ul>
                    </div>

                    <div data-aos="fade-up">
                        <div class="number_title">
                            <span class="title_num">2</span>
                            <div>검증된 관리 시스템 <strong>입시 전문 담임</strong></div>
                        </div>
                        <div class="bubble_02">
                            <img src="<%=Application("img_path")%>/library/campus_common/2026/final_gate/bubble_02.png" alt="" />    
                        </div>
                        <div class="content_title">
                            입시 전문 담임 교육을 받은<br>
                            <span><span class="text"> 선생님이 직접 케어!</span><p class="line"></p></span>
                        </div>
                    </div>

                    <div class="step_box">
                        <div class="row_box">
                            <div class="aos-dynamic" data-aos="" >
                                <strong>STEP 1</strong>
                                입시전략연구소 주관<br>
                                입시 전형 정밀 분석 및<br>
                                자료 제작
                            </div>
                            <span class="arrow aos-dynamic" data-aos="" data-aos-delay="100" class="arrow">&nbsp;</span>
                            <div class="aos-dynamic" data-aos="" data-aos-delay="100">
                                <strong>STEP 2</strong>
                                입시전략연구소<br>
                                주관<br>
                                이론 교육
                            </div>
                            <span class="arrow aos-dynamic" data-aos="" data-aos-delay="100" class="arrow">&nbsp;</span>
                            <div class="aos-dynamic" data-aos="" data-aos-delay="150">
                                <strong>STEP 3</strong>
                                입시전략연구소<br>
                                주관<br>
                                이론 평가
                            </div>
                            <span class="arrow aos-dynamic" data-aos="" data-aos-delay="100" class="arrow">&nbsp;</span>
                            <div class="aos-dynamic" data-aos="" data-aos-delay="200">
                                <strong>STEP 4</strong>
                                채점 및<br>
                                피드백
                            </div>
                            <span class="arrow aos-dynamic" data-aos="" data-aos-delay="100" class="arrow">&nbsp;</span>
                            <div class="aos-dynamic" data-aos="" data-aos-delay="250">
                                <div>
                                    입시 전문<br>
                                    교육 과정을 통해<br>
                                    체계적인<br>
                                    입시 전문가 양성
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            
            <div class="section_megapass">
                <div class="mojip_inner">
                    <div class="title_wrap" data-aos="fade-up">
                        메가패스 <strong>100% 무료</strong>
                    </div>
                    <div class="sub_title_wrap" data-aos="fade-up">
                        혜택마저 다르다!<br>
                        <strong>메가스터디학원 재원생만<br>
                        누릴 수 있는 거대한 혜택</strong>
                    </div> 
                    <div class="coupon" data-aos="fade-up">
                        <img src="<%=Application("img_path")%>/library/campus_common/2026/final_gate/coupon.png" alt="메가패스" />
                    </div>
                    <div class="pc_ta_only coin" data-aos="zoom-in" data-aos-delay="100">
                        <img src="<%=Application("img_path")%>/library/campus_common/2026/final_gate/coin.png" alt="메가패스" />
                    </div>
                    <div class="mo_only coin" data-aos="zoom-in" data-aos-delay="100">
                        <img src="<%=Application("img_path")%>/library/campus_common/2026/final_gate/coin_mo.png" alt="메가패스" />
                    </div>
                    <p class="notice" data-aos="fade-up">
                        ※ 수능 파이널 문제풀이반에 '재원'하는 학생 대상<br>
                        ※ 환불 및 퇴원 시 무료 혜택 제공 중단
                    </p>
                </div>
            </div>

            <div class="section_banner">
                <div class="mojip_inner"> 
                    <div class="banner_text">
                        <p data-aos="fade-up"><span>대입성공의 정점</span>을 찍을<br>
                        수준이 다른 수준별 맞춤 학습</p>
                        <strong data-aos="fade-up" data-aos-delay="50">2026 수능 파이널 문제풀이반</strong>
                    </div> 
                </div>
            </div> 

            <div id="academyList" class="section_academy">
                <div class="mojip_inner">
                    <div class="title_wrap" data-aos="fade-up">
                        <h2 class="main_tit">학원 안내</h2>
                    </div>
                    <div class="academy_info_wrap" data-aos="fade-up">
                        <ul>
                            <li>
                                <div class="academy_info">
                                    <strong class="academy_name">서초</strong>
                                    <p class="academy_call">02-535-5678</p>
                                    <div class="mo_academy_info">
                                        <a class="btn_info" href="https://mseocho.megastudy.net/seocho/nsu/class/2026/final/index.asp?tab=edu-semi90" target="_blank">모집안내</a>
                                        <a class="btn_tel" href="tel:02-535-5678">02-535-5678</a>
                                    </div>
                                </div>
                                <a class="mojip_btn" href="https://seocho.megastudy.net/seocho/nsu/nsu/2026/final/final_01.asp" target="_blank">모집안내<span class="mojip_arrow"></span></a>
                            </li>
                            <li>
                                <div class="academy_info">
                                    <strong class="academy_name">강북</strong>
                                    <p class="academy_call">02-935-3378</p>
                                    <div class="mo_academy_info">
                                        <a class="btn_info" href="https://mgangbuk.megastudy.net/gangbuk/nsu/class/2026/final/index.asp?tab=edu-semi90" target="_blank">모집안내</a>
                                        <a class="btn_tel" href="tel:02-935-3378">02-935-3378</a>
                                    </div>
                                </div>
                                <a class="mojip_btn" href="https://gangbuk.megastudy.net/gangbuk/nsu/nsu/2026/final/final_01.asp" target="_blank">모집안내<span class="mojip_arrow"></span></a>
                            </li>
                            <li>
                                <div class="academy_info">
                                    <strong class="academy_name">노량진</strong>
                                    <p class="academy_call">02-826-1555</p>
                                    <div class="mo_academy_info">
                                        <a class="btn_info" href="https://mnoryangjin.megastudy.net/noryangjin/nsu/class/2026/final/index.asp?tab=edu-semi90" target="_blank">모집안내</a>
                                        <a class="btn_tel" href="tel:02-826-1555">02-826-1555</a>
                                    </div>
                                </div>
                                <a class="mojip_btn" href="https://noryangjin.megastudy.net/noryangjin/nsu/nsu/2026/final/final_01.asp" target="_blank">모집안내<span class="mojip_arrow"></span></a>
                            </li>
                            <li>
                                <div class="academy_info">
                                    <strong class="academy_name">신촌</strong>
                                    <p class="academy_call">02-3144-1010</p>
                                    <div class="mo_academy_info">
                                        <a class="btn_info" href="https://msinchon.megastudy.net/sinchon/nsu/class/2026/final/index.asp?tab=edu-semi90" target="_blank">모집안내</a>
                                        <a class="btn_tel" href="tel:02-3144-1010">02-3144-1010</a>
                                    </div>
                                </div>
                                <a class="mojip_btn" href="https://sinchon.megastudy.net/sinchon/nsu/nsu/2026/final/final_01.asp" target="_blank">모집안내<span class="mojip_arrow"></span></a>
                            </li>
                            <li>
                                <div class="academy_info">
                                    <strong class="academy_name">송파</strong>
                                    <p class="academy_call">02-428-8181</p>
                                    <div class="mo_academy_info">
                                        <a class="btn_info" href="https://msongpa.megastudy.net/songpa/nsu/class/2026/final/index.asp?tab=edu-semi90" target="_blank">모집안내</a>
                                        <a class="btn_tel" href="tel:02-428-8181">02-428-8181</a>
                                    </div>
                                </div>
                                <a class="mojip_btn" href="https://songpa.megastudy.net/songpa/nsu/nsu/2026/final/final_01.asp" target="_blank">모집안내<span class="mojip_arrow"></span></a>
                            </li>
                            <li>
                                <div class="academy_info">
                                    <strong class="academy_name">부천</strong>
                                    <p class="academy_call">032-326-9900</p>
                                    <div class="mo_academy_info">
                                        <a class="btn_info" href="https://mbucheon.megastudy.net/bucheon/nsu/class/2026/final/index.asp?tab=edu-semi90" target="_blank">모집안내</a>
                                        <a class="btn_tel" href="tel:032-326-9900">032-326-9900</a>
                                    </div>
                                </div>
                                <a class="mojip_btn" href="https://bucheon.megastudy.net/bucheon/nsu/nsu/2026/final/final_01.asp" target="_blank">모집안내<span class="mojip_arrow"></span></a>
                            </li>
                            <li>
                                <div class="academy_info">
                                    <strong class="academy_name">분당</strong>
                                    <p class="academy_call">031-781-3100</p>
                                    <div class="mo_academy_info">
                                        <a class="btn_info" href="https://mbundang.megastudy.net/bundang/nsu/class/2026/final/index.asp?tab=edu-semi90" target="_blank">모집안내</a>
                                        <a class="btn_tel" href="tel:031-781-3100">031-781-3100</a>
                                    </div>
                                </div>
                                <a class="mojip_btn" href="https://bundang.megastudy.net/bundang/nsu/nsu/2026/final/final_01.asp" target="_blank">모집안내<span class="mojip_arrow"></span></a>
                            </li>
                            <li>
                                <div class="academy_info">
                                    <strong class="academy_name">일산</strong>
                                    <p class="academy_call">031-8073-9600</p>
                                    <div class="mo_academy_info">
                                        <a class="btn_info" href="https://milsan.megastudy.net/ilsan/nsu/class/2026/final/index.asp?tab=edu-semi90" target="_blank">모집안내</a>
                                        <a class="btn_tel" href="tel:031-8073-9600">031-8073-9600</a>
                                    </div>
                                </div>
                                <a class="mojip_btn" href="https://ilsan.megastudy.net/ilsan/nsu/nsu/2026/final/final_01.asp" target="_blank">모집안내<span class="mojip_arrow"></span></a>
                            </li>
                            <li>
                                <div class="academy_info">
                                    <strong class="academy_name">평촌</strong>
                                    <p class="academy_call">031-388-3141</p>
                                    <div class="mo_academy_info">
                                        <a class="btn_info" href="https://mpyeongchon.megastudy.net/pyeongchon/nsu/bbs/invite_notice_view.asp?code=26947&tab=edu-semi90" target="_blank">모집안내</a>
                                        <a class="btn_tel" href="tel:031-388-3141">031-388-3141</a>
                                    </div>
                                </div>
                                <a class="mojip_btn" href="https://pyeongchon.megastudy.net/pyeongchon/nsu/bbs/invite_notice_view.asp?code=26947" target="_blank">모집안내<span class="mojip_arrow"></span></a>
                            </li>
                            <li>
                                <div class="academy_info">
                                    <strong class="academy_name">성북</strong>
                                    <p class="academy_call">02-927-8001</p>
                                    <div class="mo_academy_info">
                                        <a class="btn_info" href="https://mseongbuks.megastudy.net/seongbuk/jaehak/class/2026/winter/index.asp?tab=edu-semi90" target="_blank">모집안내</a>
                                        <a class="btn_tel" href="tel:02-927-8001">02-927-8001</a>
                                    </div>
                                </div>
                                <a class="mojip_btn" href="https://seongbuks.megastudy.net/seongbuk/jaehak/jaehak/2026/final/final_01.asp" target="_blank">모집안내<span class="mojip_arrow"></span></a>
                            </li> 
                        </ul>
                    </div>
                </div>
            </div> 

            <!-- 위로가기 버튼 -->
            <!--#include virtual="/common/responsive/inc/right_bottom_btn.asp"-->

            <div class="fixedFloating">
                <div class="fixed_floating">
                    <div class="fixed_academy_list"> 
                        <ul class="academy_list pc_ta_only">
                            <li><a href="https://seocho.megastudy.net/seocho/nsu/nsu/2026/final/final_01.asp" target="_blank">서초</a></li>
                            <li><a href="https://gangbuk.megastudy.net/gangbuk/nsu/nsu/2026/final/final_01.asp" target="_blank">강북</a></li>
                            <li><a href="https://noryangjin.megastudy.net/noryangjin/nsu/nsu/2026/final/final_01.asp" target="_blank">노량진</a></li>
                            <li><a href="https://sinchon.megastudy.net/sinchon/nsu/nsu/2026/final/final_01.asp" target="_blank">신촌</a></li>
                            <li><a href="https://songpa.megastudy.net/songpa/nsu/nsu/2026/final/final_01.asp" target="_blank">송파</a></li>
                            <li><a href="https://bucheon.megastudy.net/bucheon/nsu/nsu/2026/final/final_01.asp" target="_blank">부천</a></li>
                            <li><a href="https://bundang.megastudy.net/bundang/nsu/nsu/2026/final/final_01.asp" target="_blank">분당</a></li>
                            <li><a href="https://ilsan.megastudy.net/ilsan/nsu/nsu/2026/final/final_01.asp" target="_blank">일산</a></li> 
                            <li><a href="https://pyeongchon.megastudy.net/pyeongchon/nsu/nsu/2026/final/final_01.asp" target="_blank">평촌</a></li>
                            <li><a href="https://seongbuks.megastudy.net/seongbuk/jaehak/jaehak/2026/final/final_01.asp" target="_blank">성북</a></li>
                        </ul>  
                        <ul class="academy_list mo_only">
                            <li><a href="#academyList">학원 안내</a></li> 
                        </ul>  
                    </div>
                    <div id="academyList02" class="fixed_academy_list _02"> 
                        <ul class="academy_list pc_ta_only">
                            <a href="https://campus.megastudy.net/common/notice/fair_view.asp?code=26829" target="_blank">설명회</a>  
                        </ul>  
                        <ul class="academy_list mo_only">
                            <a href="https://mcampus.megastudy.net/common/notice/fair_view.asp?code=26829">설명회</a>  
                        </ul>  
                    </div>
                </div>
            </div>

        </div><!-- // contents -->
    </div>

	<!-- 푸터 영역 -->
    <!-- #include virtual="/common/responsive/inc/footer.asp"-->
</div>

</body>
</html>