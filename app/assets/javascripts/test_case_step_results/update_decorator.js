$(document).change(function(){
	
		//$(document).find(".decorator_overview").remove();

	$(".testing_state").on("click",function(){
		$current_tstamp=new Date();
		$(this).parent().parent().next().find(".decorator_overview").empty();
		$(this).parent().parent().next().find(".result_time_ago").append($current_tstamp.toString());
	});		
				/*$.ajax(this.href, { 
				success: function(data){

				}, 
				error: function(){
					alert("error");
				}
			});
		
		*/
});
		
		
