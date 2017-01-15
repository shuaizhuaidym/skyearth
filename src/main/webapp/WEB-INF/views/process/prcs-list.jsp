<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />

<%@ page import="org.activiti.engine.repository.ProcessDefinition"%>

<%@ page import="org.activiti.engine.runtime.ProcessInstance"%>
<%@ page import="java.util.List"%>
<%@ page import="java.util.ArrayList"%>
<html>
<body>
	<div class="container-fluid">
		<div class="row-fluid">
			<jsp:include page="/menu-bootstrap.jsp"></jsp:include>
			<div class="span10">
				<div class="tb-head nav-header">
					流程列表
					<div style="float: right; cursor: pointer">
						<a href="preDeploy.action">发布新流程</a>
					</div>
				</div>
				<div>
					<table>
						<tr>
							<td>ID</td>
							<td>Name</td>
							<td>Version</td>
							<td>操作</td>
						</tr>
						<%
								List<ProcessDefinition> list = new ArrayList<ProcessDefinition>();
								for (ProcessDefinition pd : list) {
							%>
						<tr>
							<td><%=pd.getId()%></td>
							<td><%=pd.getName()%></td>
							<td><%=pd.getVersion()%></td>
							<td><a href="remove.jsp?deploymentId=<%=pd.getDeploymentId()%>">删除</a>| <a href="start.jsp?id=<%=pd.getId()%>">开始</a>
							</td>
						</tr>
						<%
								}
							%>
					</table>
					<div>
						<table class="table table-striped table-bordered table-condensed">
							<tr style="font-weight: bold; background-color: #00ff00;">
								<td style="font-weight: bold; background-color: #167ac6">序号</td>

								<td style="font-weight: bold; background-color: #167ac6">ID</td>
								<td style="font-weight: bold; background-color: #167ac6">Name</td>
								<td style="font-weight: bold; background-color: #167ac6">Version</td>
								<td style="font-weight: bold; background-color: #167ac6">操作</td>

							</tr>
							<c:forEach var="proc" items="${processDefinitions}" varStatus="status">
								<tr>
									<td>${proc.id}</td>
									<td>${proc.name}</td>
									<td>${proc.version}</td>
									<td><a href="start.jsp?id=${proc.id}">开始</a>| <a href="remove.jsp?deploymentId=${proc.deploymentId}">删除</a></td>
								</tr>
							</c:forEach>
						</table>
					</div>
					<div>
						<div class="tb-head nav-header">
							实例列表
							<div style="float: right; cursor: pointer">
								<a href="#">操作</a>
							</div>
						</div>
						<table>
							<tr>
								<td>ID</td>
								<td>活动</td>
								<td>状态</td>
								<td>操作</td>
							</tr>
							<c:forEach var="depl" items="${deployments}" varStatus="status">
								<tr>
									<td>${depl.id}</td>
									<td>${depl.name}</td>
									<td>${depl.category}</td>
									<td><a href="start.jsp?id=${depl.id}">开始</a>| <a href="remove.jsp?deploymentId=${depl.deploymentId}">删除</a></td>
								</tr>
							</c:forEach>
							<tr>
								<td></td>
								<td></td>
								<td></td>
								<td><a href="view.jsp?id">查看</a></td>
							</tr>

						</table>

						<div class="tb-head nav-header">
							任务列表
							<div style="float: right; cursor: pointer">
								<a href="preDeploy.action">发布新流程</a>
							</div>
						</div>

						<table>
							<tr>
								<td>ID</td>
								<td>名称</td>
								<td>操作</td>
							</tr>

							<tr>
								<td></td>
								<td></td>
								<td><a href="?taskId=">查看</a><br /></td>
							</tr>

						</table>
					</div>
				</div>

				<form>
					<button type="submit" class="btn btn-primary">查询</button>
				</form>
			</div>
		</div>
	</div>

</body>
</html>