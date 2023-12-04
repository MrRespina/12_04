<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>index2.jsp</title>
<script type="text/javascript" src="resources/jQuery.js"></script>
<script type="text/javascript">
	$(function() {

		// AJAX(Asynchronous JavaScript And Xml)
		//		JavaScript를 통해서 서버에 데이터를 요청하는 것.(비 동기식)

		// id가 btn인 것을 클릭하면 alert('버튼 눌렀네?')

		$('#btn').click(function() {
			//alert('버튼!');
			$.ajax({ // 함수 없음, 객체형이다.
				url : "fruit.getXML", // url 속성 : xml 만든 Controller의 value 값
				success : function(e) {
					// alert(e);	// [object XMLDocument] 가 나오면 성공.
					//	xml의 fruit라는 DOM 객체 하나 부를 때마다 나오는 콜백함수
					$(e).find('fruit').each(function(i, f) {
						let f_name = $(f).find('f_name').text();
						let f_price = $(f).find('f_price').text();
						let f_location = $(f).find('f_location').text();

					});
				}
			});
		});

		$.ajax({
			url : "fruit.getXML",
			success : function(e) {

				let th1 = $('<th></th>').text('과일 이름');
				let th2 = $('<th></th>').text('가격');
				let th3 = $('<th></th>').text('원산지');

				let trr = $('<tr></tr>').append(th1, th2, th3);
				$('#fruitTbl').prepend(trr);

				$(e).find('fruit').each(
						function(i, f) {
							let f_name = $(f).find('f_name').text();
							let f_price = $(f).find('f_price').text();
							let f_location = $(f).find('f_location').text();

							let nameTd = $('<td></td>').text(f_name);
							let priceTd = $('<td></td>').text(f_price);
							let locationTd = $('<td></td>').text(f_location);

							let tr = $('<tr></tr>').append(nameTd, priceTd,
									locationTd);

							$('#fruitTbl').append(tr);

						});
			}
		});

		$('#searchBtn').click(function() {
			let frVal  = $('#fruitInput').val();
			$.ajax({
				url : "fruit.searchXML",
				data : {f_price : frVal},			//	? 뒤의 변수명 = 값 부분을 따로 떼서 적어줌
				success : function(ee) {
					$('#fruitTbl').empty();
					
					let th1 = $('<th></th>').text('과일 이름');
					let th2 = $('<th></th>').text('가격');
					let th3 = $('<th></th>').text('원산지');

					let trr = $('<tr></tr>').append(th1, th2, th3);
					$('#fruitTbl').prepend(trr);
					
					$(ee).find('fruit').each(
				
							function(i, f) {
								let f_name = $(f).find('f_name').text();
								let f_price = $(f).find('f_price').text();
								let f_location = $(f).find('f_location').text();

								let nameTd = $('<td></td>').text(f_name);
								let priceTd = $('<td></td>').text(f_price);
								let locationTd = $('<td></td>').text(f_location);

								let tr = $('<tr></tr>').append(nameTd, priceTd,
										locationTd);

								$('#fruitTbl').append(tr);

							});

				}
			});
		});
		
		$('#fruitInput').keyup(function (e){
			if(e.keyCode == 13){		// ASCII 값 : Enter
				$('#searchBtn').trigger('click');
				
			}
		});
		
	});
</script>
</head>
<body>
	<h1>
		<a href="fruit.getXML">Fruit XML 보러가기</a>
	</h1>
	<button id="btn">버튼</button>
	<input id="fruitInput">
	<button id="searchBtn">검색</button>
	<table id="fruitTbl" border="1" align="center"
		style="margin-top: 20px;">
	</table>
</body>
</html>