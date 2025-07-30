<!-- #include virtual="/Public/Method.asp" -->
<!-- #include virtual="/Public/class.Mssql.asp" -->
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="euc-kr">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">

    <!-- #Include Virtual = "/library/include/reload/favicon.asp" -->

    <meta name="title" content="������ ���� ���� ����" />
    <meta name="keywords" content="������ ���� ���� ����" />
	<meta name="description" content="������ ���� ���� ����" />
	<meta property="og:type" content="website">
    <meta property="og:title" content="������ ���� ���� ����">
	<meta property="og:description" content="������ ���� ���� ����" />

    <title>������ ���� ���� ����</title>
    
    <script type="text/javascript" src="/common/js/jquery-1.12.4.min.js"></script>
    <script type="text/javascript" src="/common/js/swiper-bundle.min.js"></script>
    
    <link rel="stylesheet" type="text/css" href="/library/css/swiper.min.css">
    <link rel="stylesheet" type="text/css" href="/common/css/layout.css"><!-- ���̾ƿ� ���� CSS -->
    <link rel="stylesheet" type="text/css" href="web.css"><!-- ������ ���� ���� ���� -->
</head>
<body>
<div id="wrapper"> 
    <!-- ��� ���� -->
    <!-- #include virtual="/common/inc/inc_header.asp"-->

    <!-- ������ ���� ���� ���� -->
    <div class="susi-recruit-wrap">
        <!-- susi-re-title -->
        <div class="susi-recruit-title">
            <div class="cont-inner">
                <h2 class="title">2026 ������ ���� ���� ����</h2>
                
                <!-- tab-susi-hide -->
                <div class="tab-susi-hide-wrap">
                    <div class="swiper tab-susi-hide">
                        <div class="swiper-wrapper">
                            <div class="swiper-slide"><p>�л��� ����</p></div>
                            <div class="swiper-slide"><p>��� ����</p></div>
                            <div class="swiper-slide"><p>�Ǵ�</p></div>
                            <div class="swiper-slide"><p>ġ��</p></div>
                            <div class="swiper-slide"><p>���</p></div>
                        </div>
                        <!-- ��ư -->
                        <div class="btn-prev swiper-button-prev"></div>
                        <div class="btn-next swiper-button-next"></div>
                    </div> 
                </div>
                <!-- //tab-susi-hide -->
                <!-- tab-susi -->
                <div class="tab-susi-outer">
                    <div class="swiper tab-susi">
                        <div class="swiper-wrapper tab-susi-type">
                            <div class="swiper-slide"><p class="tablinks" onclick="openTab(event, 'tab1')">�л��� ����</p></div>
                            <div class="swiper-slide"><p class="tablinks" onclick="openTab(event, 'tab2')">��� ����</p></div>
                            <div class="swiper-slide"><p class="tablinks" onclick="openTab(event, 'tab3')">�Ǵ�</p></div>
                            <div class="swiper-slide"><p class="tablinks" onclick="openTab(event, 'tab4')">ġ��</p></div>
                            <div class="swiper-slide"><p class="tablinks" onclick="openTab(event, 'tab5')">���</p></div>
                        </div>
                    </div>
                </div>
                <!-- //tab-susi -->
            </div>
        </div>
        <!-- //susi-re-title -->
    
        <!-- PDF iframe -->
        <div class="cont-inner">
            <div class="section-pdf">
                <iframe id="myFrame" class ="pdfViewer" src="" style="border:0; width: 100%; height:100%;"></iframe>
            </div>
        </div>
        <!-- //PDF iframe -->
        <p class="txt-noti">�� �� ������ ���п� ���� ���� ������ ���� �� ������<br>���к� ���� ���ø��� �䰭�� �ݵ�� Ȯ���Ͻñ� �ٶ��ϴ�</p>
    </div>
    <!-- //������ ���� ���� ���� -->
    
    <!-- Ǫ�� ���� -->
    <!-- #include virtual="/common/inc/inc_footer.asp"-->

	<!-- ���޴�(top) -->
	<!--#include virtual="/common/inc/right_bottom_btn.asp"-->
	<!-- //���޴�(home/top) -->

	<script>
		// ���̶� pdf���� ��ġ
		document.addEventListener("DOMContentLoaded", () => {
			document.querySelector('.tablinks')?.click();
		});

		const tabSrcMap = {
			tab1: 'https://campus.megastudy.net/common/pdf/web/viewer.html?file=https://campus.megastudy.net/Data/pdf/2025710154449.pdf',
			tab2: 'https://campus.megastudy.net/common/pdf/web/viewer.html?file=https://campus.megastudy.net/Data/pdf/202571015455.pdf',
			tab3: 'https://campus.megastudy.net/common/pdf/web/viewer.html?file=https://campus.megastudy.net/Data/pdf/202571015459.pdf',
			tab4: 'https://campus.megastudy.net/common/pdf/web/viewer.html?file=https://campus.megastudy.net/Data/pdf/2025710154512.pdf',
			tab5: 'https://campus.megastudy.net/common/pdf/web/viewer.html?file=https://campus.megastudy.net/Data/pdf/2025710154517.pdf',
		};

		// ���� �� ���¸� ������Ʈ�ϴ� �Լ�
		function updateTab(index) {
			openTab(`tab${index + 1}`);
				document.querySelectorAll('.tab-susi-type .swiper-slide').forEach((el, i) => {
				el.classList.toggle('swiper-slide-active', i === index);
			});
		}

		// �� ���� �Լ�
		function openTab(tabName) {
			const iframe = document.getElementById('myFrame');
			const src = tabSrcMap[tabName];
			if (src) iframe.src = src;
		}
		// ���� �� ���¸� ������Ʈ�ϴ� �Լ�
		function updateTab(index) {
			openTab(`tab${index + 1}`);

			document.querySelectorAll('.tab-susi-type .swiper-slide').forEach((el, i) => {
				const isActive = i === index;
				el.classList.toggle('swiper-slide-active', isActive);
				el.classList.toggle('custom-active', isActive);  // custom-active�� ���� ���
			});
		}

		// Ŭ�� �̺�Ʈ ó�� (�� ����)
		document.querySelectorAll('.tab-susi-type .swiper-slide').forEach((el, index) => {
			el.addEventListener('click', () => {
				bannerSwiper.slideTo(index);
				updateTab(index);
			});
		});
		
		const bannerSwiper = new Swiper('.tab-susi-hide', {
			slidesPerView: 1,
			navigation: {
				nextEl: '.btn-next',
				prevEl: '.btn-prev',
			},
			on: {
				slideChange() {
				const index = bannerSwiper.realIndex;
				susiTypeSwiper.slideTo(index);
				updateTab(index);
				},
			},
		});

		const susiTypeSwiper = new Swiper('.tab-susi', {
			slidesPerView: 3,
			allowTouchMove: true,
			spaceBetween: 3,
			breakpoints: {
				768: {
				slidesPerView: 5,
				allowTouchMove: false,
				},
			},
		});
	</script>
</body>
</html>