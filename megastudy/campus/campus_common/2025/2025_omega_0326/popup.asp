<style>
	@import url("https://cdn.jsdelivr.net/gh/orioncactus/pretendard@v1.3.9/dist/web/static/pretendard.min.css");
	body { margin: 0; padding: 0;}
	.popup-overlay * { font-family:"Pretendard Variable", Pretendard, sans-serif; box-sizing: border-box;}
	.popup-header { padding: 60px 24px 40px; text-align: left;}
	.popup-header h1 { padding:0; margin:0; color: #222; text-align: left; font-size: 34px; font-weight: 800; line-height: 100%; letter-spacing: -1.02px; }
	.popup-header p { padding:0; margin:0; color: #545454; font-family: Pretendard; font-size: 18px; font-weight: 400; line-height: 140%; letter-spacing: -0.54px; margin-top: 18px; }
	.popup-content .line { height: 10px; background: #F2F2F2; }
	.popup-content { background: #fff; width: 100%; padding: 0; position: relative; padding-bottom: 70px; }
	.popup-content .form-list { padding: 25px 24px; display: flex; flex-direction: column; align-items: flex-start; gap: 18px; }
	.form-list .form-group { position: relative; display: flex; height: auto; align-items: center; gap: 0; width:100%;}
	.form-list .form-group.only { gap: 10px; flex-direction: column; align-items: inherit; }
	.form-list .form-group label { display: flex; min-width: 102px; height: 100%; align-items: center; color: #222; font-size: 16px; font-weight: 400; line-height: 130%; letter-spacing: -1px; }
	.form-list .form-group label.only { width: 100%; min-width: 100%; }
	.form-list .form-group label .dot:before { content: ''; position: absolute; top: 50%; left: 0; width: 3px; height: 3px; border-radius: 50%; background: #D9D9D9; }
	.form-list .form-group label .dot { position: relative; padding-left: 7px; }
	.form-list .form-group input[type=text] { width: 100%; height: 40px; padding: 0 10px; border: 1px solid #dcdcdc; font-size: 14px; }
	.form-list .form-group textarea { width: 100%; height: 125px; padding: 24px; border: 1px solid #d8d8d8; overflow-y: scroll; font-size: 14px; }
	.form-list .form-group .text-wrap { box-sizing: border-box; width: 100%; height: 125px; padding: 24px; border: 1px solid #d8d8d8; overflow-y: scroll; color: #7E7E7E; font-size: 16px; line-height: 130%; letter-spacing: -0.32px; }
	.form-list .form-group .text-wrap strong { font-weight: bold; }
	.form-list .form-group .select-wrap { position: relative; width: 131px;}
	.form-list .form-group .select-wrap select { width: 131px; font-size: 14px; height: 40px; padding: 0 10px; -webkit-appearance:none; appearance:none; appearance:none; border: 1px solid #dcdcdc; background: #fff; }
	.form-list .form-group .select-wrap:after { position: absolute; top: 50%; right: 13px; width: 12px; height: 12px; margin-top: -10px; border-left: 1px solid #000; border-bottom: 1px solid #000; transform: rotate(-45deg); display: block; content: ''; }
	.form-list .form-group .select-wrap select:disabled { color: #bbb; opacity: 0.5; }
	.form-list .form-group .email { display: flex; gap: 6px; width: 100%; align-items: center; }
	.form-list .form-group .select-wrap span.at { vertical-align: middle; line-height: 1; padding-right: 5px; font-size: 14px; color: #333; }
	.form-list .form-group input::placeholder { color: #888; }
	.form-list .form-group input:disabled { background: #eeeeee; }
	.popup-overlay .submit-btn { position: fixed; left: 0; right: 0; bottom: 0; width: 100%; background: #007bff; color: white; border: none; padding: 20px; cursor: pointer; font-size: 20px; text-align: center; }
</style>
<div class="popup-overlay">
	<div class="popup-header">
		<h1><img src="" alt="OMEGA"> ���ǰ�� �ǰ� ������</h1>
		<p>OMEGA �ø�� ���� ���� ���� �� ���� ���� �ǰ��� �����ּ���.<br>�����ֽ� �ǰ��� ������ ����Ƽ�� ���̴� �� ū ������ �˴ϴ�.</p>
	</div>
	<div class="popup-content">
		<div class="line">&nbsp;</div>
		<div class="form-list">
			<div class="form-group">
				<label for="title"><span class="dot">����</span></label>
				<input type="text" id="title" placeholder="���ް� ���ǰ�� ���� ����">
			</div>
			<div class="form-group">
				<label for="name"><span class="dot">�̸�</span></label>
				<input type="text" id="name" placeholder="�̸� �Է�">
			</div>
			<div class="form-group">
				<label for="phone"><span class="dot">�޴���ȭ��ȣ</span></label>
				<input type="text" id="phone" placeholder="'-' ���� ���ڸ� �Է�">
			</div>
			<div class="form-group">
				<label for="email"><span class="dot">�̸��� �ּ�</span></label>
				<div class="form email">
					<input type="text" id="email" placeholder="���̵� �Է�">
					<span class="at">@</span>
					<input type="text" id="email2" placeholder="���� �Է�">
					<div class="select-wrap">
						<select>
							<option>naver.com</option>
							<option>daum.net</option>
							<option>gmail.com</option>
							<option>���� �Է�</option>
						</select>
					</div>
				</div>
			</div>
			<div class="form-group only">
				<label for="content"><span class="dot">����</span></label>
				<textarea id="content" placeholder="���� �Է�"></textarea>
			</div>
			<div class="form-group only">
				<label><span class="dot">�������� ���� �� �̿�</span></label>
				<div class="text-wrap">
					<strong>�������� ��ȣ�� ��15�� ��1�� 4ȣ�� ���� ������ü�� ü���� ������� ������ü�� ���Ǿ���<br>
					���������� ���� �� �̿��մϴ�.</strong	rong>
					<br><br>
					�����׸�: �̸�, �޴���ȭ��ȣ, �̸����ּ�<br>
					ó������: �п� ��� ���� ��ȸ, ���� �� ���ǻ��� �亯<br>
					���� �� �̿�Ⱓ: 3�� (���ڻ�ŷ������ �Һ��ں�ȣ�� ���� ����)<br>
				</div>
			</div>
		</div>
	</div>
	<div>
		<a class="submit-btn"><span>�ǰ� ������</span></a>
	</div>
</div>

<script type="text/javascript" src="/common/js/jquery-1.8.3.min.js"></script>
<script>
$(document).ready(function () {
    $(".select-wrap select").change(function () {
        let emailInput = $("#email2");
        
        if ($(this).val() === "���� �Է�") {
            emailInput.show().val("");
        } else {
            emailInput.hide().val($(this).val());
        }
    });
});
</script>