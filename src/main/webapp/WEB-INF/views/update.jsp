<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link href="resources/css/style.css" rel="stylesheet" type="text/css">
<script src="//code.jquery.com/jquery-3.3.1.min.js"></script>
<script>
	$(document).ready(
			function() {
				$("input:radio[name='birth4']:radio[value='${view.birth4}']")
						.prop("checked", true);
				$("input:radio[name='sex']:radio[value='${view.sex}']").prop(
						"checked", true);
				$("input:radio[name='marri']:radio[value='${view.marri}']")
						.prop("checked", true);

				$(".sal").val("${view.sal}");
				$(".work_flag").val("${view.work_flag}");
				$(".state").val("${view.state}");
			})
</script>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<script>
	$(document).ready(
			function() {
				$("#gdsImg").change(
						function() {
							if (this.files && this.files[0]) {
								var reader = new FileReader;
								reader.onload = function(data) {
									$(".select_img img").attr("src",
											data.target.result).height(100)
											.width(100);
								}
								reader.readAsDataURL(this.files[0]);
							}
						});
			})
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
	margin-left: 50px;
}
</style>
</head>
<body>
	<div>
		<div id="header"></div>
		<div id="siderBar">
			<div>
				<ul>
					<li><a href="list"><img
							src="resources/image/left_icon.gif" /> 기본정보</a></li>
					<li><a href="insert"> - 등록</a></li>
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
				<form method="post" enctype="multipart/form-data">
					<table width="640" border="0" cellspacing="0" cellpadding="0" class="excel">
						<tr>
							<td width="640">&nbsp;</td>
						</tr>
						<tr>
							<td height="25"><img src="resources/image/icon.gif"
								width="9" height="9" align="absmiddle"> <strong>사원
									기본 정보 수정</strong></td>
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
																					href="education?no=${view.no}">교육정보</a><a
																					href="edu_insert?no=${view.no }">(등록)</a> | <a
																					href="license?no=${view.no}">자격증.보유기술정보</a><a
																					href="licen_insert?no=${view.no }">(등록)</a> | <a
																					href="project?no=${view.no}">프로젝트정보</a><a
																					href="pro_insert?no=${view.no }">(등록)</a> | <a
																					href="career?no=${view.no}">경력정보</a><a
																					href="ca_insert?no=${view.no }">(등록)</a> | <a
																					href="work?no=${view.no}">근무정보</a><a
																					href="work_insert?no=${view.no }">(등록)</a></strong></td>
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
																<td height="135" align="center" bgcolor="#E4EBF1"><table
																		width="600" border="0" cellpadding="0" cellspacing="0">
																		<tr>
																			<td width="144" height="119" align="center"><table
																					width="100" border="0" cellspacing="0"
																					cellpadding="0">
																					<tr>
																						<td height="112" bgcolor="#CCCCCC"><table
																								width="100" border="0" cellspacing="1"
																								cellpadding="0">
																								<tr>
																									<td height="110" bgcolor="#FFFFFF"><div
																											class="select_img">
																											<img src="${view.gdsImg }" width="100"
																												height="100" /> <input type="hidden"
																												name="gdsImg" value="${view.gdsThumbImg }" />
																											<input type="hidden" name="gdsImg"
																												value="${view.gdsImg }" />
																										</div></td>
																								</tr>
																							</table></td>
																					</tr>
																				</table></td>
																			<td width="456"><table width="423" border="0"
																					cellspacing="2" cellpadding="0">
																					<tr>
																						<td height="2" colspan="2"></td>
																					</tr>
																					<tr>
																						<td width="107" height="26" align="right"><strong>한글이름
																								:</strong>&nbsp;</td>
																						<td width="310" height="26"><input
																							type="text" name="kor_name" value="${view.kor_name}"></td>
																					</tr>
																					<tr>
																						<td height="26" align="right"><strong>영문이름
																								:&nbsp;</strong></td>
																						<td height="26"><input type="text"
																							name="eng_name" value=${view.eng_name}></td>
																					</tr>
																					<tr>
																						<td height="26" align="right"><strong>한문이름:</strong>&nbsp;</td>
																						<td height="26"><input type="text"
																							name="china_name" value=${view.china_name}></td>
																					</tr>
																					<tr>
																						<td height="26" align="right"><strong>주민등록번호
																								:</strong>&nbsp;</td>
																						<td height="26"><input name="jumin_no"
																							type="text" size="30" value=${view.jumin_no}></td>
																					</tr>
																				</table></td>
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
										<td height="13" align="center"><table width="600"
												border="0" cellspacing="0" cellpadding="0">
												<tr>
													<td bgcolor="#CCCCCC"><table width="600" border="0"
															cellspacing="1" cellpadding="0">
															<tr>
																<td bgcolor="#E4EBF1"><table width="526" border="0"
																		cellspacing="1" cellpadding="1">
																		<tr>
																			<td width="102" align="right"><strong>사진파일명
																					:&nbsp;</strong></td>
																			<td width="268"><input name="textfield33"
																				type="text" size="40"
																				value="<%=request.getRealPath("/")%>"></td>
																			<td width="146"><font color="#FF0000"> <input
																					type="file" id="gdsImg" name="file" class="file" />
																					<input type="hidden" name="gdsThumbImg"
																					value="${view.gdsThumbImg }" /> <input
																					type="hidden" name="gdsImg" value="${view.gdsImg }" /></font></td>
																		</tr>
																	</table></td>
															</tr>
															<tr>
																<td bgcolor="#E4EBF1"><table width="500" border="0"
																		cellspacing="1" cellpadding="1">
																		<tr>
																			<td width="102" align="right"><strong>생년월일
																					:&nbsp;</strong></td>
																			<td width="391"><input name="birth1" type="text"
																				size="10" value=${view.birth1}> 년 <input
																				name="birth2" type="text" size="7"
																				value=${view.birth2}> 월 <input name="birth3"
																				type="text" size="7" value=${view.birth3}> 일
																				( <input type="radio" name="birth4" value="양력">
																				양력 <input type="radio" name="birth4" value="음력">
																				음력 )</td>
																		</tr>
																	</table></td>
															</tr>
															<tr>
																<td bgcolor="#E4EBF1"><table width="500" border="0"
																		cellspacing="1" cellpadding="1">
																		<tr>
																			<td width="102" align="right"><strong>성별
																					:&nbsp; </strong></td>
																			<td width="391"><input type="radio" name="sex"
																				value="남자"> 남자 <input type="radio"
																				name="sex" value="여자"> 여자</td>
																		</tr>
																	</table></td>
															</tr>
															<tr>
																<td bgcolor="#E4EBF1"><table width="500" border="0"
																		cellspacing="1" cellpadding="1">
																		<tr>
																			<td width="102" align="right"><strong>결혼유무
																					:&nbsp;</strong></td>
																			<td width="391"><input type="radio" name="marri"
																				value="미혼"> 미혼 <input type="radio"
																				name="marri" value="기혼"> 기혼</td>
																		</tr>
																	</table></td>
															</tr>
															<tr>
																<td bgcolor="#E4EBF1"><table width="500" border="0"
																		cellspacing="1" cellpadding="1">
																		<tr>
																			<td width="101" align="right"><strong>년차
																					:&nbsp;</strong></td>
																			<td width="392"><input name="work_date"
																				type="text" size="10" value=${view.work_date}></td>
																		</tr>
																	</table></td>
															</tr>
															<tr>
																<td bgcolor="#E4EBF1"><table width="500" border="0"
																		cellspacing="1" cellpadding="1">
																		<tr>
																			<td width="101" align="right"><strong>급여
																					지급유형 :&nbsp;</strong></td>
																			<td width="392"><select name="sal" class="sal">
																					<option value="월급">월급</option>
																					<option value="주급" selected>주급</option>
																			</select></td>
																		</tr>
																	</table></td>
															</tr>
															<tr>
																<td bgcolor="#E4EBF1"><table width="500" border="0"
																		cellspacing="1" cellpadding="1">
																		<tr>
																			<td width="101" align="right"><strong>희망직무
																					:&nbsp;</strong></td>
																			<td width="392"><select name="work_flag"
																				class="work_flag">
																					<option value="SI">SI</option>
																					<option value="SM">SM</option>
																			</select></td>
																		</tr>
																	</table></td>
															</tr>
															<tr>
																<td bgcolor="#E4EBF1"><table width="500" border="0"
																		cellspacing="1" cellpadding="1">
																		<tr>
																			<td width="101" align="right"><strong>입사유형:&nbsp;</strong></td>
																			<td width="392"><select name="state"
																				class="state">
																					<option value="정규직">정규직</option>
																					<option value="계약직">계약직</option>
																			</select></td>
																		</tr>
																	</table></td>
															</tr>
															<tr>
																<td bgcolor="#E4EBF1"><table width="500" border="0"
																		cellspacing="1" cellpadding="1">
																		<tr>
																			<td width="101" align="right"><strong>주소:&nbsp;</strong></td>
																			<td width="392"><input name="address"
																				type="text" size="50" value=${view.address}></td>
																		</tr>
																	</table></td>
															</tr>
															<tr>
																<td bgcolor="#E4EBF1"><table width="500" border="0"
																		cellspacing="1" cellpadding="1">
																		<tr>
																			<td width="101" align="right"><strong>연락처:&nbsp;</strong></td>
																			<td width="392"><input name="phone1" type="text"
																				size="10" value=${view.phone1}> - <input
																				name="phone2" type="text" size="10"
																				value=${view.phone2}> - <input name="phone3"
																				type="text" size="10" value=${view.phone3}></td>
																		</tr>
																	</table></td>
															</tr>
															<tr>
																<td bgcolor="#E4EBF1"><table width="500" border="0"
																		cellspacing="1" cellpadding="1">
																		<tr>
																			<td width="101" align="right"><strong>이메일:&nbsp;</strong></td>
																			<td width="392"><input name="email" type="text"
																				size="20" value=${view.email}></td>
																		</tr>
																	</table></td>
															</tr>
															<tr>
																<td bgcolor="#E4EBF1"><table width="500" border="0"
																		cellspacing="1" cellpadding="1">
																		<tr>
																			<td width="101" align="right"><strong>기술등급:&nbsp;</strong></td>
																			<td width="392"><input name="tech_lev"
																				type="text" size="20" value=${view.tech_lev}></td>
																		</tr>
																	</table></td>
															</tr>
															<tr>
																<td bgcolor="#E4EBF1"><table width="500" border="0"
																		cellspacing="1" cellpadding="1">
																		<tr>
																			<td width="101" align="right"><strong>주량:&nbsp;</strong></td>
																			<td width="392"><input name="soju" type="text"
																				size="20" value=${view.soju}></td>
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
/* .file{
background-image:url('resources/image/bt_search.gif');
} */
.submit {
	background-image: url('resources/image/bt_remove.gif');
	width: 49px;
	height: 18px;
}
</style>