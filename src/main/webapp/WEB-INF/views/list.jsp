<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<link href="resources/css/style.css" rel="stylesheet" type="text/css">
<script src="//code.jquery.com/jquery-3.3.1.min.js"></script>

<script>

</script>
<script>
	function down() {
		var checkArr = new Array();
		$("input[class='chBox']:checked").each(function() {
			checkArr.push($(this).attr("data-no"));
		})
		//console.log(checkArr);
		$("a#download").attr(
				{
					"download" : "http://localhost:8080/interpia/update?no="
							+ checkArr + ".jsp",
					"href" : "http://localhost:8080/interpia/update?no="
							+ checkArr

				}).get(0).click();
	}
</script>
<script>
	$(document).ready(function() {
		$('.check_all').click(function() {
			$('.chBox').prop('checked', this.checked);
		});
	});
</script>
<script>
	function list(page) {
		location.href = "list?curPage=" + page
				+ "&searchOption-${map.searchOption}"
				+ "&keyword=${map.keyword}" + "&keyword2=${map.keyword2}"
				+ "&keyword3=${map.keyword3}" + "&keyword4=${map.keyword4}";
	}
</script>

<script>
	function update_chk() {
		var checkArr = new Array();
		$("input[class='chBox']:checked").each(function() {
			checkArr.push($(this).attr("data-no"));
		})
		location.href = "update?no=" + checkArr;
	}
</script>
<script>
	$(document).ready(function() {
		$(".selectDelete_btn").click(function() {
			var confirm_val = confirm("정말 삭제하시겠습니까?");
			if (confirm_val) {
				var checkArr = new Array();
				$("input[class='chBox']:checked").each(function() {
					checkArr.push($(this).attr("data-no"));
				})
				console.log(checkArr);
				$.ajax({
					url : "delete",
					type : "post",
					data : {
						chbox : checkArr
					},
					success : function() {
						location.href = "list";
					}
				});
			}
		});
	});
</script>
<meta charset="utf-8">
<style>
#wrap {
	width: 1100px;
	margin: auto;
	min-height: 500px;
}

#siderBar {
	float: left;
	margin-top: 60px;
	margin-left: 20px;
	margin-right: 20px;
	width: 200px;
	border: 2px solid #5F7294;
	min-height: 300px;
}

#siderBar ul {
	width: 200px;
	margin: 10px 0;
	padding: 0;
}

#siderBar li {
	list-style: none;
	color: black;
	height: 30px;
	width: 155px;
	padding: 0 20px;
	margin-left: 5px;
	font-size: 12px;
	line-height: 30px;
}

#siderBar #currier {
	width: 180px;
	height: 50px;
	padding: 15 15px;
	line-height: 30px;
}

#currier img {
	margin-left: 10px;
}

#currier.btn {
	padding: 5px;
}

#contents {
	margin-top: 30px;
	margin-left: 10px;
	width: 780px;
	min-height: 300px;
	float: left;
	border-top: 30px solid rgba(161, 182, 204, 0.9);
	border-bottom: 15px solid rgba(161, 182, 204, 0.9);
	border-left: 5px solid rgba(161, 182, 204, 0.9);
	border-right: 5px solid rgba(161, 182, 204, 0.9);
}

#content {
	border: 2px solid #fff;
	border-radius: 5px 5px 5px 5px;
	width: 776px;
	min-height: 300px;
}

#content .title {
	height: 20px;
	margin: 10px 15px;
	font-size: 14px;
	padding: 2px 1px;
	border-bottom: 1px dotted #5F7294;
}

#content #selectBox {
	width: 340px;
	margin-left: 400px;
}

#selectBox .label {
	margin-left: 13px;
	padding: 0 10px;
}

#naviBar {
	width: 310px;
	height: 30px;
	margin-left: 400px;
	margin-top: 30px;
}

#naviBar a {
	margin-left: 10px;
	line-height: 30px;
}

