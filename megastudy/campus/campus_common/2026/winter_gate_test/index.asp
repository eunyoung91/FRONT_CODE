<!-- #include virtual="/Public/Method.asp" -->
<!-- #include virtual="/Public/class.Mssql.asp" -->
<!DOCTYPE html>
<html lang="ko">
<head>
    <%
	pageOgMeta = "<meta property='og:image' content='https://img.megastudy.net/campus/library/v2015/library/campus_common/2026/winter_gate/thumb.jpg'>"
	response.write pageOgMeta
    %>
    <!--#include virtual="/common/inc/head_common.asp"-->
    <link rel="stylesheet" type="text/css" href="/common/css/base.css">
    <link rel="stylesheet" type="text/css" href="/common/css/util.css">
    <!-- 라이브러리 CSS -->
    <link rel="stylesheet" type="text/css" href="/common/css/aos.css">
    <!-- 라이브러리 플러그인 -->
    <script type="text/javascript" src="/common/js/aos.js"></script>
    <script type="text/javascript" src="/common/js/gsap.min.js"></script>
    
    <meta name="keywords" content="메가스터디, 메가스터디학원, 러셀, 입시학원, 겨울방학, 겨울특강, 윈터스쿨, 고1입시, 고2입시, 고3입시, 2028학년도, 수능개편,  입시학원, 대입학원, 윈터스쿨추천, 방학특강, 재수학원">
    <meta name="description" content="공부습관을 담다, 대입성공에 닿다! 메가스터디학원 2026 윈터스쿨">
    <meta property="og:title" content="메가스터디학원">
    <meta property="og:description" content="공부습관을 담다, 대입성공에 닿다! 메가스터디학원 2026 윈터스쿨">
    <meta property="og:site_name" content="메가스터디학원">
    <meta property="og:url" content="https://campus.megastudy.net/campus_common/2026/winter_gate/index.asp">

    <!-- half gate -->
    <link rel="stylesheet" type="text/css" href="web.css">
    <script type="text/javascript" src="ui.js?v=1"></script>
</head>

