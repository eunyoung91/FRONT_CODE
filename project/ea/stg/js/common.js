var CommonFn = function(options) {

	CommonFn.fn = CommonFn.prototype; // 프로토타입 단축

	/**
	 * 동영상 강좌 함수
	 */
	CommonFn.fn.mobilePlay = function(dataParams) {
		var currentOS;
		var mobile = (/iphone|ipad|ipod|android/i.test(navigator.userAgent.toLowerCase()));
		if (mobile) {
			var userAgent = navigator.userAgent.toLowerCase();
			if (userAgent.search("android") > -1) currentOS = "android";
			else if ((userAgent.search("iphone") > -1) || (userAgent.search("ipod") > -1)|| (userAgent.search("ipad") > -1)) currentOS = "ios";
			else currentOS = "else";
		} else {
			currentOS = "nomobile";
		}

			$.ajax({
				url : "/course/ajax/mobilePlayer.do",
				type : 'GET',
				cache : false,
				data : dataParams,
				dataType : 'json',
				success: function(data, textStatus, jqXHR) {
					if(data.error_cd == "err00") {
						alert("세션 정보가 존재하지 않습니다.");
						return false;
					} else if (data.error_cd == "err01") {
						alert("현재 해당 강좌는 강좌가 없거나 모바일에서 지원 가능한 영상파일이 없습니다.");
						return false;
					}

		            var nav = navigator.userAgent;
					if (currentOS == "android") {
		               tmpUrl = "intent://cddr_dnp/webstream?param=" + data.encryptUrl + "#Intent;scheme=cdnmp;action=android.intent.action.VIEW;category=android.intent.category.BROWSABLE;package=com.cdn.aquanmanager;end";
		               setTimeout(function() {window.location.href = tmpUrl; return false;}, 500);
		           }else if (currentOS == "ios") {
		                tmpUrl = 'cdnmp://cddr_dnp/webstream?param=' + data.encryptUrl;
		                var visitedAt = (new Date()).getTime();
		                setTimeout(function() {
		                    if ((new Date()).getTime() - visitedAt < 2000) {
		                    	window.location.href = "https://itunes.apple.com/kr/app/aquanmanager/id1048325731";
		                    }
		                }, 500);

		                setTimeout(function() {
		                	window.location.href = tmpUrl;
		                }, 0);
		           }else{
		        	   alert("모바일 환경에서만 실행됩니다.");
		           }
				},
			   error: function(jqXHR, textStatus, errorThrown) {
					console.log(jqXHR + "\n" + textStatus + "\n" + errorThrown);
				}
			  });
	};

	/**
	 * 쿠키 세팅 한다.
	 */
	CommonFn.fn.setCookie = function( name, value, expiredays ) {
		var todayDate = new Date();
		todayDate.setDate( todayDate.getDate() + expiredays );
		document.cookie = name + "=" + escape( value ) + "; path=/; expires=" + todayDate.toGMTString() + ";"
	};

	/**
	 * 쿠키 가져온다.
	 */
	CommonFn.fn.getCookie = function( name ) {
		var from_idx = document.cookie.indexOf(name+'=');
		if (from_idx != -1) {
			from_idx += name.length + 1
			to_idx = document.cookie.indexOf(';', from_idx)
				if (to_idx == -1) {
					to_idx = document.cookie.length
				}
			return unescape(decodeURI(document.cookie.substring(from_idx, to_idx)));
		}
	};

};


