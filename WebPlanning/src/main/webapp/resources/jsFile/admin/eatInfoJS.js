$(function() {

	$("#eatInfoBtn").click(function(){
		var InfoID = $("#eatInfoF").serialize();
		
		$.ajax({
				url: "eatjoin",
				type: "post",
				data : InfoID,
				
				success : function(data){
					if(data.code == 200){
						alert("식당 정보등록 성공!")
					}else
						alert("식당 정보등록 실패!")
					
				}//else
				
		});
		
	});//eatInfosumit

});