<body>
<div id="wrapper">  
    <!-- 헤더 영역 --> 
    <header id="header">
        <div class="container">
            <div class="left_area">
                <h1 class="logo">
                    <a href="https://campus.megastudy.net/">
                        <img class="img_mega" src="<%=Application("img_path")%>/library/common/logo/top_logo_megastudy.svg" alt="메가스터디학원" />
                    </a> 
                </h1>
            </div>
        </div>
    </header>
    <!-- 헤더 영역 --> 

    <div id="winter_container" class="winter_gate">

        <div id="contents">

            <!-- 비쥬얼 상단 -->
            <div id="topTitle">
                <div class="visual_top">  
                    <div class="act_wrap pc_only">
                        <div class="txt_wrap">
                            <div class="txt1">
                                <img class="act1" src="<%=Application("img_path")%>/library/campus_common/2026/winter_gate/top_txt01.png" alt="공부습관을 담다, 대입성공에 닿다!" /> 
                            </div>
                            <div class="txt2">
                                <img class="act2" src="<%=Application("img_path")%>/library/campus_common/2026/winter_gate/top_tit01.png" alt="2026" />
                            </div>
                            <div class="txt3"> 
                                <img class="act3" src="<%=Application("img_path")%>/library/campus_common/2026/winter_gate/top_tit02.png" alt="윈터스쿨" />
                            </div> 
                        </div> 
                    </div>  
                    <div class="act_wrap mo_only">
                        <div class="txt_wrap">
                            <div class="txt1">
                                <img class="act1" src="<%=Application("img_path")%>/library/campus_common/2026/winter_gate/mo_top_txt01.png" alt="공부습관을 담다, 대입성공에 닿다!" /> 
                            </div>
                            <div class="txt2">
                                <img class="act2" src="<%=Application("img_path")%>/library/campus_common/2026/winter_gate/mo_top_tit01.png" alt="2026" />
                            </div>
                            <div class="txt3"> 
                                <img class="act3" src="<%=Application("img_path")%>/library/campus_common/2026/winter_gate/mo_top_tit02.png" alt="윈터스쿨" />
                            </div> 
                        </div> 
                    </div> 
                    
                    <div class="snow-fall"></div> 
                </div> 
            </div>
            
            <!-- 위로가기 버튼 -->
            <div class="btn_top_wrap">
                <a href="javascript:void(0);" class="btnTop" style="bottom: 30px; position: fixed; opacity: 1;"><span class="blind">top</span></a>
            </div>

            <!-- 학원 리스트 -->
            <div id="fixedFloating" class="fixed_floating">
                <div id="academyList" class="fixed_academy_list"> 
                    <ul class="academy_list pc_only">
                        <li><a href="javascript:void(0);">서초</a></li>
                        <li><a href="javascript:void(0);">강북</a></li>
                        <li><a href="javascript:void(0);">노량진</a></li>
                        <li><a href="javascript:void(0);">신촌</a></li>
                        <li><a href="javascript:void(0);">송파</a></li>
                        <li><a href="javascript:void(0);">부천</a></li>
                        <li><a href="javascript:void(0);">분당</a></li>
                        <li><a href="javascript:void(0);">일산</a></li> 
                        <li><a href="javascript:void(0);">평촌</a></li>
                        <li><a href="javascript:void(0);">성북</a></li>
                    </ul>  
                    <ul class="academy_list mo_only">
                        <li><a href="#bottom_cont">학원 안내</a></li> 
                    </ul>  
                </div>
                <div id="academyList02" class="fixed_academy_list _02"> 
                    <ul class="academy_list pc_only">
                        <a href="https://campus.megastudy.net/common/notice/fair_view.asp?code=26829" target="_blank">설명회</a>  
                    </ul>  
                    <ul class="academy_list mo_only">
                        <a href="https://mcampus.megastudy.net/common/notice/fair_view.asp?code=26829">설명회</a>  
                    </ul>  
                </div>
            </div>
 
  
            <!-- con1 -->
            <div class="cont_section1">
                <div class="winter_inner pc">
                    <div class="title_wrap" data-aos="fade-up" data-aos-delay="100" data-aos-duration="400">
                        <p class="sub_tit">나만의 꿈을 담고, 크게 키워<br>마침내 원하는 미래에 닿는 이야기</p>
                        <h2 class="main_tit">
                            메가스터디학원<br>
                            <span>2026 윈터스쿨</span>에서<span class="mo_only ta_only"></span> 시작됩니다!
                        </h2> 
                    </div>
 
                    <div class="dream_wrap mt60">
                        <span class="ico-arrow"></span>
                        <!-- <img class="dream arrow" data-aos="fade-up" data-aos-delay="50" data-aos-duration="300" src="<%=Application("img_path")%>/library/campus_common/2026/winter_gate/con01_img04.png" alt="화살표" class="ico-arrow" />  -->
                        <div class="round_wrap">
                            <img class="dream _01" data-aos="fade-up" data-aos-duration="100" src="<%=Application("img_path")%>/library/campus_common/2026/winter_gate/con01_img01.png" alt="꿈을 담다" />
                            <p class="mo_only ico_arrow"><img data-aos="fade-up" data-aos-duration="200" src="<%=Application("img_path")%>/library/campus_common/2026/winter_gate/icon_arrow.png" alt="꿈을 담다" /></p>
                            <img class="dream _02" data-aos="fade-up" data-aos-delay="300" data-aos-duration="400" src="<%=Application("img_path")%>/library/campus_common/2026/winter_gate/con01_img02.png" alt="꿈을 키우다" />
                            <p class="mo_only ico_arrow"><img data-aos="fade-up" data-aos-duration="200" src="<%=Application("img_path")%>/library/campus_common/2026/winter_gate/icon_arrow.png" alt="꿈을 담다" /></p>
                            <img class="dream _03" data-aos="fade-up" data-aos-delay="700" data-aos-duration="600" src="<%=Application("img_path")%>/library/campus_common/2026/winter_gate/con01_img03.png" alt="꿈을 닿다" /> 
                        </div>
                    </div>
                     
                </div>
            </div>

            <!-- <div class="cont_section1 ta_only">
                <div class="winter_inner">
                    <div class="title_wrap" data-aos="fade-up" data-aos-delay="100" data-aos-duration="400">
                        <p class="sub_tit">나만의 꿈을 담고, 크게 키워<br>마침내 원하는 미래에 닿는 이야기</p>
                        <h2 class="main_tit">
                            메가스터디학원<br>
                            <span>2026 윈터스쿨</span>에서<br>시작됩니다!
                        </h2> 
                    </div> 

                    <div class="dream_wrap mt60"> 
                        <img class="dream _01" data-aos="fade-up" data-aos-delay="100" data-aos-duration="400" src="<%=Application("img_path")%>/library/campus_common/2026/winter_gate/ta_con01_img04.png" alt="꿈을 담다" /> 
                    </div>
                     
                </div>
            </div> -->

            <!-- <div class="cont_section1 mo_only">
                <div class="winter_inner">
                    <div class="title_wrap" data-aos="fade-up" data-aos-delay="100" data-aos-duration="400">
                        <p class="sub_tit">나만의 꿈을 담고, 크게 키워<br>마침내 원하는 미래에 닿는 이야기</p>
                        <h2 class="main_tit">
                            메가스터디학원<br>
                            <span>2026 윈터스쿨</span>에서<br>시작됩니다!
                        </h2> 
                    </div> 

                    <div class="dream_wrap mt60"> 
                        <img class="dream _01" data-aos="fade-up" data-aos-delay="100" data-aos-duration="400" src="<%=Application("img_path")%>/library/campus_common/2026/winter_gate/mo_con01_img01.png" alt="꿈을 담다" />
                        <img class="dream _02" data-aos="fade-up" data-aos-delay="100" data-aos-duration="400" src="<%=Application("img_path")%>/library/campus_common/2026/winter_gate/mo_con01_img02.png" alt="꿈을 키우다" />
                        <img class="dream _03" data-aos="fade-up" data-aos-delay="100" data-aos-duration="400" src="<%=Application("img_path")%>/library/campus_common/2026/winter_gate/mo_con01_img03.png" alt="꿈에 닿다" />
                    </div>
                     
                </div>
            </div> -->

            <!-- con2 -->
            <div class="cont_section2 pc_only">
                <div class="winter_inner">
                    <div class="title_wrap" data-aos="fade-up" data-aos-delay="0" data-aos-duration="400">
                        <img src="<%=Application("img_path")%>/library/campus_common/2026/winter_gate/con02_title.png" alt="대입성공의 꿈을 담다" />
                    </div>
                    <div class="sub_title_wrap" data-aos="fade-in" data-aos-delay="0" data-aos-duration="400">
                        <p>
                            시기별, 고민별 학습전략으로<br>
                            <strong>확실한 학습 방향 제시</strong>
                        </p>
                    </div> 
                    <div class="message_bg mt60">
                        <img class="con2_phone" data-aos="fade-up" data-aos-delay="0" data-aos-duration="400" src="<%=Application("img_path")%>/library/campus_common/2026/winter_gate/con02_img01.png" alt="휴대폰" />
                    </div>
                    <div class="message_wrap">
                        <img class="message _01" data-aos="fade-up" data-aos-delay="0" data-aos-duration="400" src="<%=Application("img_path")%>/library/campus_common/2026/winter_gate/con02_message01.png" alt="중3" />
                        <img class="message _02" data-aos="fade-up" data-aos-delay="50" data-aos-duration="400" src="<%=Application("img_path")%>/library/campus_common/2026/winter_gate/con02_message02.png" alt="고1" />
                        <img class="message _03" data-aos="fade-up" data-aos-delay="150" data-aos-duration="400" src="<%=Application("img_path")%>/library/campus_common/2026/winter_gate/con02_message03.png" alt="고2" />
                    </div> 
                </div>
            </div>

            <div class="cont_section2 mo_only">
                <div class="winter_inner">
                    <div class="title_wrap" data-aos="fade-up" data-aos-delay="0" data-aos-duration="400">
                        <img src="<%=Application("img_path")%>/library/campus_common/2026/winter_gate/mo_con02_title.png" alt="대입성공의 꿈을 담다" />
                    </div>
                    <div class="sub_title_wrap" data-aos="fade-in" data-aos-delay="0" data-aos-duration="400">
                        <p>
                            시기별, 고민별 학습전략으로<br>
                            <strong>확실한 학습 방향 제시</strong>
                        </p>
                    </div> 
                    <div class="message_bg mt50">
                        <img class="con2_phone" data-aos="fade-up" data-aos-delay="0" data-aos-duration="400" src="<%=Application("img_path")%>/library/campus_common/2026/winter_gate/mo_con02_img01.png" alt="휴대폰" />
                    </div>
                    <div class="message_wrap">
                        <img class="message _01" data-aos="fade-up" data-aos-delay="0" data-aos-duration="400" src="<%=Application("img_path")%>/library/campus_common/2026/winter_gate/mo_con02_message01.png" alt="중3" />
                        <img class="message _02" data-aos="fade-up" data-aos-delay="50" data-aos-duration="400" src="<%=Application("img_path")%>/library/campus_common/2026/winter_gate/mo_con02_message02.png" alt="고1" />
                        <img class="message _03" data-aos="fade-up" data-aos-delay="150" data-aos-duration="400" src="<%=Application("img_path")%>/library/campus_common/2026/winter_gate/mo_con02_message03.png" alt="고2" />
                    </div> 
                </div>
            </div>
 
            <!-- con3 -->
            <div class="cont_section3">
                <div class="winter_inner">
                    <div class="title_wrap" data-aos="fade-up" data-aos-delay="0" data-aos-duration="400">
                        <img class="pc_only" src="<%=Application("img_path")%>/library/campus_common/2026/winter_gate/con03_title.png" alt="대입성공의 꿈을 키우다" />
                        <img class="mo_only" src="<%=Application("img_path")%>/library/campus_common/2026/winter_gate/mo_con03_title.png" alt="대입성공의 꿈을 키우다" />
                    </div>
                    <div class="sub_title_wrap" data-aos="fade-in" data-aos-delay="0" data-aos-duration="400">
                        <p>
                            메가스터디학원의 대입 노하우를 담은<br>
                            <strong>차별화된 윈터스쿨 프로그램</strong>
                        </p>
                    </div> 
                    <div class="programm_wrap" data-aos="fade-up" data-aos-delay="0" data-aos-duration="400"> 
                        <ul class="programm_list">
                            <li class="list01">
                                <strong class="programm_name">강의</strong>
                                <p>과목별 약점 분석 및<br>성적 향상 목표</p>
                                <div class="list_icon pc_only"><img src="<%=Application("img_path")%>/library/campus_common/2026/winter_gate/cont03_icon01.png" alt=""></div>
                                <div class="list_icon mo_only"><img src="<%=Application("img_path")%>/library/campus_common/2026/winter_gate/mo_cont03_icon01.png" alt=""></div>
                            </li>
                            <li class="list02">
                                <strong class="programm_name">강사진</strong>
                                <p>우수한 입시 전문 강의로<br>학생들의 높은 만족도</p>
                                <div class="list_icon pc_only"><img src="<%=Application("img_path")%>/library/campus_common/2026/winter_gate/cont03_icon02.png" alt=""></div>
                                <div class="list_icon mo_only"><img src="<%=Application("img_path")%>/library/campus_common/2026/winter_gate/mo_cont03_icon02.png" alt=""></div>
                            </li>
                            <li class="list03">
                                <strong class="programm_name">학습 콘텐츠</strong>
                                <p>자기주도학습을 위한<br>올바른 공부습관 형성</p>
                                <div class="list_icon pc_only"><img src="<%=Application("img_path")%>/library/campus_common/2026/winter_gate/cont03_icon03.png" alt=""></div>
                                <div class="list_icon mo_only"><img src="<%=Application("img_path")%>/library/campus_common/2026/winter_gate/mo_cont03_icon03.png" alt=""></div>
                            </li>
                            <li class="list04">
                                <strong class="programm_name">입시 컨설팅</strong>
                                <p>개인 맞춤 입시 전략으로<br>대입성공 방향성 제시
                                <div class="list_icon pc_only"><img src="<%=Application("img_path")%>/library/campus_common/2026/winter_gate/cont03_icon04.png" alt=""></div></p>
                                <div class="list_icon mo_only"><img src="<%=Application("img_path")%>/library/campus_common/2026/winter_gate/mo_cont03_icon04.png" alt=""></div></p>
                            </li>
                            <li class="list05">
                                <strong class="programm_name">질의응답 시스템</strong>
                                <p>과목별 1:1 질의응답으로<br>학생 맞춤 학습법 지도</p>
                                <div class="list_icon pc_only"><img src="<%=Application("img_path")%>/library/campus_common/2026/winter_gate/cont03_icon05.png" alt=""></div>
                                <div class="list_icon mo_only"><img src="<%=Application("img_path")%>/library/campus_common/2026/winter_gate/mo_cont03_icon05.png" alt=""></div>
                            </li>
                            <li class="list06">
                                <strong class="programm_name">학습 시설</strong>
                                <p>공부에만 집중할 수 있는<br>학습 최적화</p>
                                <div class="list_icon pc_only"><img src="<%=Application("img_path")%>/library/campus_common/2026/winter_gate/cont03_icon06.png" alt=""></div>
                                <div class="list_icon mo_only"><img src="<%=Application("img_path")%>/library/campus_common/2026/winter_gate/mo_cont03_icon06.png" alt=""></div>
                            </li>
                        </ul>
                    </div>

                    <div class="sub_title_wrap pc_only mt90" data-aos="fade-in" data-aos-delay="0" data-aos-duration="400">
                        <p>
                            취약점 보완을 위한<br>
                            <strong>체계적인 점검-계획-관리 시스템</strong>
                        </p>
                    </div> 
                    <div class="sub_title_wrap mo_only mt50" data-aos="fade-in" data-aos-delay="0" data-aos-duration="400">
                        <p>
                            취약점 보완을 위한<br>
                            <strong>체계적인 점검-계획-관리 시스템</strong>
                        </p>
                    </div> 
                    <div class="con3_img_top"> 
                        <img src="<%=Application("img_path")%>/library/campus_common/2026/winter_gate/con03_img08.png" alt="학습점검, 학습관리, 학습계획" /> 
                    </div> 
                </div>
            </div>
 
            <!-- con4 -->
            <div class="cont_section4">
                <div class="winter_inner">
                    <div class="title_wrap" data-aos="fade-up" data-aos-delay="0" data-aos-duration="400" >
                        <img class="pc_only" src="<%=Application("img_path")%>/library/campus_common/2026/winter_gate/con04_title.png" alt="대입성공의 꿈에 닿다" />
                        <img class="mo_only" src="<%=Application("img_path")%>/library/campus_common/2026/winter_gate/mo_con04_title.png" alt="대입성공의 꿈에 닿다" />
                    </div>
                    <div class="sub_title_wrap" data-aos="fade-in" data-aos-delay="0" data-aos-duration="400">
                        <p>
                            윈터스쿨과 함께<br>
                            <strong>꿈에 닿은 선배들의 리얼 후기</strong>
                        </p>
                    </div> 
                    <div class="review_wrap" data-aos="fade-in" data-aos-delay="0" data-aos-duration="400"> 
                        <ul class="review_list">
                            <li><p>규칙적인 생활 패턴과<br>학습 습관을<br>만들 수 있었어요</p></li>
                            <li><p>윈터스쿨을 통해<br>고등학교 내신에 대한<br>걱정을 덜었어요</p></li>
                            <li><p>실력 있고 열정 넘치는<br>선생님 덕분에 부족한 실력을<br>끌어 올릴 수 있었어요</p></li>
                            <li><p>담임 선생님과의<br>입시 상담이<br>많은 도움이 되었어요</p></li>
                            <li><p>국수영부터 탐구 과목까지<br>공부법을 완벽하게<br>익힐 수 있게 되었어요</p></li>
                            <li><p>나만의 학습 방식을<br>알아 가면서 어떤 역량을<br>길러야 하는지 알게 되었어요</p></li> 
                        </ul>
                    </div>
                    <p class="dsc_txt">※ 메가스터디학원 2025 윈터스쿨 만족도 조사 <em>주관식 의견에서 발췌</em></p> 
                </div>
            </div> 

            <!-- con5 -->
            <div class="cont_section5">
                <div class="winter_inner"> 
                    <div class="bnr_wrap" data-aos="fade-in" data-aos-delay="0" data-aos-duration="400">
                        <p>메가스터디학원 <span>2026 윈터스쿨에서</span></p>
                        <strong>대입성공의 꿈에 <span>한 발짝 더 가까이!</span></strong> 
                    </div> 
                </div>
            </div>  

            <!-- con6 -->
            <div id="bottom_cont" class="cont_section6">
                <div class="winter_inner">
                    <div class="title_wrap top_tit">
                        <h2 class="main_tit" data-aos="fade-up" data-aos-delay="0" data-aos-duration="400">학원 안내</h2>
                    </div> 
                    
                    <div class="ct_wrap academy_info_wrap" data-aos="fade-in" data-aos-delay="0" data-aos-duration="400">
                        <ul>
                            <li>
                                <div class="academy_info">
                                    <strong class="academy_name">서초</strong>
                                    <p class="academy_call">02-535-5678</p>
                                    <div class="mo_academy_info">
                                    <a class="btn_info" href="javascript:void(0);">모집안내</a>
                                    <a class="btn_tel" href="tel:02-535-5678">02-535-5678</a>
                                    </div>
                                </div>
                                <a class="mojip_btn" href="javascript:void(0);">모집안내<span class="mojip_arrow"></span></a>
                            </li>
                            <li>
                                <div class="academy_info">
                                    <strong class="academy_name">강북</strong>
                                    <p class="academy_call">02-935-3378</p>
                                    <div class="mo_academy_info">
                                    <a class="btn_info" href="javascript:void(0);">모집안내</a>
                                    <a class="btn_tel" href="tel:02-935-3378">02-935-3378</a>
                                    </div>
                                </div>
                                <a class="mojip_btn" href="javascript:void(0);">모집안내<span class="mojip_arrow"></span></a>
                            </li>
                            <li>
                                <div class="academy_info">
                                    <strong class="academy_name">노량진</strong>
                                    <p class="academy_call">02-826-1555</p>
                                    <div class="mo_academy_info">
                                    <a class="btn_info" href="javascript:void(0);">모집안내</a>
                                    <a class="btn_tel" href="tel:02-826-1555">02-826-1555</a>
                                    </div>
                                </div>
                                <a class="mojip_btn" href="javascript:void(0);">모집안내<span class="mojip_arrow"></span></a>
                            </li>
                            <li>
                                <div class="academy_info">
                                    <strong class="academy_name">신촌</strong>
                                    <p class="academy_call">02-3144-1010</p>
                                    <div class="mo_academy_info">
                                    <a class="btn_info" href="javascript:void(0);">모집안내</a>
                                    <a class="btn_tel" href="tel:02-3144-1010">02-3144-1010</a>
                                    </div>
                                </div>
                                <a class="mojip_btn" href="javascript:void(0);">모집안내<span class="mojip_arrow"></span></a>
                            </li>
                            <li>
                                <div class="academy_info">
                                    <strong class="academy_name">송파</strong>
                                    <p class="academy_call">02-428-8181</p>
                                    <div class="mo_academy_info">
                                    <a class="btn_info" href="javascript:void(0);">모집안내</a>
                                    <a class="btn_tel" href="tel:02-428-8181">02-428-8181</a>
                                    </div>
                                </div>
                                <a class="mojip_btn" href="javascript:void(0);">모집안내<span class="mojip_arrow"></span></a>
                            </li>
                            <li>
                                <div class="academy_info">
                                    <strong class="academy_name">부천</strong>
                                    <p class="academy_call">032-326-9900</p>
                                    <div class="mo_academy_info">
                                    <a class="btn_info" href="javascript:void(0);">모집안내</a>
                                    <a class="btn_tel" href="tel:032-326-9900">032-326-9900</a>
                                    </div>
                                </div>
                                <a class="mojip_btn" href="javascript:void(0);">모집안내<span class="mojip_arrow"></span></a>
                            </li>
                            <li>
                                <div class="academy_info">
                                    <strong class="academy_name">분당</strong>
                                    <p class="academy_call">031-781-3100</p>
                                    <div class="mo_academy_info">
                                    <a class="btn_info" href="javascript:void(0);">모집안내</a>
                                    <a class="btn_tel" href="tel:031-781-3100">031-781-3100</a>
                                    </div>
                                </div>
                                <a class="mojip_btn" href="javascript:void(0);">모집안내<span class="mojip_arrow"></span></a>
                            </li>
                            <li>
                                <div class="academy_info">
                                    <strong class="academy_name">일산</strong>
                                    <p class="academy_call">031-8073-9600</p>
                                    <div class="mo_academy_info">
                                    <a class="btn_info" href="javascript:void(0);">모집안내</a>
                                    <a class="btn_tel" href="tel:031-8073-9600">031-8073-9600</a>
                                    </div>
                                </div>
                                <a class="mojip_btn" href="javascript:void(0);">모집안내<span class="mojip_arrow"></span></a>
                            </li> 
                            <li>
                                <div class="academy_info">
                                    <strong class="academy_name">평촌</strong>
                                    <p class="academy_call">031-388-3141</p>
                                    <div class="mo_academy_info">
                                    <a class="btn_info" href="javascript:void(0);">모집안내</a>
                                    <a class="btn_tel" href="tel:031-388-3141">031-388-3141</a>
                                    </div>
                                </div>
                                <a class="mojip_btn" href="javascript:void(0);">모집안내<span class="mojip_arrow"></span></a>
                            </li>
                            <li>
                                <div class="academy_info">
                                    <strong class="academy_name">성북</strong>
                                    <p class="academy_call">02-927-8001</p>
                                    <div class="mo_academy_info">
                                    <a class="btn_info" href="javascript:void(0);">모집안내</a>
                                    <a class="btn_tel" href="tel:02-927-8001">02-927-8001</a>
                                    </div>
                                </div>
                                <a class="mojip_btn" href="javascript:void(0);">모집안내<span class="mojip_arrow"></span></a>
                            </li> 
                        </ul>
                    </div>
                </div>
            </div> 




        </div><!-- // contents -->
    </div>

    <!-- 푸터 영역 --> 
    <footer id="footer">
        <div class="container">
            <p class="copy">Copyright &copy; 2015 megastudyEdu.Co.Ltd. All rights reserved.</p>
        </div>
    </footer>
    <!-- 푸터 영역 --> 
</div>
</body>
</html>