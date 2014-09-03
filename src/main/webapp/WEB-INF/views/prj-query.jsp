<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<body>
	<div class="container-fluid">
		<div class="row-fluid">
			<jsp:include page="/menu-bootstrap.jsp"></jsp:include>
			<div class="span10">
				<div class="tb-head nav-header">
					查询 <a> <img src="resource/common/excel.png" width="26" height="26" border="0" alt="export" align="right" />
					</a>
				</div>
				<div class="sear-box">
					<form id="queryLeftForm" enctype="application/x-www-form-urlencoded" method="get">
						<div class="table-responsive;float:left;width:600px">
							<table>
								<tr>
									<td><label for="inputEmail" class="control-label col-xs-2">项目名称</label></td>
									<td><input type="email" class="form-control" id="inputEmail"></td>
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
							<a id="query_ticket" class="btn-search" href="javascript:">查询</a>
						</div>
					</form>
				</div>
				<table class="table table-striped table-bordered table-condensed">
					<tr>
						<td style="width: 3%">序号</td>
						<td style="width: 20%">项目名称</td>
						<td style="width: 5%">创建人</td>
						<td style="width: 10%">创建时间</td>
						<td style="width: 20%">问题描述</td>
						<td style="width: 10%">联系人</td>
						<td style="width: 10%">产品名称</td>
						<td style="width: 5%">状态</td>
					</tr>
					<c:forEach var="prj" varStatus="status" items="${projects}">
						<tr>
							<td>${status.index}</td>
							<td>${prj.prjName}</td>
							<td>${prj.creator.engineerName}</td>
							<td><fmt:formatDate value="${prj.createDate}" pattern="yyyy-MM-dd"/></td>
							<td>${prj.clientDesc}</td>
							<td>${prj.contact.engineerName}</td>
							<td>${prj.productName}</td>
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
</body>
</html>