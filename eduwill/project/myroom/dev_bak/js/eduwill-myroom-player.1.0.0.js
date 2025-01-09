/**
 * myroom package
 */
var myroom;
	
(function(myroom){
	
	/**
	 * Ajax Class
	 */
	var Ajax = (function(){
        
		function Ajax() {

        }
        
		Ajax.prototype.postAjax = function (callUrl, param, successCallback, failCallback) {
            $.ajax({
                type: "POST",
                async: true,
                url: callUrl,
                crossDomain: true,
                dataType: "json",
                timeout: 5000,
                cache: false,
                data: param,
                success: function (jsonData) {
                    if (typeof successCallback == "function") {
                        successCallback(jsonData); // 성공시 함수 실행
                    }
                },
                error: function (e) {
                    if (typeof failCallback == "function") {
                        failCallback(e); // 실패시 함수 실행
                    }
                }
            });
        };
        
        Ajax.prototype.postSyncAjax = function (callUrl, param) {
        	var resultData = "";
			
            $.ajax({
                type: "POST",
                async: false,
                url: callUrl,
                crossDomain: true,
				xhrFields:{withCredentials: true},
                dataType: "json",
                timeout: 5000,
                cache: false,
                data: param,
                success: function (jsonData) {
                	resultData = jsonData;
                },
                error: function (e) {
                    alert("ERROR : " + e.message);
                }
            });
            
            return resultData;
        };
        
        return Ajax;
    }());
    myroom.Ajax = Ajax;
	
	/**
	 * Player Class
	 */ 
	var Player = (function(){
		
		// Constructor
		function Player(){
			this.ajax = new myroom.Ajax();
			this.version			= "1.0.0";
			this.api_encript_url	= "http://l-myroom.eduwill.net/api/player/dataEncript";
			this.api_nPlayer_url	= "http://l-myroom.eduwill.net/class/player/nPlayer";
			this.api_nManager_url	= "http://l-myroom.eduwill.net/class/player/nManager";
			this.site_dokhan		= "9";							// 독한에듀윌(독한모드) 사이트코드
			this.site_myroom		= "12";							// 통합나의강의실 사이트코드
			
			var userAgent = navigator.userAgent.toLowerCase();
			
			if(userAgent.match(/(iphone)|(ipod)|(ipad)/i)){
				Player.Agent = "ios";
			}else if(userAgent.match(/android/i)){
				Player.Agent = "android";
			}else{
				Player.Agent = "pc";
			}
		}
		
		// 강의정보를 전송하여 암호화데이터 생성
		Player.prototype.dataEncript = function(productCode, lectureCode, lectureSeq){
			var param = {"productCode":productCode, "lectureCode":lectureCode, "lectureSeq":lectureSeq};
			var jsonData = this.ajax.postSyncAjax(this.api_encript_url, param);
			var encriptData = jsonData.encriptData;

			console.log("encriptData : " + encriptData);

			return encriptData;
		}
		
		// 아쿠아N매니저 실행
		Player.prototype.nManagerLaunch = function(encriptData, siteCode, position){
			var param = {"encriptData":encriptData, "siteCode":siteCode};
			this.ajax.postAjax(this.api_nManager_url, param, this.successCallback, this.failCallback);
		};
		
		Player.prototype.nPlayerLaunch = function(encriptData, siteCode, div, position){
			
			if(encriptData == undefined || encriptData == ""){
				alert("영상을 재생할 수 없습니다.\n관리자에 문의바랍니다.");
				return false;
				
			}else{
			
				var url = this.api_nPlayer_url + "?div=" + div + "&siteCode=" + siteCode + "&position=" + position + "&encriptData=";
				
				/*
				var domain = "http://";
				var currUrl = document.location.href;
					currUrl = currUrl.replace("http://", "");
					currUrl = currUrl.replace("https://", "");
					
				var currUrlArray = currUrl.split("/");
				if(currUrlArray.length >= 2){
					domain += currUrlArray[0];
					url = domain + url;
				}
				*/
				
				var wSize = 1337;
				var hSize = 681;
				var strTitle = "에듀윌 강의실";
				
				// 독한에듀윌[독한모드]
				if(siteCode == this.site_dokhan){
					wSize = 992;
					hSize = 681;
					strTitle = "[독한모드] 에듀윌 강의실";
				}
				
				// IE
				if ("ActiveXObject" in window) {
					var mf = window.open((url + encriptData),strTitle,'left=0, top=0, width=' + wSize + ', height=' + hSize + ',toolbar=no, menubar=no, location=no, directories=no, resizable=no, status=no, scrollbars=no');
						mf.focus();
					
				// IE 외
				} else {
					var params = "";
					var option;
					wSize += 24;
					hSize += 46;
					var options = {width: wSize, height: hSize, title:strTitle};
						
					for (option in options) 
						params += option + "=" + options[option] + "&";
					
					var href = "nplayer://launch?" + params + "url=" + encodeURIComponent(url) + encriptData;
					
					launchUri(href, function(){}
						, function() { indicateDownload() }
						, function() { indicateDownload() } 
					);
				}
			}
		}
		
		// 암호화된 URL 생성 성공시 아쿠아N매니저 호출
		Player.prototype.successCallback = function(data){
			var encParam = data.encParam;
			
			if(Player.Agent = "ios"){ 
				document.location.href = "cdnmp://cddr_dnp/webstream?param=" + encParam;
				
			}else if(Player.Agent = "android"){
				document.location.href = "intent://cddr_dnp/webstream?param=" + encParam + "#Intent;scheme=cdnmp;action=android.intent.action.VIEW;category=android.intent.category.BROWSABLE;package=com.cdn.aquanmanager;end";
			}
		}
		
		// 암호화된 URL 생성 실패
		Player.prototype.failCallback = function(e){
			alert("Reason : " + e.message);
		}
		
		// Method
		Player.prototype.run = function(productCode, lectureCode, lectureSeq, siteCode, div, position){
			
			//암호화 데이터 생성
			var encriptData = this.dataEncript(productCode, lectureCode, lectureSeq);
			if(encriptData != ""){
				if(Player.Agent == "pc"){
					this.nPlayerLaunch(encriptData, siteCode, div, position);	// 아쿠아N플레이어 시작
				}else{
					this.nManagerLaunch(encriptData, siteCode, position);				// 아쿠아N매니저 시작
				}
			}else{
				alert("정보가 잘못되어 강의를 실행할 수 없습니다.");
			}
			
		};
				
		return Player;
	}());
	
	Player.Agent = "";
	
	// Class 할당
	myroom.Player = Player;
		
})(myroom || (myroom = {}));


