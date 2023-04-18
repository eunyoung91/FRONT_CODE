function Eduf() {

    // eduwill.Desc()
    this.Desc = function() { // eduwill.js에 대한 도움말 및 제공기능 표시
        console.log("%ceduwill.UI : 화면 UI 요소제공 (https://docs.eduwill.net/display/iedev/eduwill.UI)", "color:brown;");        
    }

    // 객체의 NULL체크
    this.IsNullObject = function(obj) {        
        if(!obj) {
            // NULL
            return true;
        }
        else {
            // NOT NULL
            return false;
        }
    }

    // el NULL 체크
    this.IsElementNull = function(el) {

        var __$ = (typeof $);

        if(this.IsNullObject(__$) == true) {
            // jQuery가 없음
            console.error("객체참조오류","jQuery 객체($)를 찾을 수 없습니다.");
            return true;
        }
        else { 
            if($(el).length == 0) {
                console.error("객체참조오류",el+" 요소를 찾을 수 없습니다.");                
            return true;
            }
            else {
                // 객체가 있다.
                return false;
            }
        }
	}

	this.checkAgent = function(){
		if ((navigator.appName == 'Netscape' && navigator.userAgent.search('Trident') != -1) || (agent.indexOf("msie") != -1)) {
			// 인터넷 익스플로러 브라우저
		}
	}

	this.callBabelScript = function () {
		
	}

    const _version = "A2020_0620"; // block scope immutable 을 위해 const로 선언, 제안ID 20200620A        
    console.info("eduf.js Version", _version);
    console.info("eduf.js 참조문서", "https://docs.eduwill.net/pages/viewpage.action?pageId=87019850");
}

var eduf = new Eduf();

eduf.UI = function(){    
	return eduf.UI;
}

