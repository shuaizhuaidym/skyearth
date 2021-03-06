<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<body>
	<div class="container-fluid">
		<div class="row-fluid">
			<jsp:include page="/menu-bootstrap.jsp"/>
			<div class="span10">
				<div class="tb-head nav-header">
					查询 <input type="button" class="exportbtn" onclick="exportXLS();"/>
				</div>
				<div class="srch">
					<form id="queryLeftForm" action="${ctx}/prj/query.action" method="post">
						<div class="table-responsive;float:left;">
							<table>
								<tr>
									<td><label for="inputEmail" class="control-label col-xs-2">项目名称</label></td>
									<td><input type="text" name="prjName" class="form-control" id="inputEmail"></td>
									<td><label for="inputEmail" class="control-label col-xs-2">反馈时间</label></td>
									<td><input type="email" class="form-control" id="inputEmail"></td>
									<td><label for="inputEmail" class="control-label col-xs-2">处理人</label></td>
									<td><input type="email" class="form-control" id="inputEmail" placeholder=""></td>
									<td><label for="inputEmail" class="control-label col-xs-2">项目类型</label></td>
									<td><input type="email" class="form-control" id="inputEmail"></td>
								</tr>
								<tr>
									<td><label for="inputEmail" class="control-label col-xs-2">项目编号</label></td>
									<td><input type="email" class="form-control" id="inputEmail" placeholder=""></td>
									<td><label for="inputEmail" class="control-label col-xs-2">问题描述</label></td>
									<td><input type="email" class="form-control" id="inputEmail"></td>
									<td><label for="inputEmail" class="control-label col-xs-2">状态</label></td>
									<td><input type="email" class="form-control" id="inputEmail" placeholder=""></td>
									<td><label for="inputEmail" class="control-label col-xs-2">Email</label></td>
									<td><input type="email" class="form-control" id="inputEmail"></td>
								</tr>
							</table>
						</div>
						<div style="float: right; margin-top: -42px; padding-right: 32px">
							<a id="query_ticket" class="btn-search" href="javascript:query();">查询</a>
						</div>
					</form>
				</div>
				<table class="table table-striped table-bordered table-condensed">
					<tr style=";font-weight:bold;background-color:#00ff00;">
						<td style="width: 5%;font-weight:bold;background-color:#167ac6">序号</td>
						<td style="width: 15%;font-weight:bold;background-color:#167ac6">项目名称</td>
						<td style="width: 15%;font-weight:bold;background-color:#167ac6">问题类型</td>
						<td style="width: 20%;font-weight:bold;background-color:#167ac6">问题描述</td>
						<td style="width: 10%;font-weight:bold;background-color:#167ac6">创建时间</td>
						<td style="width: 10%;font-weight:bold;background-color:#167ac6">更新时间</td>
						<td style="width: 5%;font-weight:bold;background-color:#167ac6">创建人</td>
						<td style="width: 7%;font-weight:bold;background-color:#167ac6">联系人</td>
						<td style="width: 8%;font-weight:bold;background-color:#167ac6">当前状态</td>
					</tr>
					<c:forEach var="prj" varStatus="status" items="${projects}">
						<tr>
							<td style="text-align:center">${status.count}</td>
							<td>
								<a href="${ctx}/prj/edit/${prj.prjId}.action">${prj.prjName}</a>
							</td>
							<td>${prj.productName}</td>
							<td>${prj.clientDesc}</td>
							<td>${prj.creator.engineerName}</td>
							<td><fmt:formatDate value="${prj.createDate}" pattern="yyyy-MM-dd"/></td>
							<td>${prj.contact.engineerName}</td>
							<td>${prj.contact.engineerName}</td>
							<td>${prj.status.name}</td>
						</tr>
					</c:forEach>
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
			</div>
		</div>
	</div>
	<style type="text/css">
		.exportbtn {
			background: url("${ctx}/resource/common/icon.png") no-repeat scroll 0 -33px rgba(0, 0, 0, 0);
			min-width: 20px;
			border:none;
		}
	</style>
	<script type="text/javascript">
		function query(){
			document.getElementById('queryLeftForm').submit();
		}
		function exportXLS(){
			document.getElementById('queryLeftForm').submit();
		}
	</script>
</body>
</html>