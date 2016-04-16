$(document).ready(function(){
	$(".testing_state .test_pass").on("click",function(){
		$(this).parent().parent().submit();
	});
});