<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<body>
	<div class="container-fluid">
		<div class="row-fluid">
			<jsp:include page="/menu-bootstrap.jsp" />
			<div class="span10">
				<div class="tb-head nav-header">
					查询
				</div>
				<table class="table table-striped table-bordered table-condensed">
					<tr style="font-weight: bold; background-color: #00ff00;">
						<td style="width: 5%; font-weight: bold; background-color: #167ac6">序号</td>
						<td style="width: 15%; font-weight: bold; background-color: #167ac6">字典名称</td>
						<td style="width: 8%; font-weight: bold; background-color: #167ac6">字典类型</td>
						<td style="width: 20%; font-weight: bold; background-color: #167ac6">用途描述</td>
						<td style="width: 10%; font-weight: bold; background-color: #167ac6">创建时间</td>
						<td style="width: 10%; font-weight: bold; background-color: #167ac6">最后更新时间</td>
						<td style="width: 5%; font-weight: bold; background-color: #167ac6">创建人</td>
						<td style="width: 8%; font-weight: bold; background-color: #167ac6">字典编码</td>
						<td style="width: 10%; font-weight: bold; background-color: #167ac6">状态(启用/停用)</td>
					</tr>
				</table>
			</div>
		</div>
	</div>
</body>
</html>