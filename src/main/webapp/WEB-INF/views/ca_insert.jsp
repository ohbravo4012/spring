<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link href="resources/css/style.css" rel="stylesheet" type="text/css">
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
	margin-left: 50px;
}
</style>
</head>
<body>
	<div id="wrap">
		<div id="header"></div>
		<div id="siderBar">
			<div>
				<ul>
					<li><img src="resources/image/left_icon.gif" /> 기본정보</li>
					<li>- 등록</li>
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
				<form action="ca_insert" method="post">
				<input type="hidden" value="${career.no }" name="no">
					<table width="640" border="0" cellspacing="0" cellpadding="0">
						<tr>
							<td width="640">&nbsp;</td>
						</tr>
						<tr>
							<td height="25"><img src="resources/image/icon.gif"
								width="9" height="9" align="absmiddle"> <strong>경력
									정보 등록</strong></td>
						</tr>
						<tr>
							<td><table width="640" border="0" cellspacing="0"
									cellpadding="0">
									<tr>
										<td height="15" align="left"><table width="640"
												border="0" cellspacing="0" cellpadding="0">
												<tr>
													<td><table width="640" border="0" cellspacing="1"
															cellpadding="0">
															<tr>
																<td height="2" background="resources/image/bar_bg1.gif"></td>
															</tr>
															<tr align="center" bgcolor="F8F8F8">
																<td height="26" align="center" bgcolor="#E4EBF1"
																	style="padding-right: 10"><table width="600"
																		border="0" cellspacing="0" cellpadding="0">
																		<tr>
																			<td align="center"><strong><a
																					href="education?no=${career.no}">교육정보</a><a
																					href="edu_insert?no=${career.no }">(등록)</a> | <a
																					href="license?no=${career.no}">자격증.보유기술정보</a><a
																					href="licen_insert?no=${career.no }">(등록)</a> | <a
																					href="project?no=${career.no}">프로젝트정보</a><a
																					href="pro_insert?no=${career.no }">(등록)</a> | <a
																					href="career?no=${career.no}">경력정보</a><a
																					href="ca_insert?no=${career.no }">(등록)</a> | <a
																					href="work?no=${career.no}">근무정보</a><a
																					href="work_insert?no=${career.no }">(등록)</a></strong></td>
																		</tr>
																	</table></td>
															</tr>
															<tr align="center" bgcolor="F8F8F8">
																<td height="3" align="right"
																	background="resources/image/bar_bg1.gif"></td>
															</tr>
														</table></td>
												</tr>
											</table></td>
									</tr>
									<tr>
										<td height="6" align="center" valign="top">&nbsp;</td>
									</tr>
									<tr>
										<td height="7" align="center" valign="top"><table
												width="600" border="0" cellspacing="0" cellpadding="0">
												<tr>
													<td bgcolor="#CCCCCC"><table width="600" border="0"
															cellspacing="1" cellpadding="0">
															<tr>
																<td width="97" height="31" align="center"
																	bgcolor="#E4EBF1"><strong>사원명</strong></td>
																<td width="128" align="center" bgcolor="#E4EBF1"><input
																	name="kor_name" type="text" size="15" value="${career.kor_name }"></td>
																<td width="131" align="center" bgcolor="#E4EBF1"><strong>주민등록번호</strong></td>
																<td width="239" align="center" bgcolor="#E4EBF1"><input
																	name="jumin_no" type="text" size="15" value="${career.jumin_no}"></td>
															</tr>
														</table></td>
												</tr>
											</table></td>
									</tr>
									<tr>
										<td height="3" align="center" valign="top">&nbsp;</td>
									</tr>
									<tr>
										<td height="7" align="center" valign="top"><table
												width="600" border="0" cellspacing="0" cellpadding="0">
												<tr>
													<td bgcolor="#CCCCCC"><table width="600" border="0"
															cellspacing="1" cellpadding="0">
															<tr>
																<td height="45" align="center" bgcolor="#E4EBF1"><strong>
																</strong>
																	<table width="547" border="0" cellpadding="1"
																		cellspacing="1">
																		<tr align="left">
																			<td width="49"><strong>회사명</strong></td>
																			<td width="268"><strong> <input
																					name="ca_company1" type="text" size="30" value="${career.ca_company1 }">
																			</strong></td>
																			<td width="78"><strong>직위</strong></td>
																			<td width="152"><strong> </strong><strong>
																					<input name="ca_position1" type="text"
																					size="15" value="${career.ca_position1}">
																			</strong></td>
																		</tr>
																		<tr align="left">
																			<td><strong>기간</strong></td>
																			<td width="268"><strong> <input
																					name="ca_period1_1" type="text" size="10" value="${career.ca_period1_1}">
																					~ <input name="ca_period1_2" type="text"
																					size="10" value="${career.ca_period1_2}">
																			</strong></td>
																			<td width="78"><strong>담당업무</strong></td>
																			<td width="152"><strong> <input
																					name="ca_work1" type="text" size="20" value="${career.ca_work1}">
																			</strong></td>
																		</tr>
																	</table></td>
															</tr>
															<tr>
																<td height="45" align="center" bgcolor="#E4EBF1"><table
																		width="547" border="0" cellpadding="1" cellspacing="1">
																		<tr align="left">
																			<td width="49"><strong>회사명</strong></td>
																			<td width="268"><strong> <input
																					name="ca_company2" type="text" size="30" value="${career.ca_company2}">
																			</strong></td>
																			<td width="78"><strong>직위</strong></td>
																			<td width="152"><strong> </strong><strong>
																					<input name="ca_position2" type="text"
																					size="15" value="${career.ca_position2}">
																			</strong></td>
																		</tr>
																		<tr align="left">
																			<td><strong>기간</strong></td>
																			<td width="268"><strong> <input
																					name="ca_period2_1" type="text" size="10" value="${career.ca_period2_1}">
																					~ <input name="ca_period2_2" type="text"
																					size="10" value="${career.ca_period2_2}">
																			</strong></td>
																			<td width="78"><strong>담당업무</strong></td>
																			<td width="152"><strong> <input
																					name="ca_work2" type="text" size="20" value="${career.ca_work2}">
																			</strong></td>
																		</tr>
																	</table></td>
															</tr>
															<tr>
																<td height="45" align="center" bgcolor="#E4EBF1"><table
																		width="547" border="0" cellpadding="1" cellspacing="1">
																		<tr align="left">
																			<td width="49"><strong>회사명</strong></td>
																			<td width="268"><strong> <input
																					name="ca_company3" type="text" size="30" value="${career.ca_company3}">
																			</strong></td>
																			<td width="78"><strong>직위</strong></td>
																			<td width="152"><strong> </strong><strong>
																					<input name="ca_position3" type="text"
																					size="15" value="${career.ca_position3}">
																			</strong></td>
																		</tr>
																		<tr align="left">
																			<td><strong>기간</strong></td>
																			<td width="268"><strong> <input
																					name="ca_period3_1" type="text" size="10" value="${career.ca_period3_1}">
																					~ <input name="ca_period3_2" type="text"
																					size="10" value="${career.ca_period3_2}">
																			</strong></td>
																			<td width="78"><strong>담당업무</strong></td>
																			<td width="152"><strong> <input
																					name="ca_work3" type="text" size="20" value="${career.ca_work3}">
																			</strong></td>
																		</tr>
																	</table></td>
															</tr>
															<tr>
																<td height="45" align="center" bgcolor="#E4EBF1"><table
																		width="547" border="0" cellpadding="1" cellspacing="1">
																		<tr align="left">
																			<td width="49"><strong>회사명</strong></td>
																			<td width="268"><strong> <input
																					name="ca_company4" type="text" size="30" value="${career.ca_company4}">
																			</strong></td>
																			<td width="78"><strong>직위</strong></td>
																			<td width="152"><strong> </strong><strong>
																					<input name="ca_position4" type="text"
																					size="15" value="${career.ca_position4}">
																			</strong></td>
																		</tr>
																		<tr align="left">
																			<td><strong>기간</strong></td>
																			<td width="268"><strong> <input
																					name="ca_period4_1" type="text" size="10" value="${career.ca_period4_1}">
																					~ <input name="ca_period4_2" type="text"
																					size="10" value="${career.ca_period4_2}">
																			</strong></td>
																			<td width="78"><strong>담당업무</strong></td>
																			<td width="152"><strong> <input
																					name="ca_work4" type="text" size="20" value="${career.ca_work4}">
																			</strong></td>
																		</tr>
																	</table></td>
															</tr>
														</table></td>
												</tr>
											</table></td>
									</tr>
									<tr>
										<td height="3" align="center">&nbsp;</td>
									</tr>
									<tr>
										<td height="3" align="center"><table width="107"
												border="0" cellpadding="1" cellspacing="1">
												<tr>
													<td width="49"><input type="submit" value=""
														class="submit"></td>
													</form>
													<td width="51"><a href="list"><img
															src="resources/image/bt_cancel.gif" width="49"
															height="18"></a></td>
												</tr>
											</table></td>
									</tr>
									<tr>
										<td height="7" align="right">&nbsp;</td>
									</tr>
								</table></td>
						</tr>
					</table>
			</div>
		</div>
	</div>
</body>
</html>
<style>
.submit {
	background-image: url('resources/image/bt_remove.gif');
	width: 49px;
	height: 18px;
}
</style>