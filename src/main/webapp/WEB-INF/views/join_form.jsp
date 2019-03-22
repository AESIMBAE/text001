<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<link rel="stylesheet" href="http://code.jquery.com/ui/1.8.18/themes/base/jquery-ui.css" type="text/css" />
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
<script src="http://code.jquery.com/ui/1.8.18/jquery-ui.min.js"></script>

<html>
<head>
<style>
#title {
	text-align: center;
}
</style>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="resources/css/jquery-gallery.css" type="text/css">
<link rel="stylesheet" href="resources/css/p_join.css" type="text/css">
<title>회원가입 화면</title>


<script>
	var region0 = new Array("--선택--", "");
	var region1 = new Array("강남구", "강동구", "강북구", "강서구", "관악구", "광진구", "구로구",
			"금천구", "노원구", "도봉구", "동대문구", "동작구", "마포구", "서대문구", "성동구", "서초구",
			"성북구", "송파구", "양천구", "영등포구", "용산구", "은평구", "종로구", "중랑구", "중구");
	var region2 = new Array("강서구", "금정구", "기장군", "남구", "동구", "동래구", "부산진구",
			"북구", "사상구", "사하구", "서구", "수영구", "연제구", "영도구", "중구", "해운대구");
	var region3 = new Array("남구", "달서구", "달성군", "동구", "북구", "서구", "수성구", "중구");
	var region4 = new Array("강화군", "계양구", "남동구", "동구", "미추홀구", "부평구", "서구",
			"연수구", "옹진군", "중구");
	var region5 = new Array("광산구", "남구", "동구", "북구", "서구");
	var region6 = new Array("대덕구", "동구", "서구", "유성구", "중구");
	var region7 = new Array("남구", "동구", "북구", "울주군", "중구");
	var region8 = new Array("세종시");
	var region9 = new Array("가평군", "고양시 덕양구", "고양시 일산동구", "고양시 일산서구", "과천시",
			"광명시", "광주시", "구리시", "군포시", "김포시", "남양주시", "동두천시", "부천시",
			"성남시 분당구", "성남시 수정구", "성남시 중원구", "수원시 권선구", "수원시 영통구", "수원시 장안구",
			"수원시 팔달구", "시흥시", "안산시 단원구", "안산시 상록구", "안성시", "안양시 동안구",
			"안양시 만안구", "양주시", "양평군", "여주시", "연천군", "오산시", "용인시 기흥구", "용인시 수지구",
			"용인시 처인구", "의왕시", "의정부시", "이천시", "파주시", "평택시", "포천시", "하남시", "화성시");
	var region10 = new Array("강릉시", "고성군", "동해시", "삼척시", "속초시", "양구군", "양양군",
			"영월군", "원주시", "인제군", "정선군", "철원군", "춘천시", "태백시", "평창군", "홍천군",
			"화천군", "횡성군");
	var region11 = new Array("괴산군", "단양군", "보은군", "영동군", "옥천군", "제천시", "증평군",
			"증천군", "청주시 상당구", "청주시 서원구", "청주시 청원구", "청주시 흥덕구", "충주시");
	var region12 = new Array("계룡시", "공주시", "금산군", "논산시", "당진시", "보령시", "부여군",
			"서산시", "서천군", "아산시", "예산군", "천안시 동남구", "천안시 서북구", "청양군", "태안군",
			"홍성군");
	var region13 = new Array("고창군", "군산시", "김제시", "남원시", "무주군", "부안군", "순창군",
			"완주군", "익산시", "임실군", "장수군", "전주시 덕진구", "전주시 완산구", "정읍시", "진안군");
	var region14 = new Array("강진군", "고흥군", "곡성군", "광양시", "구례군", "나주시", "담양군",
			"목포시", "무안군", "보성군", "순천시", "신안군", "여수시", "영광군", "영암군", "완도군",
			"장성군", "장흥군", "진도군", "함평군", "해남군", "화순군");
	var region15 = new Array("경산시", "경주시", "고령군", "구미시", "군위군", "김천시", "문경시",
			"봉화군", "상주시", "성주군", "안동시", "영덕군", "영양군", "영주시", "영천시", "예천군",
			"울릉군", "울진군", "의성군", "청도군", "청송군", "칠곡군", "포항시 남구", "포항시 북구");
	var region16 = new Array("거제시", "거창군", "고성군", "김해시", "남해군", "밀양시", "사천시",
			"산청군", "양산시", "의령군", "진주시", "창녕군", "창원시 마산 합포구", "창원시 마산 회원군",
			"창원시 성산구", "창원시 의창구", "창원시 진해구", "통영시", "하동군", "함안군", "함양군", "합천군");
	var region17 = new Array("서귀포시", "제주시");
	function regionchange(item) {
		var temp, i = 0, j = 0;
		var ccount, cselect;

		temp = document.userInfo.region;

		for (i = (temp.options.length - 1); i > 0; i--) {
			temp.options[i] = null;
		}
		eval('ccount = region' + item + '.length');
		for (j = 0; j < ccount; j++) {
			eval('cselect = region' + item + '[' + j + '];');
			temp.options[j] = new Option(cselect, cselect);
		}
		temp.options[0].selected = true;
		return true;
	}
