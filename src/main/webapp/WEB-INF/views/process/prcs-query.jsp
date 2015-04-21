<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
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
			<jsp:include page="/menu-bootstrap.jsp"></jsp:include>
			<div class="span10">

				<div class="tb-head nav-header">流程管理</div>
				<table class="table table-striped table-bordered table-condensed">
					<tr style=";font-weight:bold;background-color:#00ff00;">
						<td style="width: 3%;font-weight:bold;background-color:#167ac6">序号</td>
						<td style="width: 20%;font-weight:bold;background-color:#167ac6">项目名称</td>
						<td style="width: 5%;font-weight:bold;background-color:#167ac6">创建人</td>
						<td style="width: 10%;font-weight:bold;background-color:#167ac6">创建时间</td>
						<td style="width: 20%;font-weight:bold;background-color:#167ac6">问题描述</td>
						<td style="width: 7%;font-weight:bold;background-color:#167ac6">联系人</td>
						<td style="width: 10%;font-weight:bold;background-color:#167ac6">产品名称</td>
						<td style="width: 8%;font-weight:bold;background-color:#167ac6">状态</td>
					</tr>
					<c:forEach var="prj" varStatus="status" items="${projects}">
						<tr>
							<td style="text-align:center">${status.count}</td>
							<td>
								<a href="${ctx}/prj/edit/${prj.prjId}.action">${prj.prjName}</a>
							</td>
							<td>${prj.creator.engineerName}</td>
							<td><fmt:formatDate value="${prj.createDate}" pattern="yyyy-MM-dd"/></td>
							<td>${prj.clientDesc}</td>
							<td>${prj.contact.engineerName}</td>
							<td>${prj.productName}</td>
							<td>${prj.status.name}</td>
						</tr>
					</c:forEach>
											<tr>
							<td style="text-align:center">test${status.count}</td>
							<td>
								<a href="${ctx}/prj/edit/${prj.prjId}.action">${prj.prjName}test</a>
							</td>
							<td>${prj.creator.engineerName}test</td>
							<td><fmt:formatDate value="${prj.createDate}" pattern="yyyy-MM-dd"/>test</td>
							<td>${prj.clientDesc}test</td>
							<td>${prj.contact.engineerName}test</td>
							<td>${prj.productName}test</td>
							<td>${prj.status.name}test</td>
						</tr>
				</table>
				<div class="pagination pagination-right">
					<ul>
						<li><a href="#">Prev</a></li>
						<li class="active"><a href="#">1</a></li>
						<li><a href="#">2</a></li>
						<li><a href="#">3</a></li>
						<li><a href="#">4</a></li>
						<li><a href="#">Next</a></li>
					</ul>
				</div>
				<form action="${ctx}/process/deploy.action" enctype="application/x-www-form-urlencoded">
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