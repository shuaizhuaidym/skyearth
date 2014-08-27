<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="zh">
<head>
<meta charset="utf-8">
<title>乾元项目支持管理系统</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">

</head>
<body>
	<div class="container-fluid">
		<div class="row-fluid">
			<jsp:include page="/menu-left.jsp"></jsp:include>
			<div class="span10">

				<div class="tb-head nav-header">&nbsp;</div>

				<form action="/" enctype="application/x-www-form-urlencoded">
					<input type="hidden" name="taskId" value="${param.taskId }" />
					<table>
						<tr>
							<td>申请人</td>
							<td><input type="text" name="owner" value="${sessionScope['userName'] }" /></td>
						</tr>
						<tr>
							<td>请假时间（天）</td>
							<td><input type="text" name="day" value="" /></td>
						</tr>
						<tr>
							<td>请假原因</td>
							<td><input type="text" name="reason" value="" /></td>
						</tr>
					</table>
					<input type="submit" value="提交" />
				</form>
			</div>
		</div>
	</div>
</body>
</html>