</script>
<script type="text/javascript">
	$(function() {
		$("#birthDatepicker").datepicker(
				{
					dataFormat : 'yy-mm-dd',
					changeMonth : true,
					showButtonPanel : true,
					showMonthAfterYear : true,
					closeText : '닫기',
					monthNamesShort : [ '1월', '2월', '3월', '4월', '5월', '6월',
							'7월', '8월', '9월', '10월', '11월', '12월' ],
					changeYear : true,
					nextText : '다음 달',
					prevText : '이전 달',
					yearRange : 'c-100:c'
				});
	});
</script>
<script type="text/javascript">
	function idCheck() {
		if (!document.userInfo.jfId.value) {
			document.getElementById('idCheck').innerHTML = '아이디를 입력해주세요';
			userInfo.jfId.focus()
			return false;
		}
		if (document.userInfo.jfId.value.indexOf(" ") >= 0) {
			document.getElementById('idCheck').innerHTML = '아이디에 공백을 사용할 수 없습니다.';
			document.userInfo.jfId.value.focus()
			document.userInfo.jfId.value.select()
			return false;
		}
		if (document.userInfo.jfId.value.length<4 || document.userInfo.jfId.value.length>12) {
			document.getElementById('idCheck').innerHTML = '아이디를 4~12자까지 입력해주세요.';
			document.userInfo.jfId.value.focus()
			document.userInfo.jfId.value.select()
			return false;
		}
		for (i = 0; i < document.userInfo.jfId.value.length; i++) {
			ch = document.userInfo.jfId.value.charAt(i)
			if (!(ch >= '0' && ch <= '9') && !(ch >= 'a' && ch <= 'z')
					&& !(ch >= 'A' && ch <= 'Z')) {
				document.getElementById('idCheck').innerHTML = '아이디는 대소문자, 숫자만 입력가능합니다.';
				document.userInfo.jfId.value.focus()
				document.userInfo.jfId.value.select()
				return false;
			}
		}
		if (document.userInfo.jfId.value) {
			document.getElementById('idCheck').innerHTML = '';
		}
	}

	function pwCheck() {
		/* if (!/^[a-zA-Z0-9!@#$%^&*()?_~]{6,15}$/.test(document
		      .getElementById('jfPassword').value)) {
		   document.getElementById('passCheck').innerHTML = '비밀번호는 숫자, 영문, 특수문자 조합으로 6~15자리를 사용해야 합니다.';
		   return false;
		}
		var chk = 0;
		if ((document.getElementById('jfPassword').value).search(/[0-9]/g) != -1)
		   chk++;
		if ((document.getElementById('jfPassword').value).search(/[a-z]/ig) != -1)
		   chk++;
		if ((document.getElementById('jfPassword').value)
		      .search(/[!@#$%^&*()?_~]/g) != -1)
		   chk++;
		if (chk < 2) {
		   document.getElementById('passCheck').innerHTML = '비밀번호는 숫자, 영문, 특수문자를 두가지이상 혼용하여야 합니다.';
		   return false;
		}*/
		if (/(\w)\1\1\1/.test(document.getElementById('jfPassword').value)
				|| isContinuedValue(document.getElementById('jfPassword').value)) {
			document.getElementById('passCheck').innerHTML = '비밀번호에 4자 이상의 연속 또는 반복 문자 및 숫자를 사용하실 수 없습니다.';
			return false;
		}
		/* if ((document.getElementById('jfPassword').value).search(document
		      .getElementById('jfId').value) > -1) {
		   document.getElementById('passCheck').innerHTML = 'ID가 포함된 비밀번호는 사용하실 수 없습니다.';
		   return false;
		} */
		if (document.userInfo.jfPassword.value) {
			document.getElementById('passCheck').innerHTML = '';
		}

	}
	function pwcheckCheck() {
		if (document.userInfo.jfPassword.value != document.userInfo.jfPasswordcheck.value) {
			document.getElementById('passcheckCheck').innerHTML = 'X 비밀번호를 확인해주세요';
			document.userInfo.jfPasswordcheck.value.focus()
			document.userInfo.jfPasswordcheck.value.select()
			return false;
		}
		if (document.userInfo.jfPassword.value == document.userInfo.jfPasswordcheck.value) {
			document.getElementById('passcheckCheck').innerHTML = 'O 비밀번호가 일치합니다';
		}
	}
	function nameCheck() {
		if (!document.userInfo.jfName.value) {
			document.getElementById('nameCheck').innerHTML = '이름을 입력해주세요';
			return false;
		}
		if (!/^[가-힣]{2,8}$/.test(document.getElementById('jfName').value)) {
			document.getElementById('nameCheck').innerHTML = '이름은 한글로만 입력 가능합니다.';
			return false;
		}
		if (document.userInfo.jfName.value) {
			document.getElementById('nameCheck').innerHTML = '';
		}
	}
	function birthCheck() {
		if (!document.userInfo.jfBirthday.value) {
			document.getElementById('birthCheck').innerHTML = '생일을 입력해주세요';
			return false;
		}
		if (document.userInfo.jfBirthday.value) {
			document.getElementById('birthCheck').innerHTML = '';
		}
	}
	function phoneCheck() {
		if (!document.userInfo.jfPhone.value) {
			document.getElementById('phoneCheck').innerHTML = '핸드폰번호를 입력해주세요';
			return false;
		}
		if (!/^[0-9]{11}$/.test(document.getElementById('jfPhone').value)) {
			document.getElementById('phoneCheck').innerHTML = '핸드폰번호를 확인해주세요.';
			return false;
		}
		if (document.userInfo.jfPhone.value) {
			document.getElementById('phoneCheck').innerHTML = '';
		}
	}
	/* function addressCheck(){
	   if (!document.userInfo.jfAddress.value) {
	      document.getElementById('addressCheck').innerHTML = '주소를 입력해주세요';
	      return false;
	   }
	   if (document.userInfo.jfAddress.value) {
	      document.getElementById('addressCheck').innerHTML = '';
	   }
	} */

	function goLogin_view() {
		location.href = "login_form";
	}