$.extend(eduf.UI, {
    Desc: function(nameSpace) {
		if (!nameSpace) {
			console.log("eduf.UI.Pointer(선택자, 옵션) : 손가락 강조 애니메이션", "color:brown;");
			console.log("eduf.UI.Winner(선택자, 옵션, slick옵션) : 합격수기", "color:brown;");
        }
        else {
            switch(nameSpace.toUpperCase()){                
                case "POINTER" : {
                    console.info("손가락 강조 애니메이션 / eduf.UI.Pointer(선택자, 옵션)");
                    console.info("https://docs.eduf.net/pages/viewpage.action?pageId=87028593");
                    break;
				}
				case "WINNER": {
					console.info("합격자명당 / eduf.UI.Winner(선택자, 옵션, slick옵션)");
					console.info("https://docs.eduwill.net/pages/viewpage.action?pageId=87019856");
					break;
				}
                default : {
                    console.error(nameSpace,"제공하지 않는 기능입니다. 아래 기능을 참고하세요.");
                    // 제공하는 기능목록 보여주기
					eduf.UI.Desc();
                    break;
                }
            }
        }
    },
    Pointer: function(el, options){

        // 각 옵션타입에 대한 값을 미리 정의
        // 모션타입은 eudill.UI.Pointer.css에 정의됨
        // 아이콘타입 정의
        const _iconTypes = [
            "https://img.eduwill.net/Img2/Common/icon/pointer/icon_pointer_1.png"
            , "https://img.eduwill.net/Img2/Common/icon/pointer/icon_pointer_2.png"
            , "https://img.eduwill.net/Img2/Common/icon/pointer/icon_pointer_3.png"
            , "https://img.eduwill.net/Img2/Common/icon/pointer/icon_pointer_4.png"
            , "https://img.eduwill.net/Img2/Common/icon/pointer/icon_pointer_5.png"
            , "https://img.eduwill.net/Img2/Common/icon/pointer/icon_pointer_6.png"
            , "https://img.eduwill.net/Img2/Common/icon/pointer/icon_pointer_7.png"
            , "https://img.eduwill.net/Img2/Common/icon/pointer/icon_pointer_8.png"
            , "https://img.eduwill.net/Img2/Common/icon/pointer/icon_pointer_9.png"
            , "https://img.eduwill.net/Img2/Common/icon/pointer/icon_pointer_10.png"
        ];
        // 옵션 기본값 설정
        var _options = {
            motionType: 1,
            iconType: 1,
            right : 9999, // 자동설정값과 사용자 지정값을 구분하기 위해 사용자가 정의하지 않을것 같은 값을 임의로 할당
            bottom : 9999,
            iconUrl : _iconTypes[0]
        };

        // 그리기
        // el 요소를 찾는지 검사
        // el이 없으면 오류 콘솔에 찍고 실행 중단
		if (eduf.IsElementNull(el) == true) {
            return;
        }
        // options 필수값 체크
        // options이 정의되어 있다면
		if (eduf.IsNullObject(options) == false) {
            
            // 필수옵션 체크
			if (eduf.IsNullObject(options.motionType) == true || options.motionType > 4 || options.motionType < 1) {
                options.motionType  = 1;
                if(options.motionType > 4 || options.motionType < 1) {
                    console.warn("eduf.UI.Pointer(el, options)", "options.motionType 값이 1로 강제설정 되었습니다.");
                }
            }
			if (eduf.IsNullObject(options.iconType) == true || options.iconType > _iconTypes.length || options.iconType < 1) {
                options.iconType  = 1;
                if(options.iconType > _iconTypes.length || options.iconType < 1) {
                    console.warn("eduf.UI.Pointer(el, options)", "options.iconType 값이 1로 강제설정 되었습니다.");
                }
            }

            // 아이콘 URL
			if (eduf.IsNullObject(options.iconUrl) == true) {
                options.iconUrl = _iconTypes[options.iconType-1];
            }

            // 기본 아이콘 위치 선정
			if (eduf.IsNullObject(options.right) == true) {
                options.right  = 9999;
            }
			if (eduf.IsNullObject(options.bottom) == true) {
                options.bottom  = 9999;
            }
            
            // 옵션을 지정된 값으로 배정
            _options = options;
        }
        // 시작
        console.time("eduf.UI.Pointer(el, options)");
        
        let _iconWidth, _iconHeight;
        
        var _img = $("<img/>")
            .attr("src", _options.iconUrl)
            .attr("class", "eduwill-UI-pointer-icon")
            .attr("alt", "클릭!")
            .on('load', function() {            

                    _iconWidth = this.width;
                    _iconHeight = this.height;

                    // 기본위치검사
                if(_options.right == 9999 || _options.bottom == 9999) {
                    // 기본위치 검사
                    if(_options.bottom == 9999) {
                        // 높이는 지정한 영역크기에 50% 아래로 이동 , 변수가 너무 많아 지정하지 않음                         
                        _options.bottom = 0;//(($(el).height()/2.0)+_iconHeight);
                    }
                    if(_options.right == 9999) {
                        // 세로는 지정된 아이콘의 50% 안쪽으로 이동
                        _options.right = (_iconWidth/2);
                    }
                }

                var _span = $("<span/>")                
                    .attr("class", "eduwill-UI-pointer-motion"+_options.motionType)
                    .css("position", "absolute")
                    .css("right", _options.right)
                    .css("bottom", _options.bottom);

                _span.append(_img);

                $(el).append(_span);

                // 끝
                console.timeEnd("eduf.UI.Pointer(el, options)");

        });
	},
	Winner: function (el, options, slickOptions) {
		var $this = $(el);
		var _options = {};

		/* 기본옵션 */
		var _slickOptions = {
			autoplay: true,
			autoplaySpeed: 0,
			infinite: true,
			cssEase: 'linear',
			arrows: false,
			slidesToScroll: 1,
			speed: 1000,
			slidesToShow: 9,
			slidesPerRow: 1,
			vertical: true,
			rows: 1,
			pauseOnHover: false,
			pauseOnFocus: false,
			useTransform: false,
			touchMove:false,
			draggable: false,
			swipe:false
		}

		init(options, slickOptions);

		function init(options, slickOptions) {
            //객에 있는지 확인
			if (eduf.IsElementNull($this)){
                return;
            }

            //option 셋팅 완료 되면 
			if (setOption(options, slickOptions)) {
				//합격후기 컴포넌트 작성
				generateComponent();
			}
		};

		function setOption(options, slickOptions) {
			var rtnVal = true;
			//필요한 option 값 셋팅 
			if (!options.jsonFileNm) {
				console.error("jsonFileNm is necessary option");
				rtnVal = false;
			}

			if (rtnVal) {
				$.extend(_options, options);
				$.extend(_slickOptions, slickOptions);
			}

			// 가로 슬라이드의 경우, rtl: true, // 방향, 슬라이드에 dir="rtl" 도 추가되어야함.
			if (!_slickOptions.vertical) {
				_slickOptions.rtl = true;
			}

			return rtnVal;
		}

		function generateComponent() {
			var jsonFileNm = _options.jsonFileNm;
			
			var processCode = jsonFileNm.indexOf("_") > 0 ? jsonFileNm.split("_")[0].substr(0, 1) : "_" + jsonFileNm.split("_")[1].substr(0, 3);
			var url = "https://img.eduwill.net/eduwill/live/json/" + processCode + "/" + jsonFileNm + ".json";
			//https://img.eduwill.net/eduwill/live/json/Q/Q20200724_WINNER.min.json

			try {
				$.ajax({
					type: "GET"
					, url: url
					, dataType: "json"
					, success: function (data) {
						if(data.length %_slickOptions.slidesPerRow > 0){
							var rest = data.length %_slickOptions.slidesPerRow;
							data = data.filter(function(el, idx){return idx < data.length - rest})
						};
						
						drawWinner(data);
					}
					, error: function (data) {
						console.dir(data.responseText);
					}
				});
			}
			catch (e) {
				console.error(e);
			}
        }

		function drawWinner(winner) {
            winner.forEach(function(data){
                var $p = $("<p>" + data + "</p>");
                $this.append($p);
			})

			//세로방향일때 필수 설정 옵션 true일 때 dir = "rtl" 필요
			if (!_slickOptions.vertical) {
				$this.attr("dir", "rtl");
			}

            $this.slick(_slickOptions);
		}
	},
	Player: function (/**/) {
		var _options = Array.prototype.slice.call(arguments); // 배열변환
		var _currentIdx;

		init();	

		function init() {

			var rtnVal = _options.every(function (options, idx) {
				return setOption(options, idx);
			})

			if(rtnVal){
				_options.forEach(function (options) {
					generateComponent(options);
					
					if(options.uiType && options.uiType.toUpperCase() == "TAB"){
						//첫번재 탭 클릭 발생시켜 주기 
						options.playerTabEl.eq(0).trigger("click");
					};
				})
			}
			
		}

		function setOption(options, idx) {
			var rtnVal = true;

			//필요한 option 값 셋팅 
			if (options.playerSrc.length < 1) {
				console.error("playerSrc is necessary option");
				rtnVal = false;
			}

			var defaultObj = {};
			if(options.uiType && options.uiType.toUpperCase() == "POPUP"){
				defaultObj = {
					playerShowClass: "show-action", 
					showActionCallback: null,
				}

				//default값 설정 
				$.extend(defaultObj, options);
			}

			if(options.uiType && options.uiType.toUpperCase() == "TAB"){
				defaultObj = {
					playerTabClass: "tab-action",
					tabActionCallback: null
				}

				//default값 설정 
				$.extend(defaultObj, options);
			}

			
			defaultObj = {
				playerPlayClass: "play-action"
			}

			//default값 설정 
			$.extend(defaultObj, options);
			

			//element 찾기
			defaultObj.playerEl = $("." + defaultObj.playerClass);
			defaultObj.playerShowEl = $("." + defaultObj.playerShowClass);
			defaultObj.playerPlayEl = $("." + defaultObj.playerPlayClass);
			defaultObj.playerStopEl = $("." + defaultObj.playerStopClass);
			defaultObj.playerTabEl = $("." + defaultObj.playerTabClass);

			if (rtnVal) {
				_options[idx] = defaultObj;
			}

			return rtnVal;
		}

		function generateComponent(options) {
			//각 클래스별 이벤트 등록 
			eventBind(options);

			//uiType도 없고 프리뷰도 없는 경우
			if (!options.uiType && !options.preview) {
				//해당 인덱스에 알맞은 src 넣어 주기
				playerMatch(options);
			}
		}

		function eventBind(options) {
			//show-action 클래스 클릭 
			if (options.uiType && options.uiType.toUpperCase() === "POPUP") {
				options.playerShowEl.on("click", function () {
					//해당 객체가 어느 option에 속해 있는지 찾기
					var currentOptions = getOption($(this), "playerShowClass");
					_currentIdx = options.playerShowEl.index(this);

					//모든영상 멈춤
					playerStop(currentOptions);

					//해당 인덱스에 알맞은 src 넣어 주기
					playerMatch(currentOptions);

					if (currentOptions.showActionCallback) {
						currentOptions.showActionCallback(this);
					}
				})
			}
			
			//play-action 클래스 (미리보기) 클릭
			if(options.preview){
				options.playerPlayEl.on("click", function () {
					//해당 객체가 어느 option에 속해 있는지 찾기
					var currentOptions = getOption($(this), "playerPlayClass");
					_currentIdx = options.playerPlayEl.index(this);
					
					//popup이나 tab이 아닐 경우만 멈춤 
					if(!options.uiType){
						playerStop(currentOptions);
					}
					
					//초기화
					currentOptions.playerPlayEl.show();
					
					//나만 숨기기 
					$(this).hide();
					
					//popup이나 tab이 아닐 경우만 Match 필요함
					if(!options.uiType){
						//해당 인덱스에 알맞은 src 넣어 주기
						playerMatch(currentOptions);
					}

					//해당미리보기 영상 시작 
					playerPlay(currentOptions);

					if(currentOptions.playActionCallback){
						currentOptions.playActionCallback(this)
					}
				})
			}

			//stop-action 클래스 클릭
			options.playerStopEl.on("click", function () {
				//해당 객체가 어느 option에 속해 있는지 찾기
				var currentOptions = getOption($(this), "playerStopClass");
				
				//모든탭의 영상 멈춤
				playerStop(currentOptions);

				if(currentOptions.stopActionCallback){
					currentOptions.stopActionCallback(this)
				}
			})

			if (options.uiType && options.uiType.toUpperCase() == "TAB") {
				options.playerTabEl.on("click", function () {
					//해당 객체가 어느 option에 속해 있는지 찾기
					var currentOptions = getOption($(this), "playerTabClass");
					_currentIdx = options.playerTabEl.index(this);

					//모든 영상 멈춤
					playerStop(currentOptions);

					//해당 인덱스에 알맞은 src 넣어 주기
					playerMatch(currentOptions);

					if (currentOptions.tabActionCallback) {
						currentOptions.tabActionCallback(this)
					}
				})
			}
		}

		function playerMatch(currentOptions) {
			if (!currentOptions.uiType && !currentOptions.preview) {
				//uiType도 없고 프리뷰도 없는 경우
				playerMatchAuto(currentOptions);
			} else {
				playerMatchByIdx(currentOptions);
			}			
		}

		function playerMatchAuto(currentOptions) {
			var $this = currentOptions.playerEl;

			//player가 여러개인 경우 
			if ($this.length > 1) {
				$this.each(function (idx) {
					//player가 여러개인경우 순번에 맞게 
					$(this).attr("src", currentOptions.playerSrc[idx]);
				});
			} else {
				//player가 한개인경우 첫번째꺼 걍 넣어줌 
				$this.attr("src", currentOptions.playerSrc[0]);
			}
		}

		function playerMatchByIdx(currentOptions) {
			//동영상 src 셋팅 
			var $this;
			if (currentOptions.playerEl.length > 1) {
				//비디오나 iframe 이 하나 이상이다 -> 각 페이지 마다 iframe or video tag 가 존재 한다 
				$this = currentOptions.playerEl.eq(_currentIdx);
			} else {
				$this = currentOptions.playerEl;
			}

			var tagName = $this.prop("tagName");
			if (tagName.toUpperCase() == "IFRAME") {
				$this.attr("src", currentOptions.playerSrc[_currentIdx]);
			} else {
				$this.find("source").attr("src", currentOptions.playerSrc[_currentIdx]);
			}

		}

		function playerPlay(currentOptions) {
			//동영상 플레이 하기 
			var $this;

			if(currentOptions.playerEl.length > 1){
				//비디오나 iframe 이 하나 이상이다 -> 각 페이지 마다 iframe or video tag 가 존재 한다 
				$this = currentOptions.playerEl.eq(_currentIdx);
			}else{
				$this = currentOptions.playerEl;
			}

			var tagName = $this.prop("tagName");

			if(tagName.toUpperCase() == "VIDEO"){
				$this[0].load();
				$this[0].play();
			}
		}

		function playerStop(currentOptions) {
			var tagName = currentOptions.playerEl.eq(0).prop("tagName");;
			
			if(tagName.toUpperCase() == "IFRAME"){
				currentOptions.playerEl.attr("src", "")
			}else{
				currentOptions.playerEl.each(function(){
					this.pause();

					if (!isNaN(this.duration)) {
						this.currentTime = 0;	
					}
				})
			}
		}

		function getOption($this, gbn) {
			var hasClass = $this.attr("class").split(" ");
			var returnOption = _options.filter(function (el) {
				if (hasClass.indexOf(el[gbn]) > -1) {
					return el;
				}
			});

			return returnOption.length > 0 ? returnOption[0] : {};
		}
	},
	WinnerList:function (el, options, slideOptions) {
		var $this = $(el);
		var _height = 30;
		var _duration = 240;
		var _options = {};
		var _len;

		/* 기본옵션 */
		var _slideOptions = {
			slidesPerRow: 3,
			slidesToShow: 8,
			slidesPerHeight:30
		}

		init(options, slideOptions);

		function init(options, slideOptions) {
            //객에 있는지 확인
			if (eduf.IsElementNull($this)){
                return;
            }

            //option 셋팅 완료 되면 
			if (setOption(options, slideOptions)) {
				//합격후기 컴포넌트 작성
				generateComponent();
			}
		}

		function setOption(options, slideOptions) {
			var rtnVal = true;
			//필요한 option 값 셋팅 
			if (!options.jsonFileNm) {
				console.error("jsonFileNm is necessary option");
				rtnVal = false;
			}

			if (rtnVal) {
				$.extend(_options, options);
				$.extend(_slideOptions, slideOptions);
			}

			return rtnVal;
		}

		function generateComponent() {
			var jsonFileNm = _options.jsonFileNm;
			
			var processCode = jsonFileNm.indexOf("_") > 0 ? jsonFileNm.split("_")[0].substr(0, 1) : "_" + jsonFileNm.split("_")[1].substr(0, 3);
			var url = "https://img.eduwill.net/eduwill/live/json/" + processCode + "/" + jsonFileNm + ".json";

			try {
				$.ajax({
					type: "GET"
					, url: url
					, dataType: "json"
					, success: function (data) {					
						drawWinner(data);
					}
					, error: function (data) {
						console.dir(data.responseText);
					}
				});
			}
			catch (e) {
				console.error(e);
			}
        }

		function drawWinner(winner) {
			$this.html("<div class='rolling'><ul></ul></div>");

            winner.forEach(function(data){
				var $rolling = $this.find(".rolling ul");
                var $li = $("<li><span>"+data+"</span></li>");
                $rolling.append($li);
			});

			 _len = $this.find("li").length;
			 var row = _slideOptions.slidesPerRow;
			 var refill = row-(_len%row);

			 if(refill != 0){
				for(var i = 0; i<refill; i++){
					var $rolling = $this.find(".rolling ul");
					var $li = $("<li><span>"+winner[i]+"</span></li>");
					$rolling.append($li);
				}
			 }

			var rowWidth;
			switch(_slideOptions.slidesPerRow){
				case 1:
					rowWidth = "100%";
					break;
				case 2:
					rowWidth = "50%";
					break;
				case 3:
					rowWidth = "33.33%";
					break;
				case 4:
					rowWidth = "25%";
					break;
				case 5:
					rowWidth = "20%";
					break;
				case 6:
					rowWidth = "16.66%";
					break;
				default:
					rowWidth = "100%";
					break;
			}
			
			 _height = _slideOptions.slidesPerHeight;
			$this.css({height:_slideOptions.slidesToShow * _height});
			$this.find("li").css({'flex-basis':rowWidth});
			
			$this.find("ul").clone().appendTo($('.rolling'));
			rolling();


		}

		function rolling(){
			_duration = 100 * _len / (_slideOptions.slidesPerRow / 10);

			$($this).find('.rolling').animate({ transform: -1 * $($this).find('.rolling ul').height() }, {
				step: function (location) {
					$(this).css('-webkit-transform', 'translateY(' + location + 'px)');
					$(this).css('transform', 'translateY(' + location + 'px)');
				},
				duration: _duration,
				easing: 'linear',
				complete: function () { rolling() }
			});

		}

	}

});

eduf.UI = new eduf.UI();