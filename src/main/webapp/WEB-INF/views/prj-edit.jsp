<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html lang="zh">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

</head>
<body>
	<div class="container-fluid">
		<div class="row-fluid">
			<jsp:include page="/menu-bootstrap.jsp"></jsp:include>
			<div class="span10">

				<div class="tb-head nav-header">编辑项目</div>
				<form:form action="${ctx}/prj/create.action" modelAttribute="project" method="post">

					<table class="table table-striped table-bordered table-condensed form-table">
						<tr>
							<td><label class="control-label col-xs-2">项目编号</label></td>
							<td><form:input path="prjSerial" cssClass="form-control" /></td>
							<td><label class="control-label col-xs-2">项目名称</label></td>
							<td><form:input path="prjName" class="form-control"/></td>
						</tr>
						<tr>
							<td><label class="control-label col-xs-2">问题类型</label></td>
							<td><form:input path="prjType" class="form-control"/>下拉选</td>
							<td><label class="control-label col-xs-2">项目经理</label></td>
							<td><form:input path="manager" class="form-control"/></td>
						</tr>
						<tr>
							<td><label class="control-label col-xs-2">项目所属行业</label></td>
							<td><input type="text" name="industry" class="form-control"></td>
							<td><label class="control-label col-xs-2">反馈人</label></td>
							<td><input type="text" name="contact" class="form-control"></td>
						</tr>
						<tr>
							<td><label class="control-label col-xs-2">反馈时间</label></td>
							<td><input type="text" name="createDate" class="form-control"></td>
							<td><label class="control-label col-xs-2">反馈人联系方式</label></td>
							<td><input type="text" class="form-control"></td>
						</tr>
						<tr>
							<td><label class="control-label col-xs-2">处理人</label></td>
							<td><input type="text" name="engineer" class="form-control"></td>
							<td><label class="control-label col-xs-2">响应时间</label></td>
							<td><input type="text" class="form-control"></td>
						</tr>
						<tr>
							<td><label class="control-label col-xs-2">创建人</label></td>
							<td><input type="text" name="creator.engineerId" class="form-control"></td>
							<td><label class="control-label col-xs-2">创建时间</label></td>
							<td><input type="text" name="createDate" class="form-control"></td>
						</tr>
						<tr>
							<td><label class="control-label col-xs-2">创建人所在部门</label></td>
							<td><input type="text" name="creatorDept" class="form-control"></td>
							<td><label class="control-label col-xs-2">更新时间</label></td>
							<td><input type="text" name="" class="form-control"></td>
						</tr>
						<tr>
							<td><label class="control-label col-xs-2">当前状态</label></td>
							<td><form:select path="status" items="${status}" cssClass="form-control"></form:select>
							<td><label class="control-label col-xs-2">项目阶段</label></td>
							<td><form:select path="stage" items="${stage}" cssClass="form-control"></form:select></td>
						</tr>
						<tr>
							<td><label class="control-label col-xs-2">产品名称</label></td>
							<td><input type="text" name="productName" class="form-control"></td>
							<td><label class="control-label col-xs-2">产品版本</label></td>
							<td><input type="text" name="productVersion" class="form-control"></td>
						</tr>
						<tr>
							<td>反馈人问题描述</td>
							<td colspan="3"><form:textarea path="clientDesc" rows="4" cols="128" style="width: 81.5%"></form:textarea></td>
						</tr>
						<tr>
							<td>处理人排查结果</td>
							<td colspan="3"><textarea name="realCause" rows="4" cols="128" style="width: 81.5%"></textarea><a>插入当前日期</a></td>
						</tr>
					</table>
					<button type="submit" class="btn btn-primary">保存</button>
					<button type="reset" class="btn">返回</button>
				</form:form>
			</div>
		</div>
	</div>
</body>
</html>