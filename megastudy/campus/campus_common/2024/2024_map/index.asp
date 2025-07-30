<!-- #include virtual="/Public/Method.asp" -->
<!-- #include virtual="/Public/class.Mssql.asp" -->
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="ko" xml:lang="ko">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=euc-kr" />
<meta http-equiv="Content-Script-Type" content="text/javascript" />
<meta http-equiv="Content-Style-Type" content="text/css" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="" />
<!-- #Include Virtual = "/library/include/reload/favicon.asp" -->

<title><%=gMGC_Campus_Title%></title>
<!-- #Include Virtual = "/library/include/reload/css_common.asp" -->
<!-- #Include Virtual = "/library/include/reload/css_table.asp" -->
<link rel="stylesheet" type="text/css" href="/library/css/report_2015.css" />
<link rel="stylesheet" type="text/css" href="/library/css/style.css" />
<link rel="stylesheet" type="text/css" href="/library/css/amazingslider.css">
<link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css"/>
<link rel="stylesheet" type="text/css" href="https://unpkg.com/aos@2.3.1/dist/aos.css">

<!-- #include virtual="/public/jquery.asp" -->
<!-- #Include Virtual = "/library/include/reload/js_common.asp" -->
<link rel="stylesheet" type="text/css" href="/library/css/intro_new.css">
<link rel="stylesheet" type="text/css" href="web.css">
<!-- intro전용 css -->
<script type="text/javascript" src="/common/js/jquery-1.8.3.min.js"></script>
<script type="text/javascript" src="/public/js/waypoints.min.js"></script>
</head>

