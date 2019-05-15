$(function(){
	
	$("#roomBtn").click(function() {
		$.ajax({
			url: "room",
			type: "post",
			data: $("#aroom").serialize(),
			
			success: function(data) {
				if (data.code == 200){
					alert("숙소업체 등록 성공");
					location.href = data.url; 
				} else {
					alert("숙소업체 등록 실패");
				}
				
				
			}, //success
			error: function(error){
				alert("숙소 시스템 에러 !");
			}
		
		});
	
	});//input
	
});//function