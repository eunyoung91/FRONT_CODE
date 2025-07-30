let listData = JSON.parse(JSON.stringify(data));
let setHistory = "";

function listAll(){
	data.forEach((a,i)=>{
		$(`#${data[i].code}_list li`).remove( '.no_result' );
		history_data = `<li class="label ${data[i].label}"><a href="${data[i].url}" target="_blank">${data[i].title}</a><span>${data[i].date.slice(0,4)}-${data[i].date.slice(4,6)}-${data[i].date.slice(-2)}</span></a></li>`
		$(`#${data[i].code}_list`).append(history_data);
	});
}
listAll();

function listView(){
	// $('.cont_block').not('.common').html('');
	let default_txt = `<li class="no_result">NO DATA</li>`;
	$('.cont_block').not('.common').html(default_txt);
			
	setHistory.forEach((set,i)=>{
		$(`#${setHistory[i].code}_list li`).remove( '.no_result' );
		history_data = `<li class="label ${setHistory[i].label}"><a href="${setHistory[i].url}" target="_blank">${setHistory[i].title}</a><span>${setHistory[i].date.slice(0,4)}-${setHistory[i].date.slice(4,6)}-${setHistory[i].date.slice(-2)}</span></a></li>`
		$(`#${setHistory[i].code}_list`).append(history_data);
	});
}

$('#sel_month').on("change", function(){
	let click_month = $(this).val();

	if(click_month == "all") {
		listAll();
	} else {
		setHistory = data.filter(function(set){
			return set.month == click_month;
		});
			
		listView();
	} 
	
});