</script>
</head>
<%@include file="jspcss/header.jsp"%>

<body>
	<main>
	<div id="title">
		<h2>회원가입</h2>
	</div>
	<hr />
	
	<form name="userInfo" action="join_result" method="post" onsubmit="return checkValue()">
	
	<!-- 회원가입정보입력-->
	<div id="login-input">
		
		<img src="resources/image/img/keys-hole.png" width="40" height="40"/><br><br><br>
		<!--아이디-->
		<input id="jfId" type="text" name="jfId" placeholder="아이디" maxlength="20" onblur="idCheck()">
		 <div><p id="idCheck" style="color: red;" /> </div>
		
		<!-- 비밀번호 -->
		<input id="jfPassword" type="password" name="jfPassword" placeholder="비밀번호" maxlength="15" onblur="pwCheck()">
       	 <br><br>      
        
        <!-- 비밀번호 확인-->
		<input id="jfPasswordcheck" type="password" name="jfPasswordcheck" placeholder="비밀번호 확인 " maxlength="15" onblur="pwcheckCheck()">
       	 <div><p id="passcheckCheck" style="color: green;" /></div>    
       	 
       	<!--이름-->
		<input id="jfName" type="text" name="jfName" placeholder="이름" maxlength="40" onblur="nameCheck()">
		 <div><p id="nameCheck" style="color: red;" /></div>
		 
		<!-- 생일 -->
		<input type="text" id="birthDatepicker" name="jfBirthday" placeholder="생일" onblur="birthCheck()">
        <div><p id="birthCheck" style="color: red;" /></div>
		
		<!-- 성별 -->
		<input type="radio" name="jfGender" value="남">남  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<input type="radio" name="jfGender" value="여">여
		<br><br>
		
		<!-- 휴대폰 -->
		<input id="jfPhone" type="text" name="jfPhone" placeholder="휴대폰 번호" onblur="phoneCheck()" />
		 <div><p id="phoneCheck" style="color: red;" /></div>
		 
		 <!-- 주소 -->
		 <select name="city" onChange="javascript:regionchange(document.userInfo.city.options.selectedIndex);">
			<option selected value="">-주소지 선택-</option>
			<option value=서울특별시>서울특별시</option>
							<option value=대구광역시>대구광역시</option>
							<option value=부산광역시>부산광역시</option>
							<option value=인천광역시>인천광역시</option>
							<option value=광주광역시>광주광역시</option>
							<option value=대전광역시>대전광역시</option>
							<option value=울산광역시>울산광역시</option>
							<option value=세종특별자치시>세종특별자치시</option>
							<option value=경기도>경기도</option>
							<option value=강원도>강원도</option>
							<option value=총청북도>총청북도</option>
							<option value=충청남도>충청남도</option>
							<option value=전라북도>전라북도</option>
							<option value=전라남도>전라남도</option>
							<option value=경상북도>경상북도</option>
							<option value=경상남도>경상남도</option>
							<option value=제주특별자치도>제주특별자치도</option>
							</select>
							
							
							<select name=region size=1>
							<option selected value="">-선택-</option>
							<option value=""></option>
					</select>
					<br><br>
							
							
				<!-- emial -->
				<input id="jfEmail" type="email" name="jfEmail" placeholder="e-mail">
				<br><br>
			
			<input type="submit" value="가입" /> <input type="button" value="취소"
				onclick="goLogin_view()">
				</div>
		</form>
	</main>

	<%@include file="jspcss/footer.jsp"%>
</body>
</html>






