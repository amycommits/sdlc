$(document).ready(function(){
	$("#addRowBtn").click(function(){
		var loopTimes = $("#addRowNumber").val();
		for (var i=0; i < loopTimes; i++){
			var rowNumber=$("table tr").size();
			$("table > tbody:last").append('<tr><td><input type=\"text\" name=\"test_case[test_case_steps_attributes]['+rowNumber+'][expected_result]\" id=\"test_case_test_case_steps_attributes_'+rowNumber+'_expected_result\"></td>'
											+'<td><input type=\"text\" value=\"\" name=\"test_case[test_case_steps_attributes]['+rowNumber+'][expected_result]\" id=\"test_case_test_case_steps_attributes_'+rowNumber+'_expected_result\"></tr>'	
											+'<input type=\"text\" value="" name="test_case[test_case_steps_attributes][1][expected_result]" id="test_case_test_case_steps_attributes_1_expected_result">');
		}
	});
});