<body>
<div id="wrapper">
    <!--  최상단메뉴//-->
    <!--#include virtual="/library/include/common/top.asp" -->
    <!--  //최상단메뉴-->

    <div id="header" class="<%=GetCampusColorType()%>">

        <!--상단 학원로고 및 선택 탭//  -->
        <!--#include virtual="/library/include/common/top_campus_tab.asp" -->
        <!-- //상단 학원로고 및 선택 탭 -->

        <!--  상단 대메뉴//-->
        <!--#include virtual="/library/include/common/top_campus_detail_menu.asp" -->
        <!-- //상단 대메뉴 -->
    </div>
    <!-- // header -->
    <div id="container" class="promotion">

        <div id="topWrap" class="top_wrap">
            <div class="top_inner" style="background:url('<%=Application("img_path")%>/library/campus_common/2024/2024_map/bg_topwrap.jpg') center top no-repeat;background-size:cover;">
                <div class="light" style="background:url('<%=Application("img_path")%>/library/campus_common/2024/2024_map/light.png') center top no-repeat;background-size:cover;"></div>
                <div class="act_box">
                    <div class="act act01">
                        <img src="<%=Application("img_path")%>/library/campus_common/2024/2024_map/act01.png" alt="" />
                    </div>
                    <div class="act act02">
                        <img src="<%=Application("img_path")%>/library/campus_common/2024/2024_map/act02.png" alt="" />
                    </div>
                    <div class="act act03">
                        <div class="act03_1">
                            <img src="<%=Application("img_path")%>/library/campus_common/2024/2024_map/act03_1.png" alt="M" />
                        </div>
                        <div class="act03_2">
                            <img src="<%=Application("img_path")%>/library/campus_common/2024/2024_map/act03_2.png" alt="A" />
                        </div>
                        <div class="act03_3">
                            <img src="<%=Application("img_path")%>/library/campus_common/2024/2024_map/act03_3.png" alt="P" />
                        </div>
                    </div>
                    <div class="act act04">
                        <img src="<%=Application("img_path")%>/library/campus_common/2024/2024_map/act04.png" alt="" />
                    </div>
                    <div class="act act05">
                        <img src="<%=Application("img_path")%>/library/campus_common/2024/2024_map/act05.png" alt="" />
                    </div>
                    <div class="act act05_1">
                        <img src="<%=Application("img_path")%>/library/campus_common/2024/2024_map/act05_1.png" alt="line" />
                    </div>
                    <div class="act act06 act06_1">
                        <img src="<%=Application("img_path")%>/library/campus_common/2024/2024_map/act06_1.png" alt="" />
                    </div>
                    <div class="act act06 act06_2">
                        <img src="<%=Application("img_path")%>/library/campus_common/2024/2024_map/act06_2.png" alt="" />
                    </div>
                    <div class="act act06 act06_3">
                        <img src="<%=Application("img_path")%>/library/campus_common/2024/2024_map/act06_3.png" alt="" />
                    </div>
                    <div class="act act07">
                        <div class="act07_1">
                            <img src="<%=Application("img_path")%>/library/campus_common/2024/2024_map/act07_1.png" alt="원" />
                        </div>
                        <div class="act07_2">
                            <img src="<%=Application("img_path")%>/library/campus_common/2024/2024_map/act07_2.png" alt="원" />
                        </div>
                        <div class="act07_3">
                            <img src="<%=Application("img_path")%>/library/campus_common/2024/2024_map/act07_3.png" alt="원" />
                        </div>
                    </div>
                </div>
            </div>
        </div>

		<div class="section section_banner" style="background:url('<%=Application("img_path")%>/library/campus_common/2024/2024_map/bg_banner.jpg') 50% top no-repeat;background-size:cover;background-color: #3d359b;">
			<div class="inner">
                <div data-aos="fade-up" data-aos-easing="ease-in-out" data-aos-anchor=".section_banner" data-aos-delay="100">
                    <img src="<%=Application("img_path")%>/library/campus_common/2024/2024_map/banner_title.png" alt="" />
                </div>
			</div>
		</div>

		<div class="section section_diagram">
			<div class="inner">
                <div data-aos="fade-up" data-aos-easing="ease-in-out" data-aos-anchor=".section_diagram" data-aos-delay="100">
				    <img src="<%=Application("img_path")%>/library/campus_common/2024/2024_map/diagram_title.png" alt="" />
                </div>
                <div class="diagram-box">
                    <div class="diagram" data-aos="zoom-in" data-aos-easing="ease-in-cubic" data-aos-anchor=".section_diagram" data-aos-delay="550">				   
                        <img src="<%=Application("img_path")%>/library/campus_common/2024/2024_map/diagram.png" alt="" />
                    </div>
                    <div class="dotline" data-aos="zoom-in" data-aos-easing="ease-in-cubic" data-aos-anchor=".section_diagram" data-aos-delay="400">			   
                        <img src="<%=Application("img_path")%>/library/campus_common/2024/2024_map/dotline.png" alt="" />
                    </div>
                    <div class="dot dot1" data-aos="fade-up" data-aos-anchor=".section_diagram" data-aos-delay="500"><img src="<%=Application("img_path")%>/library/campus_common/2024/2024_map/diagram_1.png" alt="" /></div>
                    <div class="dot dot2" data-aos="fade-up-right" data-aos-anchor=".section_diagram" data-aos-delay="600"><img src="<%=Application("img_path")%>/library/campus_common/2024/2024_map/diagram_2.png" alt="" /></div>
                    <div class="dot dot3" data-aos="fade-right" data-aos-anchor=".section_diagram" data-aos-delay="700"><img src="<%=Application("img_path")%>/library/campus_common/2024/2024_map/diagram_3.png" alt="" /></div>
                    <div class="dot dot4" data-aos="fade-down-right" data-aos-anchor=".section_diagram" data-aos-delay="800"><img src="<%=Application("img_path")%>/library/campus_common/2024/2024_map/diagram_4.png" alt="" /></div>
                    <div class="dot dot5" data-aos="fade-down-right" data-aos-anchor=".section_diagram" data-aos-delay="900"><img src="<%=Application("img_path")%>/library/campus_common/2024/2024_map/diagram_5.png" alt="" /></div>
                    <div class="dot dot6" data-aos="fade-down-left" data-aos-anchor=".section_diagram" data-aos-delay="1000"><img src="<%=Application("img_path")%>/library/campus_common/2024/2024_map/diagram_6.png" alt="" /></div>
                    <div class="dot dot7" data-aos="fade-down-left" data-aos-anchor=".section_diagram" data-aos-delay="1100"><img src="<%=Application("img_path")%>/library/campus_common/2024/2024_map/diagram_7.png" alt="" /></div>
                    <div class="dot dot8" data-aos="fade-left" data-aos-anchor=".section_diagram" data-aos-delay="1200"><img src="<%=Application("img_path")%>/library/campus_common/2024/2024_map/diagram_8.png" alt="" /></div>
                    <div class="dot dot9" data-aos="fade-up-left" data-aos-anchor=".section_diagram" data-aos-delay="1300"><img src="<%=Application("img_path")%>/library/campus_common/2024/2024_map/diagram_9.png" alt="" /></div>
                </div>
			</div>
		</div>

		<div class="section section_banner_2" style="background:url('<%=Application("img_path")%>/library/campus_common/2024/2024_map/bg_banner_2.jpg') 50% top no-repeat;background-size:cover;background-color: #10193c;">
			<div class="inner">
                <div data-aos="fade-up" data-aos-easing="ease-in-out" data-aos-anchor=".section_banner_2" data-aos-delay="100">
                    <img src="<%=Application("img_path")%>/library/campus_common/2024/2024_map/banner2_title.png" alt="" />
                </div>
			</div>
		</div>

        <div class="section section_calendar">
            <div class="inner">
                <div data-aos="fade-up" data-aos-easing="ease-in-out" data-aos-anchor=".section_calendar" data-aos-delay="100">
                    <img src="<%=Application("img_path")%>/library/campus_common/2024/2024_map/calendar_title.png" alt="" />
                </div>
                <div class="calendar_list mt80">
                    <div class="calendar_row">
                        <!-- 3월 -->
                        <div class="calendar">
                            <div class="month">3월</div>
                            <div class="subject">더 프리미엄 모의고사</div>
                            <div class="date">22일(금)</div>

                            <div class="cal_box">
                                <div class="row head">
                                    <div class="sun"><span>S</span></div>
                                    <div><span>M</span></div>
                                    <div><span>T</span></div>
                                    <div><span>W</span></div>
                                    <div><span>T</span></div>
                                    <div><span>F</span></div>
                                    <div><span>S</span></div>
                                </div>
                                <div class="row body">
                                    <div><span></span></div>
                                    <div><span></span></div>
                                    <div><span></span></div>
                                    <div><span></span></div>
                                    <div><span></span></div>
                                    <div><span>1</span></div>
                                    <div><span>2</span></div>
                                </div>
                                <div class="row body">
                                    <div><span>3</span></div>
                                    <div><span>4</span></div>
                                    <div><span>5</span></div>
                                    <div><span>6</span></div>
                                    <div><span>7</span></div>
                                    <div><span>8</span></div>
                                    <div><span>9</span></div>
                                </div>
                                <div class="row body">
                                    <div><span>10</span></div>
                                    <div><span>11</span></div>
                                    <div><span>12</span></div>
                                    <div><span>13</span></div>
                                    <div><span>14</span></div>
                                    <div><span>15</span></div>
                                    <div><span>16</span></div>
                                </div>
                                <div class="row body">
                                    <div><span>17</span></div>
                                    <div><span>18</span></div>
                                    <div><span>19</span></div>
                                    <div><span>20</span></div>
                                    <div><span>21</span></div>
                                    <div>
                                        <span>22</span>
                                        <div class="circle motion circle">22</div>
                                    </div>
                                    <div><span>23</span></div>
                                </div>
                                <div class="row body">
                                    <div><span>24</span></div>
                                    <div><span>25</span></div>
                                    <div><span>26</span></div>
                                    <div><span>27</span></div>
                                    <div><span>28</span></div>
                                    <div><span>29</span></div>
                                    <div><span>30</span></div>
                                </div>
                                <div class="row body">
                                    <div><span>31</span></div>
                                </div>
                            </div>
                        </div>
                        <!-- // 3월 -->

                        <!-- 4월 -->
                        <div class="calendar">
                            <div class="month">4월</div>
                            <div class="subject">전국 연합 모의고사</div>
                            <div class="date">23일(화)</div>

                            <div class="cal_box">
                                <div class="row head">
                                    <div class="sun"><span>S</span></div>
                                    <div><span>M</span></div>
                                    <div><span>T</span></div>
                                    <div><span>W</span></div>
                                    <div><span>T</span></div>
                                    <div><span>F</span></div>
                                    <div><span>S</span></div>
                                </div>
                                <div class="row body">
                                    <div><span></span></div>
                                    <div><span>1</span></div>
                                    <div><span>2</span></div>
                                    <div><span>3</span></div>
                                    <div><span>4</span></div>
                                    <div><span>5</span></div>
                                    <div><span>6</span></div>
                                </div>
                                <div class="row body">
                                    <div><span>7</span></div>
                                    <div><span>8</span></div>
                                    <div><span>9</span></div>
                                    <div><span>10</span></div>
                                    <div><span>11</span></div>
                                    <div><span>12</span></div>
                                    <div><span>13</span></div>
                                </div>
                                <div class="row body">
                                    <div><span>14</span></div>
                                    <div><span>15</span></div>
                                    <div><span>16</span></div>
                                    <div><span>17</span></div>
                                    <div><span>18</span></div>
                                    <div><span>19</span></div>
                                    <div><span>20</span></div>
                                </div>
                                <div class="row body">
                                    <div><span>21</span></div>
                                    <div><span>22</span></div>
                                    <div>
                                        <span>23</span>
                                        <div class="circle motion circle">23</div>
                                    </div>
                                    <div><span>24</span></div>
                                    <div><span>25</span></div>
                                    <div><span>26</span></div>
                                    <div><span>27</span></div>
                                </div>
                                <div class="row body">
                                    <div><span>28</span></div>
                                    <div><span>29</span></div>
                                    <div><span>30</span></div>
                                </div>
                            </div>
                        </div>
                        <!-- // 4월 -->

                        <!-- 5월 -->
                        <div class="calendar">
                            <div class="month">5월</div>
                            <div class="subject">더 프리미엄 모의고사</div>
                            <div class="date">21일(화)</div>

                            <div class="cal_box">
                                <div class="row head">
                                    <div class="sun"><span>S</span></div>
                                    <div><span>M</span></div>
                                    <div><span>T</span></div>
                                    <div><span>W</span></div>
                                    <div><span>T</span></div>
                                    <div><span>F</span></div>
                                    <div><span>S</span></div>
                                </div>
                                <div class="row body">
                                    <div><span></span></div>
                                    <div><span></span></div>
                                    <div><span></span></div>
                                    <div><span>1</span></div>
                                    <div><span>2</span></div>
                                    <div><span>3</span></div>
                                    <div><span>4</span></div>
                                </div>
                                <div class="row body">
                                    <div><span>5</span></div>
                                    <div><span>6</span></div>
                                    <div><span>7</span></div>
                                    <div><span>8</span></div>
                                    <div><span>9</span></div>
                                    <div><span>10</span></div>
                                    <div><span>11</span></div>
                                </div>
                                <div class="row body">
                                    <div><span>12</span></div>
                                    <div><span>13</span></div>
                                    <div><span>14</span></div>
                                    <div><span>15</span></div>
                                    <div><span>16</span></div>
                                    <div><span>17</span></div>
                                    <div><span>18</span></div>
                                </div>
                                <div class="row body">
                                    <div><span>19</span></div>
                                    <div><span>20</span></div>
                                    <div>
                                        <span>21</span>
                                        <div class="circle motion circle">21</div>
                                    </div>
                                    <div><span>22</span></div>
                                    <div><span>23</span></div>
                                    <div><span>24</span></div>
                                    <div><span>25</span></div>
                                </div>
                                <div class="row body">
                                    <div><span>26</span></div>
                                    <div><span>27</span></div>
                                    <div><span>28</span></div>
                                    <div><span>29</span></div>
                                    <div><span>30</span></div>
                                    <div><span>31</span></div> 
                                </div>
                            </div>
                        </div>
                        <!-- // 5월 -->
                    </div>
                    <div class="calendar_row">
                        <!-- 6월 -->
                        <div class="calendar">
                            <div class="month">6월</div>
                            <div class="subject">평가원 모의고사</div>
                            <div class="date">4일(화)</div>

                            <div class="cal_box">
                                <div class="row head">
                                    <div class="sun"><span>S</span></div>
                                    <div><span>M</span></div>
                                    <div><span>T</span></div>
                                    <div><span>W</span></div>
                                    <div><span>T</span></div>
                                    <div><span>F</span></div>
                                    <div><span>S</span></div>
                                </div>
                                <div class="row body">
                                    <div><span></span></div>
                                    <div><span></span></div>
                                    <div><span></span></div>
                                    <div><span></span></div>
                                    <div><span></span></div>
                                    <div><span></span></div>
                                    <div><span>1</span></div>
                                </div>
                                <div class="row body">
                                    <div><span>2</span></div>
                                    <div><span>3</span></div>
                                    <div>
                                        <span>4</span>
                                        <div class="circle motion circle">4</div>
                                    </div>
                                    <div><span>5</span></div>
                                    <div><span>6</span></div>
                                    <div><span>7</span></div>
                                    <div><span>8</span></div>
                                </div>
                                <div class="row body">
                                    <div><span>9</span></div>
                                    <div><span>10</span></div>
                                    <div><span>11</span></div>
                                    <div><span>12</span></div>
                                    <div><span>13</span></div>
                                    <div><span>14</span></div>
                                    <div><span>15</span></div>
                                </div>
                                <div class="row body">
                                    <div><span>16</span></div>
                                    <div><span>17</span></div>
                                    <div><span>18</span></div>
                                    <div><span>19</span></div>
                                    <div><span>20</span></div>
                                    <div><span>21</span></div>
                                    <div><span>22</span></div>
                                </div>
                                <div class="row body">
                                    <div><span>23</span></div>
                                    <div><span>24</span></div>
                                    <div><span>25</span></div>
                                    <div><span>26</span></div>
                                    <div><span>27</span></div>
                                    <div><span>28</span></div>
                                    <div><span>29</span></div>
                                </div>
                                <div class="row body">
                                    <div><span>30</span></div>
                                </div>
                            </div>
                        </div>
                        <!-- // 6월 -->

                        <!-- 7월 -->
                        <div class="calendar">
                            <div class="month">7월</div>
                            <div class="subject">더 프리미엄 모의고사</div>
                            <div class="date">5일(금)</div>

                            <div class="cal_box">
                                <div class="row head">
                                    <div class="sun"><span>S</span></div>
                                    <div><span>M</span></div>
                                    <div><span>T</span></div>
                                    <div><span>W</span></div>
                                    <div><span>T</span></div>
                                    <div><span>F</span></div>
                                    <div><span>S</span></div>
                                </div>
                                <div class="row body">
                                    <div><span></span></div>
                                    <div><span>1</span></div>
                                    <div><span>2</span></div>
                                    <div><span>3</span></div>
                                    <div><span>4</span></div>
                                    <div>
                                        <span>5</span>
                                        <div class="circle motion circle">5</div>
                                    </div>
                                    <div><span>6</span></div>
                                </div>
                                <div class="row body">
                                    <div><span>7</span></div>
                                    <div><span>8</span></div>
                                    <div><span>9</span></div>
                                    <div><span>10</span></div>
                                    <div><span>11</span></div>
                                    <div><span>12</span></div>
                                    <div><span>13</span></div>
                                </div>
                                <div class="row body">
                                    <div><span>14</span></div>
                                    <div><span>15</span></div>
                                    <div><span>16</span></div>
                                    <div><span>17</span></div>
                                    <div><span>18</span></div>
                                    <div><span>19</span></div>
                                    <div><span>20</span></div>
                                </div>
                                <div class="row body">
                                    <div><span>21</span></div>
                                    <div><span>22</span></div>
                                    <div><span>23</span></div>
                                    <div><span>24</span></div>
                                    <div><span>25</span></div>
                                    <div><span>26</span></div>
                                    <div><span>27</span></div>
                                </div>
                                <div class="row body">
                                    <div><span>28</span></div>
                                    <div><span>29</span></div>
                                    <div><span>30</span></div>
                                    <div><span>31</span></div>
                                </div>
                            </div>
                        </div>
                        <!-- // 7월 -->

                        <!-- 8월 -->
                        <div class="calendar">
                            <div class="month">8월</div>
                            <div class="subject">E-Q<span>UEL</span> 모의고사</div>
                            <div class="date">22일(목)</div>

                            <div class="cal_box">
                                <div class="row head">
                                    <div class="sun"><span>S</span></div>
                                    <div><span>M</span></div>
                                    <div><span>T</span></div>
                                    <div><span>W</span></div>
                                    <div><span>T</span></div>
                                    <div><span>F</span></div>
                                    <div><span>S</span></div>
                                </div>
                                <div class="row body">
                                    <div><span></span></div>
                                    <div><span></span></div>
                                    <div><span></span></div>
                                    <div><span></span></div>
                                    <div><span>1</span></div>
                                    <div><span>2</span></div>
                                    <div><span>3</span></div>
                                </div>
                                <div class="row body">
                                    <div><span>4</span></div>
                                    <div><span>5</span></div>
                                    <div><span>6</span></div>
                                    <div><span>7</span></div>
                                    <div><span>8</span></div>
                                    <div><span>9</span></div>
                                    <div><span>10</span></div>
                                </div>
                                <div class="row body">
                                    <div><span>11</span></div>
                                    <div><span>12</span></div>
                                    <div><span>13</span></div>
                                    <div><span>14</span></div>
                                    <div><span>15</span></div>
                                    <div><span>16</span></div>
                                    <div><span>17</span></div>
                                </div>
                                <div class="row body">
                                    <div><span>18</span></div>
                                    <div><span>19</span></div>
                                    <div><span>20</span></div>
                                    <div><span>21</span></div>
                                    <div>
                                        <span>22</span>
                                        <div class="circle motion circle">22</div>
                                    </div>
                                    <div><span>23</span></div>
                                    <div><span>24</span></div>
                                </div>
                                <div class="row body">
                                    <div><span>25</span></div>
                                    <div><span>26</span></div>
                                    <div><span>27</span></div>
                                    <div><span>28</span></div>
                                    <div><span>29</span></div>
                                    <div><span>30</span></div>
                                    <div><span>31</span></div> 
                                </div>

                            </div>
                        </div>
                        <!-- // 8월 -->
                    </div>
                    <div class="calendar_row">
                        <!-- 9월 -->
                        <div class="calendar">
                            <div class="month">9월</div>
                            <div class="subject">평가원 모의고사</div>
                            <div class="date">4일(수)</div>

                            <div class="cal_box">
                                <div class="row head">
                                    <div class="sun"><span>S</span></div>
                                    <div><span>M</span></div>
                                    <div><span>T</span></div>
                                    <div><span>W</span></div>
                                    <div><span>T</span></div>
                                    <div><span>F</span></div>
                                    <div><span>S</span></div>
                                </div>
                                <div class="row body">
                                    <div><span>1</span></div>
                                    <div><span>2</span></div>
                                    <div><span>3</span></div>
                                    <div>
                                        <span>4</span>
                                        <div class="circle motion circle">4</div>
                                    </div>
                                    <div><span>5</span></div>
                                    <div><span>6</span></div>
                                    <div><span>7</span></div>
                                </div>
                                <div class="row body">
                                    <div><span>8</span></div>
                                    <div><span>9</span></div>
                                    <div><span>10</span></div>
                                    <div><span>11</span></div>
                                    <div><span>12</span></div>
                                    <div><span>13</span></div>
                                    <div><span>14</span></div>
                                </div>
                                <div class="row body">
                                    <div><span>15</span></div>
                                    <div><span>16</span></div>
                                    <div><span>17</span></div>
                                    <div><span>18</span></div>
                                    <div><span>19</span></div>
                                    <div><span>20</span></div>
                                    <div><span>21</span></div>
                                </div>
                                <div class="row body">
                                    <div><span>22</span></div>
                                    <div><span>23</span></div>
                                    <div><span>24</span></div>
                                    <div><span>25</span></div>
                                    <div><span>26</span></div>
                                    <div><span>27</span></div>
                                    <div><span>28</span></div>
                                </div>
                                <div class="row body">
                                    <div><span>29</span></div>
                                    <div><span>30</span></div>
                                </div>
                            </div>
                        </div>
                        <!-- // 9월 -->

                        <!-- 10월 -->
                        <div class="calendar">
                            <div class="month">10월</div>
                            <div class="subject">전국 연합 모의고사</div>
                            <div class="date">25일(금)</div>

                            <div class="cal_box">
                                <div class="row head">
                                    <div class="sun"><span>S</span></div>
                                    <div><span>M</span></div>
                                    <div><span>T</span></div>
                                    <div><span>W</span></div>
                                    <div><span>T</span></div>
                                    <div><span>F</span></div>
                                    <div><span>S</span></div>
                                </div>
                                <div class="row body">
                                    <div><span></span></div>
                                    <div><span></span></div>
                                    <div><span>1</span></div>
                                    <div><span>2</span></div>
                                    <div><span>3</span></div>
                                    <div><span>4</span></div>
                                    <div><span>5</span></div>
                                </div>
                                <div class="row body">
                                    <div><span>6</span></div>
                                    <div><span>7</span></div>
                                    <div><span>8</span></div>
                                    <div><span>9</span></div>
                                    <div><span>10</span></div>
                                    <div><span>11</span></div>
                                    <div><span>12</span></div>
                                </div>
                                <div class="row body">
                                    <div><span>13</span></div>
                                    <div><span>14</span></div>
                                    <div><span>15</span></div>
                                    <div><span>16</span></div>
                                    <div><span>17</span></div>
                                    <div><span>18</span></div>
                                    <div><span>19</span></div>
                                </div>
                                <div class="row body">
                                    <div><span>20</span></div>
                                    <div><span>21</span></div>
                                    <div><span>22</span></div>
                                    <div><span>23</span></div>
                                    <div><span>24</span></div>
                                    <div>
                                        <span>25</span>
                                        <div class="circle motion circle">25</div>
                                    </div>
                                    <div><span>26</span></div>
                                </div>
                                <div class="row body">
                                    <div><span>27</span></div>
                                    <div><span>28</span></div>
                                    <div><span>29</span></div>
                                    <div><span>30</span></div>
                                    <div><span>31</span></div>
                                </div>
                            </div>
                        </div>
                        <!-- // 10월 -->

                        <!-- 11월 -->
                        <div class="calendar">
                            <div class="month">11월</div>
                            <div class="subject">E-Q<span>UEL</span> 모의고사</div>
                            <div class="date">1일(금)</div>

                            <div class="cal_box">
                                <div class="row head">
                                    <div class="sun"><span>S</span></div>
                                    <div><span>M</span></div>
                                    <div><span>T</span></div>
                                    <div><span>W</span></div>
                                    <div><span>T</span></div>
                                    <div><span>F</span></div>
                                    <div><span>S</span></div>
                                </div>
                                <div class="row body">
                                    <div><span></span></div>
                                    <div><span></span></div>
                                    <div><span></span></div>
                                    <div><span></span></div>
                                    <div><span></span></div>
                                    <div>
                                        <span>1</span>
                                        <div class="circle motion circle">1</div>
                                    </div>
                                    <div><span>2</span></div>
                                </div>
                                <div class="row body">
                                    <div><span>3</span></div>
                                    <div><span>4</span></div>
                                    <div><span>5</span></div>
                                    <div><span>6</span></div>
                                    <div><span>7</span></div>
                                    <div><span>8</span></div>
                                    <div><span>9</span></div>
                                </div>
                                <div class="row body">
                                    <div><span>10</span></div>
                                    <div><span>11</span></div>
                                    <div><span>12</span></div>
                                    <div><span>13</span></div>
                                    <div>
                                        <span>14</span>
                                        <div class="circle dday motion circle">수능</div>
                                    </div>
                                    <div><span>15</span></div>
                                    <div><span>16</span></div>
                                </div>
                                <div class="row body">
                                    <div><span>17</span></div>
                                    <div><span>18</span></div>
                                    <div><span>19</span></div>
                                    <div><span>20</span></div>
                                    <div><span>21</span></div>
                                    <div><span>22</span></div>
                                    <div><span>23</span></div>
                                </div>
                                <div class="row body">
                                    <div><span>24</span></div>
                                    <div><span>25</span></div>
                                    <div><span>26</span></div>
                                    <div><span>27</span></div>
                                    <div><span>28</span></div>
                                    <div><span>29</span></div>
                                    <div><span>30</span></div>
                                </div>

                            </div>
                        </div>
                        <!-- // 11월 --> 
                    </div>
                </div>
            </div>  
        </div>
    </div>
    <!-- // container -->
