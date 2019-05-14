$(function() {
	$("#cityBtn").click(function() {
		var formCity = $("#cityForm").serialize();

		$.ajax({
			url : "cityinsert",// controller와 연결
			type : "post",
			data : formCity,// 3행 formCity와 동일

			success : function(data) {
				if (data.code == 200)
					alert("도시 입력 성공");

				else
					alert("도시 입력 실패");
			},
		});
	});
});