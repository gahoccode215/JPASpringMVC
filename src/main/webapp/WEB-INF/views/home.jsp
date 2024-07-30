<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="gof"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" />
<title>Demo Spring MVC</title>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta content="width=device-width, initial-scale=1" name="viewport" />
<meta content="" name="author" />


<!-- BEGIN GLOBAL MANDATORY STYLES -->

<link href="resources/css/bootstrap.min.css" rel="stylesheet"
	type="text/css">

<link href="resources/css/layout.css" rel="stylesheet" type="text/css">
<link href="resources/css/darkblue.css" rel="stylesheet" type="text/css"
	id="style_color">
<!-- END THEME LAYOUT STYLES -->

<link rel="shortcut icon" href="favicon.ico" />

<link href="resources/css/gof.css" rel="stylesheet" type="text/css">
<link href="resources/css/modal_message.css" rel="stylesheet"
	type="text/css">



</head>
<body>

	<div class="clearfix"></div>
	<!-- END HEADER & CONTENT DIVIDER -->
	<!-- BEGIN CONTAINER -->
	<div class="page-container">
		<!-- BEGIN SIDEBAR -->



		<!-- BEGIN CONTENT -->
		<div>
			<!-- BEGIN CONTENT BODY -->
			<div class="page-content">



				<div class="row">
					<div class="col-md-12">
						<!-- BEGIN EXAMPLE TABLE PORTLET-->
						<!--TÀI NGUYÊN-->
						<div class="col-lg-12 col-xs-12 col-sm-12">
							<div class="portlet light bordered" style="min-height: 170px">
								<div>
									<img src="resources/images/User.png" class="title-icons"
										alt="logo" /> <span class="caption-subject font-dark bold"
										style="font-size: 22px; font-weight: 500;">Manage Users</span>
								</div>
								<div>

									<div class="row" style="margin-top: 5px">
										<div class="col-md-12">
											<div>
												<input id="collapsible3" class="toggle" type="checkbox"
													checked /> <label for="collapsible3" class="lbl-toggle">User
													Lists</label>
												<div class="collapsible-content">
													<div>

														<table id="Oamuser_Table_1"
															class="table table-bordered table-striped table-hover table-condensed"
															border="1" bordercolor="#f9e491" id="sample_1">
															<thead class="gridheader">
																<tr>
																	<th style="text-align: center">Choose</th>
																	<th style="text-align: center">ID</th>
																	<th style="text-align: center">First Name</th>
																	<th style="text-align: center">Last Name</th>
																	<th style="text-align: center">Mark</th>
																</tr>
															</thead>
															<tbody>
																<c:if test="${not empty studentList}">
																	<c:forEach var="student" items="${studentList}"
																		varStatus="STT">
																		<tr>
																			<td align="center">
																				<div class="icheck-list">
																					<input type="radio" id="" value="${STT.index +1}"
																						name="Oamuser_InGroup_1"
																						onclick="Oamuser_Js_getRowSelected()">
																				</div>
																			</td>
																			<th style="text-align: center" align="center">${student.id}</th>
																			<td align="center">${student.firstName}</td>
																			<td align="center">${student.lastName}</td>
																			<td align="center">${student.marks}</td>
																		</tr>
																	</c:forEach>
																</c:if>

															</tbody>
														</table>
													</div>

													<gof:form action="manageStudent" id="Oamuser_Form_1"
														method="post">
														<div class="row">
															<div class="col-md-6">
																<!-- BEGIN EXAMPLE TABLE PORTLET-->
																<div>
																	<div>
																		<table class="table table-bordered table-condensed"
																			border="1" bordercolor="#f9e491">
																			<thead class="detailheader">
																				<tr>
																					<th class="detail-first-column">Key Name</th>
																					<th>Value</th>
																				</tr>
																			</thead>
																			<tbody>
																				<tr style="background-color: #ffffff">
																					<td>First Name</td>
																					<td align="center"><input style="width: 100%"
																						type="text" id="Oamuser_Input_1"
																						name="txtFirstName" value=""></td>
																				</tr>
																				<tr style="background-color: #ffffff">
																					<td>Last Name</td>
																					<td align="center"><input style="width: 100%"
																						type="text" id="Oamuser_Input_2"
																						name="txtLastName" value=""></td>
																				</tr>

																				<tr style="background-color: #ffffff">
																					<td>Mark</td>
																					<td align="center"><input style="width: 100%"
																						type="text" id="Oamuser_Input_3" name="txtMark"
																						value=""></td>
																				</tr>
																			</tbody>
																		</table>
																	</div>
																</div>

																<div align="left">
																	<div class="clearfix">

																		<button type="submit" id="Oamuser_Button_2"
																			name="btnManageStudent" value="add"
																			class="btn btn-primary" style="margin-right: 10px;">
																			<i class="fa fa-plus"></i> Add
																		</button>


																		<button type="submit" id="Oamuser_Button_1"
																			name="btnManageStudent" value="update"
																			class="btn btn-warning" style="margin-right: 10px;">
																			<i class="fa fa-edit"></i> Update
																		</button>


																		<button type="submit" id="Oamuser_Button_3"
																			name="btnManageStudent" value="delete" id="delete"
																			data-placement="left" data-btn-cancel-label="Cancel"
																			data-btn-ok-label="Agree"
																			data-original-title="Do you want to delete?"
																			data-toggle="confirmation" class="btn btn-danger">
																			<i class="fa fa-trash-o"></i> Delete
																		</button>
																	</div>
																</div>
															</div>
														</div>
													</gof:form>
												</div>
											</div>

										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<script type="text/javascript" src="resource/js/jquery.min.js"></script>
	<script type="text/javascript" src="resource/js/bootstrap.min.js"></script>
	<script type="text/javascript" src="resource/js/Oamuser_Js_General.js"></script>
	<script type="text/javascript" src="resource/js/Lbs_Func_General.js"></script>
	<script type="text/javascript" src="resource/js/Lbs_Modal_Message.js"></script>



</body>



</html>