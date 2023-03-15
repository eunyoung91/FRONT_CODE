(function($) {
	var domIdfilterClass = "";

	/**
	 * <pre>
	 * documnet에 data-tr-label을 조회해서 click event를 발생
	 * 1. data-tr-label
	 *	- 클릭이벤트 라벨
     *
	 * 2. data-tr-target-label
	 *   - 클릭이벤트 타겟 라벨
	 *   - 클릭 카운트가 어디에 표시될지 정함.
     *
	 * 3. data-tr-action
	 *   - 빈값일경우 href, onclick을 조회해서 세팅됨
	 *
	 * ex) edwKin/kin-land/src/main/webapp/WEB-INF/views/main/main.jsp
	 * </pre>
	 * @methodName	: addTrackingArea
	 * @since			: 2020. 12. 3.
	 * @author			: ghlee
	 */
	$.fn.addTrackingArea = function(options) {
		init();
		$(this).find("[data-tr-label]").each(function(i) {
			if ($(this).find("[data-tr-target-label]").length == 0) {
				if (getAction($(this)) != undefined) {
					$(this).addClass("trackingArea");
				}
			}
			$(this).find("[data-tr-target-label]").each(function(i) {
				$(this).addClass("trackingArea");
			});
		});

		$(this).find(".trackingArea").on("click", function(e) {
		 	var action = getAction($(this));
			var label = $(this).data("tr-label");
			if (label == undefined) {
				label =  $(this).data("tr-target-label");
			}
			action = action.replace(/javascript:/g,"");
			action = action.replace(/location.href=/g,"");
			var os = /Android|webOS|iPhone|iPad|iPod|BlackBerry/i.test(navigator.userAgent) ? "M" : "P";
			var data = {
				"label": label,
				"action": action,
				"os": os
			}
		    if (typeof options.callback == 'function') {
		    	options.callback.call(this, data);
		    }
		});
	};

	/**
	 * <pre>
	 * 파라미터로 받은 list로 document의 라벨을 조회해서 heatmap 데이터 포지션 리턴
	 * ex) EM_V1/src/main/webapp/views/kin/dashBoardManage/dashBoardManage.jsp
	 * </pre>
	 * @methodName	: getTrackingHeatmapPos
	 * @since			: 2020. 12. 3.
	 * @author			: ghlee
	*/
	$.fn.getTrackingHeatmapPos = function(options) {
		var list = options.list;
		var limit = options.limit;
		var max = 0;
		var map = new Map();
		var points = [];

		var content = $(this);
		$(list).each(function(i) {
			var label = list[i].label;
			var cnt = list[i].cnt;
			label = label.replace(/\&#39;/g,"'");
			label = label.replace(/\&amp;/g,"&");
			var ele = $(content).find("[data-tr-label='"+ label+"']");
			$(ele).each(function(i) {
	    		var node  = ele.get(i);
	    		if ($(node).offset() != undefined) {
					var innerWidth =  $(node).innerWidth();
					var width = $(node).width();
					var innerHeight = $(node).innerHeight();
					var height = $(node).height();
		    		if ($(node).innerWidth() == 0) {
		    			innerWidth = $(node).children().innerWidth();
						width = $(node).children().width();
				    }

		    		if ($(node).innerHeight() == 0) {
		    			innerHeight = $(node).children().innerHeight();
						height = $(node).children().height();
				    }

					var paddingTopBottom  = innerHeight - height;
					var paddingLeftRight  = innerWidth - width;

					var tP = $(node).css("padding").split(" ");
					var Padding = {
						Top: tP[0] != null ? parseInt(tP[0]) : 0,
						Right: tP[1] != null ? parseInt(tP[1]) : (tP[0] != null ? parseInt(tP[0]) : 0),
						Bottom: tP[2] != null ? parseInt(tP[2]) : (tP[0] != null ? parseInt(tP[0]) : 0),
						Left: tP[3] != null ? parseInt(tP[3]) : (tP[1] != null ? parseInt(tP[1]) : (tP[0] != null ? parseInt(tP[0]) : 0))
					};

					innerWidth = innerWidth - paddingLeftRight;
					innerHeight = innerHeight - Padding.Top - Padding.Bottom;
					var positionX = $(node).offset().left  + Padding.Left;
					var positionY = $(node).offset().top + Padding.Top;

		            if (positionY != 0 && innerWidth > 0 && innerHeight > 0) {
		            	for (var i = 1; i<=cnt; i++) {
			            	ranX = randomRange(positionX, positionX + innerWidth);
			            	ranY = randomRange(positionY, positionY + innerHeight);
			            	var mapKey = ranX +"_"+ ranY;
			            	if (i > limit) {
		            			return false;
		            		}
			            	if (map.get(mapKey) == undefined) {
			            		map.put(mapKey,1);
				            } else {
				            	map.put(mapKey,(map.get(mapKey) + 1));
						    }

		            	}
			        }
	    		}
			});
	        map.each(function(key, value) {
	        	points.push({x : key.split("_")[0], y : key.split("_")[1], value : value});
	        	max = (max < value) ? value : max;
	     	});
		});
		var data = {
			points: points,
			max: max
		}
		options.callback.call(this, data);
	};

	/**
	 * <pre>
	 * 파라미터로 받은 list로 document의 라벨을 조회해서 boxarea 데이터 포지션 리턴
	 * ex) EM_V1/src/main/webapp/views/kin/dashBoardManage/dashBoardManage.jsp
	 * </pre>
	 * @methodName	: getTrackingBoxAreaPos
	 * @since			: 2020. 12. 3.
	 * @author			: ghlee
	*/
	$.fn.getTrackingBoxAreaPos  = function(options) {
		var list = options.list;
		var max = 0;
		var map = new Map();
		var points = [];

		var content = $(this);
		$(list).each(function(i) {
			var label = list[i].label;
			var cnt = list[i].cnt;
			label = label.replace(/\&#39;/g,"'");
			label = label.replace(/\&amp;/g,"&");
			var ele = $(content).find("[data-tr-label='"+ label+"']");
			$(ele).each(function(i) {
	    		var node  = ele.get(i);
	    		if ($(node).offset() != undefined) {
					var innerWidth =  $(node).innerWidth();
					var width = $(node).width();
					var innerHeight = $(node).innerHeight();
					var height = $(node).height();
		    		if ($(node).innerWidth() == 0) {
		    			innerWidth = $(node).children().innerWidth();
						width = $(node).children().width();
				    }

		    		if ($(node).innerHeight() == 0) {
		    			innerHeight = $(node).children().innerHeight();
						height = $(node).children().height();
				    }

					var paddingTopBottom  = innerHeight - height;
					var paddingLeftRight  = innerWidth - width;

					var tP = $(node).css("padding").split(" ");
					var Padding = {
						Top: tP[0] != null ? parseInt(tP[0]) : 0,
						Right: tP[1] != null ? parseInt(tP[1]) : (tP[0] != null ? parseInt(tP[0]) : 0),
						Bottom: tP[2] != null ? parseInt(tP[2]) : (tP[0] != null ? parseInt(tP[0]) : 0),
						Left: tP[3] != null ? parseInt(tP[3]) : (tP[1] != null ? parseInt(tP[1]) : (tP[0] != null ? parseInt(tP[0]) : 0))
					};

					innerWidth = innerWidth - paddingLeftRight;
					innerHeight = innerHeight - Padding.Top - Padding.Bottom;
					var positionX = $(node).offset().left  + Padding.Left;
					var positionY = $(node).offset().top + Padding.Top;

		            if (positionY != 0 && innerWidth > 0 && innerHeight > 0) {
						var mapKey = positionX +"_"+ positionY;
						var data = {
								innerWidth: innerWidth ,
								innerHeight : innerHeight,
								cnt : cnt
						}
						map.put(mapKey, data);
			        }
	    		}
			});
		});
	    map.each(function(key, value) {
			var data = {
				posX: key.split("_")[0],
				posY: key.split("_")[1],
				width: value.innerWidth,
				height: value.innerHeight,
				cnt: value.cnt.format()
			}
			options.callback.call(this, data);
	 	});
	};

	function init() {
		$(this).find(".trackingArea").unbind("click" );
		$(this).find(".trackingArea").removeClass("trackingArea").filter('[class=""]').removeAttr('class');
	}

	function getAction(ele) {
		var action = "";
		if ($(ele).attr("href") != undefined) {
			action = $(ele).attr("href");
		}
		if ($(ele).attr("onclick") != undefined) {
			action = $(ele).attr("onclick");
		}
		if ($(ele).data("tr-action") != undefined) {
			action = $(ele).data("tr-action");
		}
		return action;
	}

	function Map() {
	    this.keys = new Array();
	    this.data = new Object();

	    this.put = function (key, value) {
	        if (this.data[key] == null) {
	            this.keys.push(key);
	        }
	        this.data[key] = value;
	    };

	    this.get = function (key) {
	        return this.data[key];
	    };

	    this.remove = function (key) {
	        this.keys.remove(key);
	        this.data[key] = null;
	    };

	    this.each = function (fn) {
	        if (typeof fn != 'function') {
	            return;
	        }
	        var len = this.keys.length;
	        for (var i = 0; i < len; i++) {
	            var k = this.keys[i];
	            fn(k, this.data[k], i);
	        }
	    };

	    this.entrys = function () {
	        var len = this.keys.length;
	        var entrys = new Array(len);
	        for (var i = 0; i < len; i++) {
	            entrys[i] = {
	                key: this.keys[i],
	                value: this.data[i]
	            };
	        }
	        return entrys;
	    };

	    this.isEmpty = function () {
	        return this.keys.length == 0;
	    };

	    this.size = function () {
	        return this.keys.length;
	    };
	}

	function randomRange(min, max) {
		return Math.floor( (Math.random() * (max - min + 1)) + min );
	}

	Number.prototype.format = function(){
	    if(this==0) return 0;

	    var reg = /(^[+-]?\d+)(\d{3})/;
	    var n = (this + '');

	    while (reg.test(n)) n = n.replace(reg, '$1' + ',' + '$2');

	    return n;
	};

	String.prototype.format = function(){
	    var num = parseFloat(this);
	    if( isNaN(num) ) return "0";

	    return num.format();
	};

}(jQuery));