#tableText {
	width: 700px;
	margin: 10px auto;
}

#downLoad {
	width: 150px;
	margin-left: 600px;
	margin-bottom: 20px;
}
</style>
</head>
<body>
	<div id="wrap">
		<div id="header"></div>
		<!-- header end -->
		<div id="siderBar">
			<div>
				<ul>
					<li><a href="list"><img
							src="resources/image/left_icon.gif" /> 기본정보</a></li>
					<li><a href="insert">- 등록</a></li>
					<li><img src="resources/image/left_icon.gif" /> 직원명부</li>
					<li><img src="resources/image/left_icon.gif" /> 퇴직자현황</li>
					<li><img src="resources/image/left_icon.gif" /> 예비인력정보</li>
					<li><img src="resources/image/left_icon.gif" /> 거래처정보</li>
					<li>- 등록</li>
				</ul>
			</div>
			<div>
				<ul>
					<li>진행 프로젝트</li>
					<li>현 황</li>
				</ul>
			</div>
			<div id="currier">
				<!------------------------------ 경력검색 ---------------------------------->
				<img src="resources/image/left_icon.gif" width="11" height="11"
					align="absmiddle"> <strong>경력검색</strong><br /> <input
					name="textfield" type="text" class="flat" size="15" maxlength="14" />
				<button class="btn">검색</button>
				<!------------------------------ 경력검색 ---------------------------------->
			</div>
		</div>
		<!-- siderBar end -->
		<div id="contents">
			<div id="content">
				<div class="title">
					<img src="resources/image/icon.gif" width="9" height="9"
						align="absmiddle"> <strong>사원조회</strong>
				</div>
				<div id="selectBox">
					<div>
						<form name="form1" method="post" action="list">
							<select name="searchOption" class="INPUT">
								<option>::::: 전 체 :::::</option>
								<option value="kor_name"
									<c:out value="${map.searchOption == 'kor_name'?'selected':''}"/>>:::::
									이 름 :::::</option>
								<option value="jumin_no"
									<c:out value="${map.searchOption == 'jumin_no'?'selected':''}"/>>:::
									주민번호 :::</option>
							</select> <input name="keyword" type="text" class="INPUT"
								value="${map.keyword }"> <input type="submit" value="검색">
					</div>
					<div>
						<label class="label"> :::: 성 &nbsp;&nbsp; 별 :::: </label> <input
							name="keyword2" type="text" class="INPUT" value="${map.keyword2}">
					</div>

					<div>
						<label class="label">:::: 연 &nbsp;&nbsp; 차 :::: </label> <input
							name="keyword3" type="text" class="INPUT" placeholder="뒤에7자리"
							value="${map.keyword3}">
					</div>
					<div>
						<label class="label">:::: 주 &nbsp;&nbsp; 소 ::::</label> <input
							name="keyword4" type="text" class="INPUT" placeholder="ex)서울시"
							value="${map.keyword4}">
					</div>
				</div>
				</form>
				<div id="naviBar">
					<!-- <button type="button" class="update_chk">
						수정 <img src="resources/image/all_icon.gif" width="11" height="11"
							align="absmiddle">
					</button> -->
					<a href="javascript:update_chk();">수정 <img
						src="resources/image/all_icon.gif" width="11" height="11"
						align="absmiddle"></a> <a href="#">인사기록카드</a> <img
						src="resources/image/all_icon.gif" width="11" height="11"
						align="absmiddle"> <a href="#">경력정보</a> <img
						src="resources/image/all_icon.gif" width="11" height="11"
						align="absmiddle"> <a href="#">근무정보</a><img
						src="resources/image/all_icon.gif" width="11" height="11"
						align="absmiddle">
				</div>
				<div id="tableText">
					<table class="excel">
						<thead>
							<tr>
								<td width="35" height="20" align="center"></td>
								<td width="85" align="center">이름</td>
								<td width="85" align="center">주민번호</td>
								<td width="85" align="center">성별</td>
								<td width="85" align="center">기술등급</td>
								<td width="85" align="center">상태</td>
								<td width="85" align="center">근무형태</td>
							<tr>
						</thead>
						<!-------------------------  리스트 ------------------------------>
						<tbody>
							<tr>
								<td colspan="7" background="resources/image/line_bg.gif"></td>
							</tr>
							<c:forEach items="${map.list }" var="list">
								<tr>
									<td width="35" height="20" align="center"><input
										type="checkbox" class="chBox" name="chBox"
										data-no="${list.no}"></td>
									<td width="85" align="center"><a
										href="update?no=${list.no}">${list.kor_name }</td>
									<td width="153" align="center"><a
										href="update?no=${list.no}">${list.jumin_no }</td>
									<td width="91" align="center">${list.sex }</td>
									<td width="91" align="center">${list.tech_lev }</td>
									<td width="91" align="center">${list.state }</td>
									<td width="94" align="center">${list.work_flag }</td>
								</tr>
								<tr>
									<td colspan="7" background="resources/image/line_bg.gif"></td>
								</tr>
							</c:forEach>
						</tbody>
						<tfoot>
							<tr style="text-align: center">
								<td colspan="100">
									<!-- 처음페이지로 이동 : 현재 페이지가 1보다 크면  [처음]하이퍼링크를 화면에 출력--> <c:if
										test="${map.boardPager.curBlock > 1}">
										<a href="javascript:list('1')">[처음]</a>
									</c:if> <!-- 이전페이지 블록으로 이동 : 현재 페이지 블럭이 1보다 크면 [이전]하이퍼링크를 화면에 출력 --> <c:if
										test="${map.boardPager.curBlock > 1}">
										<a href="javascript:list('${map.boardPager.prevPage}')">[이전]</a>
									</c:if> <!-- **하나의 블럭 시작페이지부터 끝페이지까지 반복문 실행 --> <c:forEach var="num"
										begin="${map.boardPager.blockBegin}"
										end="${map.boardPager.blockEnd}">
										<!-- 현재페이지이면 하이퍼링크 제거 -->
										<c:choose>
											<c:when test="${num == map.boardPager.curPage}">
												<span style="color: red">${num}</span>&nbsp;
						</c:when>
											<c:otherwise>
												<a href="javascript:list('${num}')">${num}</a>&nbsp;
						</c:otherwise>
										</c:choose>
									</c:forEach> <!-- 다음페이지 블록으로 이동 : 현재 페이지 블럭이 전체 페이지 블럭보다 작거나 같으면 [다음]하이퍼링크를 화면에 출력 -->
									<c:if
										test="${map.boardPager.curBlock <= map.boardPager.totBlock}">
										<a href="javascript:list('${map.boardPager.nextPage}')">[다음]</a>
									</c:if> <!-- 끝페이지로 이동 : 현재 페이지가 전체 페이지보다 작거나 같으면 [끝]하이퍼링크를 화면에 출력 -->
									<c:if
										test="${map.boardPager.curPage <= map.boardPager.totPage}">
										<a href="javascript:list('${map.boardPager.totPage}')">[끝]</a>
									</c:if>
								</td>
							</tr>
						</tfoot>
					</table>
				</div>
				<!-------------------------  리스트 ------------------------------>
				<div>
					<center>
						<input type="checkbox" class="check_all">
						<button type="button" class="selectDelete_btn">삭제</button>
						총 게시물 수 : ${map.count }
						
					</center>
				</div>
				<div id="downLoad">
					<button onclick="down()">
						<img src="resources/image/all_icon.gif" width="11" height="11"
							align="absmiddle">자료다운
					</button>
				</div>
			</div>
		</div>
		<!-- contents end -->
	</div>
</body>
</html>
<a id="download" download="" href=""></a>