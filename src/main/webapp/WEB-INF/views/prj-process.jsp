<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<html>
<body>
	<div class="container-fluid">
		<div class="row-fluid">
			<jsp:include page="/menu-bootstrap.jsp"></jsp:include>
			<div class="span10">
				<div class="tb-head"></div>
				<div>
					当前登录用户[${userName}]| <a href="deploy.jsp">发布新流程</a>|<a href="login.jsp">登录</a>
				</div>
				<div>
					<h2>流程列表</h2>
					<table>
						<tr>
							<td>ID</td>
							<td>Name</td>
							<td>Version</td>
							<td>操作</td>
						</tr>
						<%
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

					<h2>实例列表</h2>
					<table>
						<tr>
							<td>ID</td>
							<td>活动</td>
							<td>状态</td>
							<td>操作</td>
						</tr>
						<%
							for (ProcessInstance pi : piList) {
						%>
						<tr>
							<td><%=pi.getId()%></td>
							<td><%=pi.findActiveActivityNames()%></td>
							<td><%=pi.getState()%></td>
							<td><a href="view.jsp?id=<%=pi.getId()%>">查看</a></td>
						</tr>
						<%
							}
						%>
					</table>

					<h2>任务列表</h2>
					<table>
						<tr>
							<td>ID</td>
							<td>名称</td>
							<td>操作</td>
						</tr>
						<%
							for (Task task : taskList) {
						%>
						<tr>
							<td><%=task.getId()%></td>
							<td><%=task.getName()%></td>
							<td><a href="<%=task.getFormResourceName()%>?taskId=<%=task.getId()%>">查看</a><br /></td>
						</tr>
						<%
							}
						%>
					</table>
				</div>
			</div>

			<form>

				流程列表
				<button type="submit" class="btn btn-primary">查询</button>
			</form>
		</div>
	</div>
</body>
</html>