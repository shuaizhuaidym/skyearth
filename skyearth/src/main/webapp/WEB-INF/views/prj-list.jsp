<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<body>
	<div class="container-fluid">
		<div class="row-fluid">
			<jsp:include page="/menu-left.jsp"></jsp:include>
			<div class="span10">
				<div class="tb-head nav-header">
					查询 <a> <img src="resource/common/excel.png" width="26" height="26" border="0" alt="export" align="right" />
				</div>
				</a>
				<div class="sear-box">
					<form id="queryLeftForm" enctype="application/x-www-form-urlencoded" method="get">
						<div class="table-responsive;float:left;width:600px">
							<table>
								<tr>
									<td><label for="inputEmail" class="control-label col-xs-2">项目名称</label></td>
									<td><input type="email" class="form-control" id="inputEmail"></td>
									<td><label for="inputEmail" class="control-label col-xs-2">反馈时间</label></td>
									<td><input type="email" class="form-control" id="inputEmail" ></td>
									<td><label for="inputEmail" class="control-label col-xs-2">处理人</label></td>
									<td><input type="email" class="form-control" id="inputEmail" placeholder=""></td>
									<td><label for="inputEmail" class="control-label col-xs-2">项目类型</label></td>
									<td><input type="email" class="form-control" id="inputEmail" ></td>
								</tr>
								<tr>
									<td><label for="inputEmail" class="control-label col-xs-2">项目编号</label></td>
									<td><input type="email" class="form-control" id="inputEmail" placeholder=""></td>
									<td><label for="inputEmail" class="control-label col-xs-2">问题描述</label></td>
									<td><input type="email" class="form-control" id="inputEmail" ></td>
									<td><label for="inputEmail" class="control-label col-xs-2">状态</label></td>
									<td><input type="email" class="form-control" id="inputEmail" placeholder=""></td>
									<td><label for="inputEmail" class="control-label col-xs-2">Email</label></td>
									<td><input type="email" class="form-control" id="inputEmail" ></td>
								</tr>
							</table>
						</div>
						<div style="float: right; margin-top: -42px;padding-right:32px">
							<a id="query_ticket" class="btn-search" href="javascript:">查询</a>
						</div>
					</form>
				</div>
				<table class="table table-striped table-bordered table-condensed">
				<c:forEach var="prj" items="${projects}">
					<tr>
						<td>${prj.prjId}</td>
						<td>${prj.prjName}</td>
						<td>sadf</td>
						<td>sadf</td>
						<td>sadf</td>
					</tr>
				</c:forEach>
					<tr>
						<td>sadf</td>
						<td>sadf</td>
						<td>sadf</td>
						<td>sadf</td>
						<td>sadf</td>
					</tr>
					<tr>
						<td>sadf</td>
						<td>sadf</td>
						<td>sadf</td>
						<td>sadf</td>
						<td>sadf</td>
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
			</div>
		</div>
	</div>
</body>
</html>