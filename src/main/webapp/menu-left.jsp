<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<div class="span2">
	<div class="tb-head nav-header">操作菜单</div>
	<div class="well sidebar-nav" style="height: 100%">
		<ul class="nav nav-list">
			<li style="display:none"><a href="${ctx}/PrjListAction">项目查询</a></li>

			<li class="nav-header">流程管理</li>
			<li style="display:none"><a href="${ctx}/process/deploy.action">发布流程</a></li>
			
			<li class="nav-header">统计分析</li>
			<li><a href="<%=request.getContextPath()%>/PrjListAction">项目查询</a></li>
			
		</ul>
	</div>
	<!--/.well -->
</div>
<!--/span-->