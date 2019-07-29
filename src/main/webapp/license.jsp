<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link href="css/style.css" rel="stylesheet" type="text/css">
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
					<li><img src="image/left_icon.gif" /> 기본정보</li>
					<li>- 등록</li>
					<li><img src="image/left_icon.gif" /> 직원명부</li>
					<li><img src="image/left_icon.gif" /> 퇴직자현황</li>
					<li><img src="image/left_icon.gif" /> 예비인력정보</li>
					<li><img src="image/left_icon.gif" /> 거래처정보</li>
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
				<img src="image/left_icon.gif" width="11" height="11"
					align="absmiddle"> <strong>경력검색</strong><br /> <input
					name="textfield" type="text" class="flat" size="15" maxlength="14" />
				<button class="btn">검색</button>
				<!------------------------------ 경력검색 ---------------------------------->
			</div>
		</div>
		<!-- siderBar end -->
		<div id="contents">
			<div id="content">
				<table width="640" border="0" cellspacing="0" cellpadding="0">
					<tr>
						<td width="640">&nbsp;</td>
					</tr>
					<tr>
						<td height="25"><img src="image/icon.gif" width="9"
							height="9" align="absmiddle"> <strong>사원 기본 정보 수정</strong></td>
					</tr>
					<tr>
						<td><table width="640" border="0" cellspacing="0"
								cellpadding="0">
								<tr>
									<td height="15" align="left"><table width="640" border="0"
											cellspacing="0" cellpadding="0">
											<tr>
												<td><table width="640" border="0" cellspacing="1"
														cellpadding="0">
														<tr>
															<td height="2" background="image/bar_bg1.gif"></td>
														</tr>
														<tr align="center" bgcolor="F8F8F8">
															<td height="26" align="center" bgcolor="#E4EBF1"
																style="padding-right: 10"><table width="600"
																	border="0" cellspacing="0" cellpadding="0">
																	<tr>
																		<td align="center"><strong>교육정보 | 자격증.
																				보유기술정보 | 프로젝트 정보 |경력정보 | 근무정보</strong></td>
																	</tr>
																</table></td>
														</tr>
														<tr align="center" bgcolor="F8F8F8">
															<td height="3" align="right"
																background="image/bar_bg1.gif"></td>
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
																name="textfield3325" type="text" size="15"></td>
															<td width="131" align="center" bgcolor="#E4EBF1"><strong>주민등록번호</strong></td>
															<td width="239" align="center" bgcolor="#E4EBF1"><input
																name="textfield33252" type="text" size="15"> - <input
																name="textfield33253" type="text" size="15"></td>
														</tr>
													</table></td>
											</tr>
										</table></td>
								</tr>
								<tr>
									<td height="3" align="center" valign="top">&nbsp;</td>
								</tr>
								<tr>
									<td height="4" align="left" valign="top"><table
											width="526" border="0" cellspacing="1" cellpadding="1">
											<tr>
												<td width="16" align="right">&nbsp;</td>
												<td><strong>■ 자격증 </strong></td>
											</tr>
										</table></td>
								</tr>
								<tr>
									<td height="7" align="center" valign="top"><table
											width="600" border="0" cellspacing="0" cellpadding="0">
											<tr>
												<td bgcolor="#CCCCCC"><table width="600" border="0"
														cellspacing="1" cellpadding="0">
														<tr>
															<td height="26" align="center" bgcolor="#E4EBF1"><strong>
															</strong>
																<table width="439" border="0" cellpadding="0"
																	cellspacing="0">
																	<tr align="left">
																		<td width="73"><strong>자격증 </strong></td>
																		<td width="173"><strong> <input
																				name="textfield332542" type="text" size="20">
																		</strong></td>
																		<td width="60"><strong>취득일</strong></td>
																		<td width="133"><strong> </strong><strong>
																				<input name="textfield3325422" type="text" size="20">
																		</strong></td>
																	</tr>
																</table></td>
														</tr>
														<tr>
															<td height="26" align="center" bgcolor="#E4EBF1"><table
																	width="439" border="0" cellpadding="0" cellspacing="0">
																	<tr align="left">
																		<td width="73"><strong>자격증 </strong></td>
																		<td width="173"><strong> <input
																				name="textfield3325423" type="text" size="20">
																		</strong></td>
																		<td width="60"><strong>취득일</strong></td>
																		<td width="133"><strong> </strong><strong>
																				<input name="textfield33254222" type="text"
																				size="20">
																		</strong></td>
																	</tr>
																</table></td>
														</tr>
														<tr>
															<td height="26" align="center" bgcolor="#E4EBF1"><table
																	width="439" border="0" cellpadding="0" cellspacing="0">
																	<tr align="left">
																		<td width="73"><strong>자격증 </strong></td>
																		<td width="173"><strong> <input
																				name="textfield3325424" type="text" size="20">
																		</strong></td>
																		<td width="60"><strong>취득일</strong></td>
																		<td width="133"><strong> </strong><strong>
																				<input name="textfield33254223" type="text"
																				size="20">
																		</strong></td>
																	</tr>
																</table></td>
														</tr>
														<tr>
															<td height="26" align="center" bgcolor="#E4EBF1"><table
																	width="439" border="0" cellpadding="0" cellspacing="0">
																	<tr align="left">
																		<td width="73"><strong>자격증 </strong></td>
																		<td width="173"><strong> <input
																				name="textfield3325426" type="text" size="20">
																		</strong></td>
																		<td width="60"><strong>취득일</strong></td>
																		<td width="133"><strong> </strong><strong>
																				<input name="textfield33254224" type="text"
																				size="20">
																		</strong></td>
																	</tr>
																</table></td>
														</tr>
													</table></td>
											</tr>
										</table></td>
								</tr>
								<tr>
									<td height="7" align="center" valign="top">&nbsp;</td>
								</tr>
								<tr>
									<td height="7" align="left" valign="top"><table
											width="526" border="0" cellspacing="1" cellpadding="1">
											<tr>
												<td width="16" align="right">&nbsp;</td>
												<td><strong>■ 보유기술 </strong></td>
											</tr>
										</table></td>
								</tr>
								<tr>
									<td height="13" align="center"><table width="600"
											border="0" cellspacing="0" cellpadding="0">
											<tr>
												<td bgcolor="#CCCCCC"><table width="600" border="0"
														cellspacing="1" cellpadding="0">
														<tr>
															<td height="26" align="center" bgcolor="#E4EBF1"><table
																	width="600" border="0" cellpadding="0" cellspacing="0">
																	<tr align="left">
																		<td width="97" align="center"><strong>보유기술</strong></td>
																		<td width="241"><strong> <input
																				name="textfield33254262" type="text" size="30">
																		</strong></td>
																		<td width="54"><strong>숙련도</strong></td>
																		<td width="206"><strong> </strong><strong>
																				<input type="radio" name="radiobutton"
																				value="radiobutton"> 초 <input type="radio"
																				name="radiobutton" value="radiobutton"> 중 <input
																				type="radio" name="radiobutton" value="radiobutton">
																				고
																		</strong></td>
																	</tr>
																</table></td>
														</tr>
														<tr>
															<td height="26" align="center" valign="middle"
																bgcolor="#E4EBF1"><table width="600" border="0"
																	cellpadding="0" cellspacing="0">
																	<tr align="left">
																		<td width="97" align="center"><strong>보유기술</strong></td>
																		<td width="241"><strong> <input
																				name="textfield332542622" type="text" size="30">
																		</strong></td>
																		<td width="54"><strong>숙련도</strong></td>
																		<td width="206"><strong> </strong><strong>
																				<input type="radio" name="radiobutton"
																				value="radiobutton"> 초 <input type="radio"
																				name="radiobutton" value="radiobutton"> 중 <input
																				type="radio" name="radiobutton" value="radiobutton">
																				고
																		</strong></td>
																	</tr>
																</table></td>
														</tr>
														<tr>
															<td height="26" align="center" bgcolor="#E4EBF1"><table
																	width="600" border="0" cellpadding="0" cellspacing="0">
																	<tr align="left">
																		<td width="97" align="center"><strong>보유기술</strong></td>
																		<td width="241"><strong> <input
																				name="textfield332542623" type="text" size="30">
																		</strong></td>
																		<td width="54"><strong>숙련도</strong></td>
																		<td width="206"><strong> </strong><strong>
																				<input type="radio" name="radiobutton"
																				value="radiobutton"> 초 <input type="radio"
																				name="radiobutton" value="radiobutton"> 중 <input
																				type="radio" name="radiobutton" value="radiobutton">
																				고
																		</strong></td>
																	</tr>
																</table></td>
														</tr>
														<tr>
															<td height="26" align="center" bgcolor="#E4EBF1"><table
																	width="600" border="0" cellpadding="0" cellspacing="0">
																	<tr align="left">
																		<td width="97" align="center"><strong>보유기술</strong></td>
																		<td width="241"><strong> <input
																				name="textfield332542624" type="text" size="30">
																		</strong></td>
																		<td width="54"><strong>숙련도</strong></td>
																		<td width="206"><strong> </strong><strong>
																				<input type="radio" name="radiobutton"
																				value="radiobutton"> 초 <input type="radio"
																				name="radiobutton" value="radiobutton"> 중 <input
																				type="radio" name="radiobutton" value="radiobutton">
																				고
																		</strong></td>
																	</tr>
																</table></td>
														</tr>
														<tr>
															<td height="26" align="center" bgcolor="#E4EBF1"><table
																	width="600" border="0" cellpadding="0" cellspacing="0">
																	<tr align="left">
																		<td width="97" align="center"><strong>보유기술</strong></td>
																		<td width="241"><strong> <input
																				name="textfield332542625" type="text" size="30">
																		</strong></td>
																		<td width="54"><strong>숙련도</strong></td>
																		<td width="206"><strong> </strong><strong>
																				<input type="radio" name="radiobutton"
																				value="radiobutton"> 초 <input type="radio"
																				name="radiobutton" value="radiobutton"> 중 <input
																				type="radio" name="radiobutton" value="radiobutton">
																				고
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
												<td width="49"><img src="image/bt_remove.gif"
													width="49" height="18"></td>
												<td width="51"><img src="image/bt_cancel.gif"
													width="49" height="18"></td>
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