</div>

<script src="https://unpkg.com/aos@2.3.1/dist/aos.js"></script>
<script src="/public/js/TweenMax.min.js"></script>
<script type="text/javascript">
    $(document).ready(function(){ });

    $(function(){
        titleTweenEvent();
        titleSlideEvent();
        AosMotionEvent();
        $(window).on('load', function () {
            pageLoadEvent();
            $(window).on('scroll', function(){
                contentMotion();
            });
		});
    });

	function contentMotion(){
		var _scrollTop = $(window).scrollTop();
		var _section = $('.section .motion');
		_section.each(function(i){
			if( _scrollTop >= _section.eq(i).offset().top - 1200){
				$(this).addClass('active');
			} else {
				// $(this).removeClass('active');
			}
		});
	}

    function titleTweenEvent(){
		var $topmotion = $('.top_wrap');
		TweenMax.fromTo( $topmotion.find('.top_inner'), .8, { opacity: 0, scale: 1}, { opacity: 1, scale: 1, delay: .1, ease: Power3.linear });
		TweenMax.fromTo( $topmotion.find('.act01'), .5, { opacity: 0, y:50 }, { opacity: 1, y:0, delay: .5, ease: Sine.easeInOut });
		TweenMax.fromTo( $topmotion.find('.act02'), .5, { opacity: 0, y:50 }, { opacity: 1, y:0, delay: .6, ease: Sine.easeInOut });
		TweenMax.fromTo( $topmotion.find('.act03_1'), 1, { opacity: 0 }, { opacity: 1, delay: .8, rotationY: 360, transformOrigin: "50% 50%", ease: Power3.easeInOut });
		TweenMax.fromTo( $topmotion.find('.act03_2'), 1, { opacity: 0 }, { opacity: 1, delay: 1, rotationY: 360, transformOrigin: "50% 50%", ease: Power3.easeInOut });
		TweenMax.fromTo( $topmotion.find('.act03_3'), 1, { opacity: 0 }, { opacity: 1, delay: 1.2, rotationY: 360, transformOrigin: "50% 50%", ease: Power3.easeInOut });
		TweenMax.fromTo( $topmotion.find('.act04'), .5, { opacity: 0, scale: 3 }, { opacity: 1, scale: 1, delay: 1.5, ease: Power3.easeIn });
		TweenMax.fromTo( $topmotion.find('.act05'), .5, { opacity: 0, scale: 2 }, { opacity: 1, scale: 1, delay: 2.0, ease: Power3.easeIn });
		TweenMax.fromTo( $topmotion.find('.act05_1'), .5, { opacity: 0, height:0 }, { opacity: 1, height:50, delay: 2.0, ease: Power3.easeInOut });
		TweenMax.fromTo( $topmotion.find('.act06_1'), .5, { opacity: 0 }, { opacity: 1, delay: 2.3, ease: Power4.easeInOut });
		TweenMax.fromTo( $topmotion.find('.act06_2'), .5, { opacity: 0 }, { opacity: 1, delay: 2.5, ease: Power4.easeInOut });
		TweenMax.fromTo( $topmotion.find('.act06_3'), .5, { opacity: 0 }, { opacity: 1, delay: 2.7, ease: Power4.easeInOut });
		TweenMax.fromTo( $topmotion.find('.act07_1'), .5, { opacity: 0, scale:0 }, { opacity: 1, scale:1, delay: 2.9, ease: Power3.easeInOut });
		TweenMax.fromTo( $topmotion.find('.act07_2'), .5, { opacity: 0, scale:0 }, { opacity: 1, scale:1, delay: 3.1, ease: Power3.easeInOut });
		TweenMax.fromTo( $topmotion.find('.act07_3'), .5, { opacity: 0, scale:0 }, { opacity: 1, scale:1, delay: 3.3, ease: Power3.easeInOut });       
		TweenMax.to( $topmotion.find('.light'), 1, {opacity: 0, repeat: -1, yoyo: true, ease: Power3.easeIn});
    }

    function titleSlideEvent(){
        $('.slide_area').bxSlider({
            mode: 'fade',
            auto:true,
            speed:1500,
            pager:false,
            controls:false
        }); 
    }

    function AosMotionEvent(){
        AOS.init({
            duration: 500,
            once: true,
            animatedClassName: 'aos-animate',
            offset: 300,
        });
    }

    function pageLoadEvent(){
        var temp_s = $("#topWrap").offset().top;
        $('html, body').animate({ scrollTop: temp_s}, 500);
    }
</script>

<!-- wrapper End -->
<!--#include virtual="/library/include/common/bottom.asp" -->
</body>
</html>
