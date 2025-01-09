var join = {
	/**
	 * 모바일 인증번호 전송하기
	 * @param  usrNm: 회원이름 
	 * @param  hp: 모바일번호
	 * @param  encCodeId: 암호화인증번호 멤버ID
	 * @param  sendType: 요청유형, join 가입, search 찾기
	 */
	sendMobileCode : function(hp, encCodeId, sendType) {
		$.ajax({
			type : "POST",
			url : "/join/ajaxsms.action",
			dataType : "json",
			data : {
				'hp' : hp,
				'sendType' : sendType
			},
			success : function(responseJSON) {
				if(responseJSON.result.code == '0000'){
					alert(responseJSON.result.msg);
					$("#"+encCodeId).val(responseJSON.result.encCode);
				}else{
					alert(responseJSON.result.msg);
				}
				
			},
			error : function() {
				alert('인증번호를 전송하는 중에 오류가 발생했습니다.');
			}
		});
	},
	
	/**
	 * 모바일 인증번호 전송하기
	 * @param  usrNm: 회원이름 
	 * @param  hp: 모바일번호
	 * @param  encCodeId: 암호화인증번호 멤버ID
	 * @param  sendType: 요청유형, join 가입, search 찾기
	 */
	sendEmailCode : function(usrNm, email, encCodeId, sendType) {
		$.ajax({
			type : "POST",
			url : "/search/ajaxemail.action",
			dataType : "json",
			data : {
				'usrNm' : usrNm,
				'email' : email,
				'sendType' : sendType
			},
			success : function(responseJSON) {
				if(responseJSON.result.code == '0000'){
					alert(responseJSON.result.msg);
					$("#"+encCodeId).val(responseJSON.result.encCode);
				}else{
					alert(responseJSON.result.msg);
				}
				
			},
			error : function() {
				alert('인증번호를 전송하는 중에 오류가 발생했습니다.');
			}
		});
	},
	
	/**
	 * 회원가입시 아이디 중복 체크 
	 * @param  usrId: 검사할 아이디 
	 * @param  checkId: 검사수행 여부를 체크 하는 멤버
	 */
	sendIdCheck : function(usrId, checkId) {
		$.ajax({
			type : "POST",
			url : "/join/ajaxidcheck.action",
			dataType : "json",
			data : {
				'usrId' : usrId
			},
			success : function(responseJSON) {
				if(responseJSON.result.code == '0000'){
					alert(responseJSON.result.msg);
					$("#"+checkId).val("Y");
				}else{
					$("#"+checkId).val("N");
					alert(responseJSON.result.msg);
				}
				
			},
			error : function() {
				alert('인증번호를 전송하는 중에 오류가 발생했습니다.');
			}
		});
	},
	
	
	dummyFunction : function() {
		console.log("dummyFunction");
	}
};