/*
 * 영상 플레이어 실행모듈
 * @Function                : playerRun(productCode, lectureCode, lectureSeq, siteCode, div, bookmarkPosition)
 * @param productCode       : 상품코드
 * @param lectureCode       : 강좌코드
 * @param lectureSeq        : 강의번호
 * @param siteCode          : 서비스 구분코드(1-에듀윌, 14-통합나의강의실, 9-독한에듀윌[독한모드] / 공통코드[서비스구분코드 - ECO_SERVICE_CODE])
 * @param div               : 화질구분(H-HD, L-고화질)
 * @param bookmarkPosition  : 북마크 재생위치(초)
 * @example                 : 일반재생                  - playerRun("18G0Y0012A", "G0P16FE011", "1", "14", "H")
 *                          : 북마크재생(임의위치 재생) - playerRun("18G0Y0012A", "G0P16FE011", "1", "14", "H", 60)
 */
function playerRun(productCode, lectureCode, lectureSeq, siteCode, div, bookmarkPosition){
	if(bookmarkPosition == undefined || bookmarkPosition == ""){
		bookmarkPosition = "";
	}
	
	// Player 클래스 객체생성
	var _player = new myroom.Player();
	_player.run(productCode, lectureCode, lectureSeq, siteCode, div, bookmarkPosition);
}

/*
function indicateDownload() {

	var nc_app_url;
	var userAgent = navigator.userAgent.toLowerCase();
	
	if(userAgent.match(/macintosh/i)){
		nc_app_url = NPLAYER_OSX_SETUP_URL;
		if (confirm('동영상을 재생하기 위해서 재생플레이어를 설치하여야 합니다.\n설치하시겠습니까?')) {
			window.location.href = NPLAYER_OSX_SETUP_URL;
		}

	}else if(userAgent.match(/windows/i)){
		nc_app_url = NPLAYER_SETUP_URL;
		if (confirm('동영상을 재생하기 위해서 재생플레이어를 설치하여야 합니다.\n설치하시겠습니까?')) {
			window.location.href = NPLAYER_SETUP_URL;
		}	
	}
  
}
*/

function indicateDownload() {

	var nc_app_url;
		nc_app_url = NPLAYER_SETUP_URL;
	if (confirm('동영상을 재생하기 위해서 재생플레이어를 설치하여야 합니다.\n설치하시겠습니까?')) {
		window.location.href = NPLAYER_SETUP_URL;
	}
}

document.write('<iframe id="dataFrame" src="" frameborder="0" width="0" height="0" style="display:block; width:0px; height:0px; border:0px;"></iframe>');

// 각 코드로 암호화된 데이터 생성
function dataEncript(productCode, lectureCode, lectureSeq, userId){
	var src = "/class/player/dataEncript2?productCode=" + productCode + "&lectureCode=" + lectureCode + "&lectureSeq=" + lectureSeq + "&userId=" + userId;
	$("iframe[id=dataFrame]").attr("src", src);
	
	// 처리 후 함수를 자동호출하게 됨.
	// 페이지에 encriptResult(encriptData) 함수를 구현할 것
	// encriptResult(encriptData)
}