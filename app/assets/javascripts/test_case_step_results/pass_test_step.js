$(document).ready(function(){
	$(".testing_state .test_pass").on("click",function(){
		$(this).closest("form").submit();
	});
});