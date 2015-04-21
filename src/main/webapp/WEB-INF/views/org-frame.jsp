<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%response.setCharacterEncoding("UTF-8");%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
</head>
<body>
	<div class="container-fluid">
		<div class="row-fluid">
			<jsp:include page="/WEB-INF/views/org-tree.jsp"></jsp:include>
			<div class="span10">
				<div class="tb-head nav-header">组织机构管理</div>
			</div>
		</div>
	</div>
	<%=request.getCharacterEncoding() %>
	<%=response.getCharacterEncoding() %>
</body>
</html>