$(function() {
	
	// 공백 검사
	function emptyCheck() {
		var email = $("#email").val(); // 이메일 입력  input 태그 ID.
		var pw = $("#password").val(); // 비밀번호 입력 input 태그 ID.
		
		/* 공백 검사 */
		if (email == "") {
			alert("이메일을 입력하세요.")
			$("#email").focus();
			return false;
		
		} 
		if (pw == "") {
			alert("비밀번호를 입력하세요.")
			$("#password").focus();
			return false;
			
		} 
		
	} // emptyCheck()
	
	// 로그인
	$("#loginBtn").click(function() {
		
		var email = $("#email").val();
		var password = $("#password").val();
		
		// 공백이 있으면 return
		if (emptyCheck() == false) {
			return;
			/* 공백 검사 */
			emptyCheck();
		
		}
		
		$.ajax({
			url: "login",
			type: "post",
			data: {email, password},
			
			success: function(data) {
				
				if (data.code == 200) {
					alert("로그인 성공!");
					
					// 레이어 닫기
					$('#login_layerPopup', parent.document).hide();
					$('#layerPopup', parent.document).hide();
					
					window.open("home", "_parent");
				
				} else if (data.code == 201) {
					alert("password가 맞지 않습니다. 다시 확인해 주세요.");
				
				} else if (data.code == 202) {
					alert("email이 맞지 않습니다. 다시 확인해 주세요.");
				}
				
			}, // success
			error: function(error) {
				alert("로그인 시스템 에러!");
			} // error
			
		}); // ajax
	}); // $("#loginBtn").click
	
});