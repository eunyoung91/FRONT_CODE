<meta name="viewport" content="width=device-width,initial-scale=1.0,minimum-scale=1.0,maximum-scale=1.0" />
<style>
@import url("https://cdn.jsdelivr.net/gh/orioncactus/pretendard@v1.3.9/dist/web/static/pretendard.min.css");
body { margin: 0; padding: 0;}
.popup-overlay * { font-family:"Pretendard Variable", Pretendard, sans-serif; box-sizing: border-box;}
.popup-header { background:red; padding: 50px 24px 30px; text-align: left;}
.popup-header h1 { margin:0;padding:0; display: flex; justify-content: initial; gap:9px; align-items: center;}
.popup-header h1 span { padding:0; margin:0; color: #222; text-align: left; font-size: 34px; font-weight: 800; line-height: 100%; letter-spacing: -1.02px; }
.popup-header p { padding:0; margin:0; color: #545454; font-family: Pretendard; font-size: 18px; font-weight: 400; line-height: 140%; letter-spacing: -0.54px; margin-top: 18px; }
.popup-content .line { height: 10px; background: #F2F2F2; }
.popup-content { background: #fff; width: 100%; padding: 0; position: relative; padding-bottom: 70px; }
.popup-content .form-list { padding: 25px 24px; display: flex; flex-direction: column; align-items: flex-start; gap: 18px; }
.form-list .form-group { position: relative; display: flex; height: auto; align-items: center; gap: 0; width:100%;}
.form-list .form-group.email{ align-items: baseline;}
.form-list .form-group.only { gap: 10px; flex-direction: column; align-items: inherit; }
.form-list .form-group label { display: flex; min-width: 102px; height: 100%; align-items: center; color: #222; font-size: 16px; font-weight: 400; line-height: 130%; letter-spacing: -1px; }
.form-list .form-group label.only { width: 100%; min-width: 100%; }
.form-list .form-group label .dot:before { content: ''; position: absolute; top: 50%; transform: translateY(-50%); left: 0; width: 3px; height: 3px; border-radius: 50%; background: #D9D9D9; }
.form-list .form-group label .dot { position: relative; padding-left: 7px; }
.form-list .form-group input[type=text] { width: 100%; height: 40px; padding: 0 5px 0 10px; border: 1px solid #dcdcdc; font-size: 16px; }
.form-list .form-group textarea { width: 100%; height: 318px; padding: 24px; border: 1px solid #d8d8d8; font-size: 16px; resize: none;}
.form-list .form-group .text-wrap { box-sizing: border-box; width: 100%; height: 119px; padding: 24px; border: 1px solid #d8d8d8; overflow-y: scroll; color: #7E7E7E; font-size: 16px; line-height: 130%; letter-spacing: -0.32px; }
.form-list .form-group .text-wrap strong { font-weight: bold;}
.form-list .form-group .text-wrap .under{
	text-decoration-line: underline;
	text-decoration-style: solid;
	text-decoration-skip-ink: auto;
	text-decoration-thickness: auto;
	text-underline-offset: auto;
	text-underline-position: from-font;
}
.form-list .form-group .select-wrap { position: relative;}
.form-list .form-group .select-wrap select { width:100%; font-size: 16px; height: 40px; padding: 0 5px 0 10px; -webkit-appearance:none; appearance:none; appearance:none; border: 1px solid #dcdcdc; background: #fff; }
.form-list .form-group .select-wrap:after { position: absolute; top: 50%; right: 13px; width: 12px; height: 12px; margin-top: -10px; border-left: 1px solid #000; border-bottom: 1px solid #000; transform: rotate(-45deg); display: block; content: ''; }
.form-list .form-group .select-wrap select:disabled { color: #bbb; opacity: 0.5; }
.form-list .form-group.email .align { display: flex; flex-direction: row; gap: 6px; width: 100%; align-items: center; }
.form-list .form-group.email .align > div:nth-child(1){ flex: 2; display: flex; align-items: center; gap: 6px;}
.form-list .form-group.email .align > div:nth-child(2){ flex: 1;}
.form-list .form-group span.at { color: #222; font-size: 15px; font-style: normal; font-weight: 400; line-height: 130%; letter-spacing: -1px;}
.form-list .form-group input::placeholder { color: #888; }
.form-list .form-group input:disabled { background: #eeeeee; }
.popup-overlay .submit-btn { position: fixed; left: 0; right: 0; bottom: 0; width: 100%; background:#DDD; border: none; cursor: pointer; text-align: center; padding: 18px 36px;}
.popup-overlay .submit-btn span{  color: #9C9C9C; text-align: center; font-size: 20px; font-style: normal; font-weight: 700; line-height: 100%; letter-spacing: -1px;}
.popup-overlay .submit-btn.active { background: #0081FF;}
.popup-overlay .submit-btn.active span{ color:#fff;}

@media screen and (max-width: 494px) { 
	.popup-header h1{ flex-direction: column; align-items: start;}
	.form-list .form-group.email .align{ flex-wrap: nowrap; display: flex; flex-direction: column;}
	.form-list .form-group.email .align > div:nth-child(2){ width:100%;}
}
</style>
<div class="popup-overlay">
	<div class="popup-header">
		<h1>
			<img src="<%=Application("img_path")%>/library/campus_common/2025/2025_omega/popup_logo.png" alt="OMEGA">
			<span>모의고사 의견 보내기</span>	
		</h1>

		<p>OMEGA 시리즈에 대한 개선 사항 및 문항 오류 의견을 보내주세요.<br>보내주신 의견은 콘텐츠 퀄리티를 높이는 데 큰 도움이 됩니다.</p>
	</div>
	<div class="popup-content">
		<div class="line">&nbsp;</div>
		<div class="form-list">
			<div class="form-group">
				<label for="title"><span class="dot">제목</span></label>
				<input type="text" id="title" placeholder="제목 입력">
			</div>
			<div class="form-group">
				<label for="name"><span class="dot">이름</span></label>
				<input type="text" id="name" placeholder="이름 입력">
			</div>
			<div class="form-group">
				<label for="phone"><span class="dot">휴대전화번호</span></label>
				<input type="text" id="phone" placeholder="'-' 없이 숫자만 입력">
			</div>
			<div class="form-group email">
				<label for="email"><span class="dot">이메일주소</span></label>
				<div class="align">
					<div>
						<input type="text" id="email" placeholder="아이디 입력">
						<span class="at">@</span>
						<input type="text" id="email2" placeholder="직접 입력">
					</div>
					<div>
						<div class="select-wrap">
							<select>
								<option>직접 입력</option>
								<option>naver.com</option>
								<option>gmail.com</option>
								<option>daum.net</option>
								<option>hanmail.net</option>
								<option>kakao.com</option>
								<option>nate.com</option>
								<option>icloud.com</option>
								<option>hotmail.ocm</option>
								<option>yahoo.com</option>
								<option>korea.com</option>
							</select>
						</div>
					</div>
				</div>
			</div>
			<div class="form-group only">
				<label for="content"><span class="dot">내용</span></label>
				<textarea id="content" placeholder="내용 입력"></textarea>
			</div>
			<div class="form-group only">
				<label><span class="dot">개인정보 수집 및 이용</span></label>
				<div class="text-wrap">
					<strong>개인정보 보호법 제15조 제1항 4호에 따라 정보주체와 체결한 계약으로 정보주체의 동의없이<br>
					개인정보를 수집 및 이용합니다.</strong	rong>
					<br><br>
					수집항목: 이름, 휴대전화번호, 이메일주소<br>
					처리목적: 학원 재원 정보 조회, 질문 및 건의사항 답변<br>
					보유 및 이용기간: <span class="under">3년 (전자상거래등에서의 소비자보호에 관한 법률)</span><br>
				</div>
			</div>
		</div>
	</div>
	<div class="popup-btn">
		<a class="submit-btn"><span>의견 보내기</span></a><!-- 활성화 .active 추가 -->
	</div>
</div>

<script type="text/javascript" src="/common/js/jquery-1.8.3.min.js"></script>
<script>
$(document).ready(function () {
    $(".select-wrap select").on("change", function () {
        var selectedDomain = $(this).val();
        var emailInput = $("#email2");

        if (selectedDomain === "직접 입력") {
            emailInput.val("").prop("readonly", false);
        } else {
            emailInput.val(selectedDomain).prop("readonly", true);
        }
    });
});
</script>