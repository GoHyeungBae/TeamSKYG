$(function(){
	
	$("#tourBtn").click(function() {
		
		$.ajax({
			url: "tour",
			type: "post",
			data: $("#atour").serialize(),
			
			success: function(data) {
				if (data.code == 200){
					alert("관광지 등록 성공");
					location.href = data.url; 
					
				} else if (data.code == 201) {
					alert("관광지 등록 실패");
				}
				
				
			}, //success
			error: function(error){
				alert("관광지등록 시스템 에러 !");
			}
		
		});
	
	});//input
	
});//function