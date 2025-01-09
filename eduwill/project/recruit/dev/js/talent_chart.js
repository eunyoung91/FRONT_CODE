(function() {
    'use strict';
  
    /**
     * Initialize a Timesheet
     */
    var Timesheet = function(container, data) {
        this.data = [];
        this.year = {min: '',max: ''};
        this.chartHtml = '';
        this.yearLen = 0;
        this.yearMaxLen = 26;
        this.jumpYear = false;
		this.itemTypeArr = [1,2,3,4];
		this.maxHeightArr = [0,0,0,0];

        this.parse(data || []);
		
		if (typeof document !== 'undefined') {
            this.container = (typeof container === 'string') ? document.querySelector('#'+container) : container;
            this.drawTip();
            this.drawSections();
            this.studyChart();  //학력사항
            this.workChart();   //경력사항
            this.certChart();   //자격증
            this.iconChart();   //특기사항
            this.appendHtml(this.container, '<div class="data">'+this.chartHtml+'</div>');
            
        }
		
		// reverse class 추가 
		this.reverseNode();
		
		// 동적으로 높이 변경
		this.setDomHeigth();
		
		/*
		$('.data-item .flag em').on({
			mouseover: function(){
				$(this).parents('li').find('.ttip').stop().fadeIn();
			},
			mouseleave: function(){
				$(this).parents('li').find('.ttip').stop().fadeOut();
			}
		});
		*/
		
    };
	
	
	Timesheet.prototype.setDomHeigth = function(){
		var dupPartValue = 2;	//글자간격을 맞추기 위한 짜투리 변수
		for(var k = 0 ; k < this.itemTypeArr.length ; k++){
			var item = document.querySelector('.data-item-' + this.itemTypeArr[k]);
			var item_child = item.childNodes;
			var itemArr = new Array();
			
			//set base height
			for(var i = 0 ; i < item_child.length ; i++) itemArr[i] = (i % 2) == 0 ? 1 : 2;
			
			//var item_dup = 0;
			for(var i = 0 ; i < item_child.length ; i++){	//start node loop
				var i_length = Number((item_child[i].style.left).replace('%', ''));
				var i_text = (item_child[i].innerText).length;
				
				var iLeftTmp = i_length + i_text + dupPartValue;
				if((i_length + i_text) > 100 ) iLeftTmp = i_length - (i_text + dupPartValue);
					
				
				for(var j = 0 ; j < item_child.length ; j++){
					var itemArr_j = itemArr[j];
					var j_length = Number((item_child[j].style.left).replace('%', ''));
					var j_text = (item_child[j].innerText).length;
					
					var jLeftTmp = j_length + j_text + dupPartValue;
					if((j_length + j_text) > 100 ) jLeftTmp = j_length - (j_text + dupPartValue);
						
					//중복조건
					if( ( i < j && iLeftTmp > j_length ) 
						|| ( i > j && jLeftTmp > i_length ) 
						//|| ( i > j && (i_length + i_text) > 100 && iLeftTmp < jLeftTmp ) 
						|| ( i < j && (j_length + j_text) > 100 && (i_length + i_text) <= 100 && iLeftTmp > jLeftTmp )
						|| ( i != j && (j_length + j_text) > 100 && (i_length + i_text) > 100 )
						){
							
						
						
						if(itemArr[i] == itemArr[j]){
							//console.log("node k: " + k + ",duplicate i:" + i + ",j:" + j);
							itemArr_j++;  //up height
							
							while(1 == 1){	
								var addDup = 0;
								for(var x = 0 ; x < item_child.length ; x++){
									var x_length = Number((item_child[x].style.left).replace('%', ''));
									var x_text = (item_child[x].innerText).length;
									
									var xLeftTmp = x_length + x_text + dupPartValue;
									if( (x_length + x_text) > 100 ) xLeftTmp = x_length - (x_text + dupPartValue);
									
									if(itemArr_j == itemArr[x]){
										
										//console.log(item_child[j].innerText + "-" + item_child[x].innerText);
										
										//중복조건
										if( ( j < x && jLeftTmp > x_length ) 
											|| ( j > x && xLeftTmp > j_length ) 
											|| ( j > x && (j_length + j_text) > 100 && jLeftTmp < xLeftTmp ) 
											|| ( j < x && (x_length + x_text) > 100 && (j_length + j_text) <= 100 && jLeftTmp > xLeftTmp )
											|| ( j != x && (x_length + x_text) > 100 && (j_length + j_text) > 100 )
										){
											itemArr_j++;
											addDup++;
										}	
										
									}
								
								}	
								if(addDup == 0) break;
							
							}
							//item_dup++;
						}
					}
					itemArr[j] = itemArr_j;
					
				}
				
			}
			
			//기본 높이 계산
			var baseHeight = 0;
			if(this.itemTypeArr[k] == 3){
				baseHeight = this.maxHeightArr[0];
				
			}else if(this.itemTypeArr[k] == 4){
				baseHeight = this.maxHeightArr[2];
			}
			
			//예외처리
			if(k == 2) baseHeight = this.maxHeightArr[0];
			
			//max height 계산
			this.maxHeightArr[k] = baseHeight + (itemArr.length < 1 ? 0 : (Number(Math.max.apply(null, itemArr)) * 25) );
			//console.log(k +"node max height :" + this.maxHeightArr[k]);
			//console.log(k +"node base height :" + baseHeight);
			
			//height 계산
			for(var f = 0 ; f < item_child.length ; f++){
				item_child[f].style.height = baseHeight + (itemArr[f] * 25) + "px";
			}
			
		}
		
		//total height 계산
		var totHeight = this.maxHeightArr[3] + 25;	//경력사항 제외
		//console.log("total height:" + totHeight);
		this.container.style.height = totHeight + "px";
		
		
		if(this.maxHeightArr[1] >= 75){
			//console.log("margin-bottom:" + (Number(this.maxHeightArr[1]) + 200 ));
			//console.log("margin-bottom-now:" + ( Math.floor((Number(this.maxHeightArr[1]) * 180) / 75) - 30));
			this.container.style.marginBottom = (Number(this.maxHeightArr[1]) + 180 )  + "px";
			
			//this.container.style.marginBottom = Number(this.maxHeightArr[1]) + 200;
		} 
		
		
		
	}
	
	
	Timesheet.prototype.reverseNode = function(){
        //console.log(this.itemTypeArr.length);
		for(var i = 0 ; i < this.itemTypeArr.length ; i++){
			
			var item = document.querySelector('.data-item-' + this.itemTypeArr[i]);
			var item_child = item.childNodes;
			for(var j = 0 ; j < item_child.length ; j++){
				var iLeftTmp = Number((item_child[j].style.left).replace('%', '')) + (item_child[j].innerText).length;
				if(iLeftTmp > 100){
					item_child[j].setAttribute('class','reverse');
				}
			}
		}
		
    }


    Timesheet.prototype.appendHtml = function(el, str){
        var div = document.createElement('div');
        div.innerHTML = str;
        while(div.children.length > 0){
            el.appendChild(div.children[0]);
        }    
    }

    
    /**
     * Tip labels
     */
    Timesheet.prototype.drawTip = function() {
        var html = [];
        html.push('<div class="tip">');
        html.push('<div class="flag"><span><em>고</em>고등학교</span></div>');
        html.push('<div class="flag"><span><em>대</em>대학교</span></div>');
        html.push('<div class="flag"><span><em>석</em>석사</span></div>');
        html.push('<div class="flag"><span><em>박</em>박사</span></div>');
        html.push('<div class="flag"><span><em>아</em>아르바이트</span></div>');
        html.push('<div class="flag"><span><em>인</em>인턴</span></div>');
        html.push('<div class="flag"><span><em>직</em>직장</span></div>');
        html.push('<div class="flag"><span><em>자</em>자격증</span></div>');
        html.push('</div>');
        this.appendHtml(this.container, html.join(''));
        

    };



    /**
   * Draw section labels
   */
    Timesheet.prototype.drawSections = function() {
        var html = [];
        var dataScale = 0;
        for (var c = 0 ; c < this.yearLen ; c++) {
            var draw = false;
            if(this.jumpYear){
                if(c % 2 == 0) draw = true;
                else draw = false;
            }else {
                draw = true;
            }

            if(draw){
                dataScale++;
                html.push('<div class="section" ><span>' + (String(Number(this.year.min) + c).length == 4 ? String(Number(this.year.min) + c).substring(2) : Number(this.year.min) + c ) + '</span></div>');
            }

        }
        this.appendHtml(this.container, '<div class="scale" data-scale="'+dataScale+'"  ><div class="wrap">' + html.join('') + '</div></div>');
        
    };


    /**
     * Parse passed data
     */
    Timesheet.prototype.parse = function(data) {
		// calculating min, max year 
        var min = '';
        var max = '';
        for (var n = 0, m = data.length; n<m; n++) {
            var minTmp = data[n][0];
            var maxTmp = data[n][1];
            if(min == '') min = minTmp;
            else if(min >= minTmp) min = minTmp;

            if(max == '') max = maxTmp;
            else if(max <= maxTmp) max = maxTmp;
        }
        

        this.year.min = String(Number(min.substring(0,4)) + 1);
        this.year.max = String(Number(max.substring(0,4)) + 1);
        this.yearLen = Number(this.year.max) - Number(this.year.min) + 1;
        if(this.yearLen > this.yearMaxLen) this.jumpYear = true;

        //chart start year 
        var calculateMinYear = min.substring(0,4);
        if(this.jumpYear) calculateMinYear = Number(calculateMinYear) - 1;
        var ratioPerMonth = 100 / this.monthPart(calculateMinYear, this.year.max);
        for (var n = 0, m = data.length; n<m; n++) {
            var start = data[n][0];
            var end = data[n][1];
            var text = data[n][2];
            var areaCode = data[n][3];
            var codeDetail = data[n][4];
			var left = this.monthPart(calculateMinYear, start) * ratioPerMonth;
            var width = this.monthPart(start, end) * ratioPerMonth;
            this.data.push({start: start
						, end: end
						, areaCode: areaCode
						, codeDetail: codeDetail
						, text:text
						, left:left
						, width:width
						, ttip:this.setTtip(start, end)});

        }
        
    };

	/*
    * 툴팁 생성
    */
    Timesheet.prototype.setTtip = function(startDt, endDt){
        var msg = "";
		if(startDt != "" && endDt != ""){
			var totalMonth = this.monthPart(startDt, endDt);
			var totalYear = Math.floor(totalMonth / 12);
			var leftMonth = totalMonth % 12;
		
			msg = (totalYear == 0 ? '' : totalYear + "년");
			msg = msg + (leftMonth == 0 ? '' : leftMonth + "개월");
			msg = msg + ":" + startDt.replace("-","/") + "~" + endDt.replace("-","/");
		}
		return msg;

    };
	

    /*
    * 학력사항
    */
    Timesheet.prototype.studyChart = function(){
        var html = [];
        for (var n = 0, m = this.data.length; n<m; n++) {    
            var vo = this.data[n];
            if(vo.areaCode == "SCHOOL"){
                var tag = vo.codeDetail;
                var text = vo.text + "(" + vo.ttip + ")";
                var left = vo.left;
                var width = vo.width;
				var ttip = vo.ttip;
                var iconTag = '';
                
                if(tag == "SC001") iconTag = '고';
                else if(tag == "SC002") iconTag = '대';
                else if(tag == "SC003") iconTag = '대';
                else if(tag == "SC004") iconTag = '석';
                else if(tag == "SC005") iconTag = '박';
                else iconTag = '검';

                html.push('<li style="left:'+left+'%;width:'+width+'%;" >');
                html.push('<div class="flag"><span><em>'+iconTag+'</em>'+text+'</span></div>');
                html.push('<div class="mask"></div>');
				//html.push('<div class="ttip"> '+ttip+'</div>');
                html.push('</li>');
            }
        }    
        var ul = '<ul class="data-item data-item-1">' + html.join('') + '</ul>';
        this.chartHtml = this.chartHtml + ul;

    };


    /*
    * 경력사항
    */
    Timesheet.prototype.workChart = function(){
        var html = [];
        for (var n = 0, m = this.data.length; n<m; n++) {    
            var vo = this.data[n];
            if(vo.areaCode == "CAREER"){
                var tag = vo.codeDetail;
                var text = vo.text + "(" + vo.ttip + ")";
                var left = vo.left;
                var width = vo.width;
                var iconTag = '';
				var ttip = vo.ttip;

                if(tag == "SC003") iconTag = '아';
                else if(tag == "SC004") iconTag = '인';
                else iconTag = '직';

                html.push('<li style="left:'+left+'%;width:'+width+'%;" >');
                html.push('<div class="flag"><span><em>'+iconTag+'</em>'+text+'</span></div>');
                html.push('<div class="mask"></div>');
				//html.push('<div class="ttip"> '+ttip+'</div>');
                html.push('</li>');

            }
        }    
        var ul = '<ul class="data-item data-item-2">' + html.join('') + '</ul>';
        this.chartHtml = this.chartHtml + ul;

    };

    /*
    * 자격증
    */
    Timesheet.prototype.certChart = function(){
        var html = [];
        for (var n = 0, m = this.data.length; n<m; n++) {    
            var vo = this.data[n];
            if(vo.areaCode == "CERT"){
                var tag = vo.codeDetail;
                var text = vo.text;
                var left = vo.left;
                var width = vo.width;
                var iconTag = '자';

                html.push('<li style="left:'+left+'%;width:'+width+'%;" >');
                html.push('<div class="flag"><span><em>'+iconTag+'</em>'+text+'</span></div>');
                html.push('<div class="mask"></div>');
                html.push('</li>');

            }
        }    
        var ul = '<ul class="data-item data-item-3">' + html.join('') + '</ul>';
        this.chartHtml = this.chartHtml + ul;
    }


   /*
    * 특기사항
    */
    Timesheet.prototype.iconChart = function(){
        var html = [];
        for (var n = 0, m = this.data.length; n<m; n++) {    
            var vo = this.data[n];
            if(vo.areaCode == "OTHER"){
                var tag = vo.codeDetail;
                var text = vo.text;
                var left = vo.left;
                var width = vo.width;
                var classTag = '';
                var iconTag = '';

                if(tag == "SC002"){ //교육이수
                    iconTag = '<img src="http://img.eduwill.net/resources/recruit/dev/manage/images/icon-timechart-1.png">';
                    classTag = 'typeicon sc001';

                } else if(tag == "SC001") {    //동아리
                    iconTag = '<img src="http://img.eduwill.net/resources/recruit/dev/manage/images/icon-timechart-2.png">';
                    classTag = 'typeicon sc002';

                }else if(tag == "SC005"){    //봉사
                    iconTag = '<img src="http://img.eduwill.net/resources/recruit/dev/manage/images/icon-timechart-3.png">';
                    classTag = 'typeicon sc003';

                } else if(tag == "SC004") {  //수상
                    iconTag = '<img src="http://img.eduwill.net/resources/recruit/dev/manage/images/icon-timechart-4.png">';
                    classTag = 'typeicon sc004';

                } else if(tag == "SC003") {  //연수
                    iconTag = '<img src="http://img.eduwill.net/resources/recruit/dev/manage/images/icon-timechart-5.png">';
                    classTag = 'typeicon sc005';

                }    
                
                html.push('<li style="left:'+left+'%;width:'+width+'%;" class="'+classTag+'" >');
                html.push('<div class="flag"><span><em>'+iconTag+'</em>'+text+'</span></div>');
                html.push('<div class="mask"></div>');
                html.push('</li>');

            }
        }    
        var ul = '<ul class="data-item data-item-4">' + html.join('') + '</ul>';
        this.chartHtml = this.chartHtml + ul;
    }
	
	


    Timesheet.prototype.monthPart = function(startDay, endDay){
        var result = 0;
        var yy1 = 0;
        var mm1 = 0;
        var yy2 = 0;
        var mm2 = 0;
        startDay = String(startDay);
        endDay = String(endDay);
        if(startDay.length == 4){
            yy1 = Number(startDay);
            mm1 = 1;
        }else{
            var startArr = startDay.split('-');   
            yy1 = Number(startArr[0]);
            mm1 = Number(startArr[1]);
        }

        if(endDay.length == 4){
            yy2 = Number(endDay);
            mm2 = 1;
        }else{
            var endArr = endDay.split('-');   
            yy2 = Number(endArr[0]);
            mm2 = Number(endArr[1]);
        }
        result = ((yy2 - yy1) * 12) - (mm1 -1) + (mm2 -1) + 1;
        return result;

    };

   
    
  
  
    window.Timesheet = Timesheet;
  })();