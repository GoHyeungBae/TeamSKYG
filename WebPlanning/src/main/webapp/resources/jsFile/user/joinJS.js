// 이메일 체크여부 확인 (중복일 경우 = 0 , 중복이 아닐경우 = 1 )
var flag = 0;

// 약관 동의 (동의 = 1, 동의 하지 않음 = 0) 
var agree = 0;

//email 정규식
var emailRegex = /([\w-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([\w-]+\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)$/;

//password 정규식 (영문자 + 숫자 + 특수문자)
var passwordRegex = /^(?=.*[a-zA-Z])(?=.*[!@#$%^*+=-])(?=.*[0-9]).{6,16}$/;

$(function() {
	
	// 이메일 유효성 검사
	$("#email").focusout(function() {
		
		var email = $("#email").val();
		
		// 이메일 정규식 검사
		if (!emailRegex.test(email) && email != "" ) {
			alert("잘못된 형식의 이메일 주소입니다.");
			$("#email").css("background-color", "#FFCECE");
			flag = 0;
		
		} else {
			// 이메일 중복 확인
			$.ajax({
				url: "overlabEmail",
				type: "post",
				data: {email:email},
				
				success: function(data) {
					
					if (data.code == 201) {
						alert("이미 가입된 이메일 입니다.");
						$("#email").css("background-color", "#FFCECE");
						flag = 0;
							
					} else if (data.code == 200 && email != "") {
						alert("사용 가능한 이메일 입니다.");
						$("#email").css("background-color", "#B0F6AC");
						flag = 1;
						
					} else if (flag == 1 && email == "") {
						alert("이메일을 입력하세요.");
						$("#email").css("background-color", "#FFCECE");
						flag = 0;
					}
					
				}, //success
				error: function(error) {
					alert("email 중복확인 시스템 에러!");
				} // error
				
			}); // ajax
			
			return false;
		} // else
		
	}); // $("#email").focusout
	
	// 비밀번호 유효성 검사
	$("#password").focusout(function() {
		
		var password = $("#password").val();
		
		// 이메일 정규식 검사
		if (!passwordRegex.test(password) && password != "" ) {
			alert("비밀번호가 잘못된 형식으로 입력되었습니다.");
			$("#password").css("background-color", "#FFCECE");
			
		} else if (passwordRegex.test(password) && password != "") {
			alert("비밀번호 유효성 검사 통과."); // 개발중 확인 메시지.
			$("#password").css("background-color", "#B0F6AC");
		}
		
	}); // $("#password").focusout

	// 비밀번호 동일성 확인
	$("#pwCheck").keyup(function() {
		
		var password = $("#password").val();
		var pwCK = $("#pwCheck").val(); // 비밀번호 확인 입력 input 태그 ID.
		
		if (password == pwCK) {
			$("#pw_checktext").text("비밀번호가 일치 합니다.").css("color","green");
			$("#pwCheck").css("border","1px solid");
		
		} else if (pwCK == "") {
			$("#pw_checktext").css("display","none");
			// pwCK가 공백일 경우 text가 안보이게 한다.
			
		}
		else {
			$("#pw_checktext").text("비밀번호가 일치 하지 않습니다.").css("color","red");
			$("#pwCheck").css("border","2px solid red");
		}
		
	}); // $("#pwCheck").keyup
	
	// 공백 검사
	function emptyCheck() {
		
		var email = $("#email").val(); // 이메일 입력  input 태그 ID.
		var pw = $("#password").val(); // 비밀번호 입력 input 태그 ID.
		var pwCK = $("#pwCheck").val(); // 비밀번호 확인 입력 input 태그 ID.
		var name = $("input[name=name]").val(); // 이름 입력 input 태그 ID.
		var birth = $("input[name=birth]").val(); // 생년월일 입력 input 태그 ID.
		var gender = $("input[name=gender]").is(":checked"); // 성별 선택 radio 태그 NAME.
	
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
		if (pwCK == "" || pw != pwCK) {
			alert("비밀번호를 확인해 주세요.")
			$("#pwCheck").focus();
			return false;
			
		}
		if (name == "") {
			alert("이름을 입력하세요.")
			$("input[name=name]").focus();
			return false;
			
		} 
		if (birth == "") {
			alert("생년월일을 입력하세요.")
			$("#input[name=birth]").focus();
			return false;
			
		} 
		if (gender == "") {
			alert("성별을 선택해 주세요.")
			$("#input[name=gender]").focus();
			return false;
			
		}
		
	} // emptyCheck()
	
	// 약관 동의 (동의 = 1, 동의 하지 않음 = 0) 
	$("input[name=agree]").click(function() {
		
		var chk = $("input[name=agree]").is(":checked");
		
		if (chk == true ) {
			agree = 1;
		
		} else {
			agree = 0;
		}
		
	});
	
	// 회원가입 버튼 클릭 시, 이벤트 발생.
	$("#joinBtn").click(function() {
		
		var password = $("#password").val();
		var pwCK = $("#pwCheck").val();
			
		// 공백이 있으면 return
		if (emptyCheck() == false) {
			return;
			/* 공백 검사 */
			emptyCheck();
		
		} 
		/* 공백이 없을 시, email 중복 확인
		 * flag == 0 이면 이메일 중복으로 return
		 */
		else if (flag == 0){
			alert("이메일을 확인해 주세요!")
			return;
			
		} 
		// 비밀번호가 정규식 검사에 적합하지 않으면 return
		else if (!passwordRegex.test(password) ) {
			alert("비밀번호를 확인해 주세요.");
			return;
		} 
		// 약관 동의를 하지 않을 시, return
		else if (agree == 0) {
			alert("이용양관 및 개인정보 보호정책에 동의해 주세요.");
			return;
		}
		
		/* 회원가입 처리 */
		var formID = $("#joinform").serialize();
		
		$.ajax({
			url: "join",
			type: "post",
			data: formID,
			
			success: function(data) {
				
				if (data.code == 200) {
					alert("회원가입 성공!");
					
					// 레이어 닫기
					$('#join_layerPopup', parent.document).hide();
					$('#layerPopup', parent.document).hide();
				
				} else if (data.code == 201) {
					alert("회원가입 실패!");
				}
				
			}, //success
			error: function(error) {
				alert("회원등록 시스템 에러!");
				
			} // error
			
		}); // ajax
	}); // $("#joinBtn").click
	
});