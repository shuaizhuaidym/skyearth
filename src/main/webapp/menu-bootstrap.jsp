<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<div class="span2">
	<div class="panel-group" id="accordion">
		<div class="panel panel-default">
			<div class="panel-heading">
				<h4 class="panel-title nav-header">
					<a data-toggle="collapse" data-parent="#accordion" href="#collapseOne" class="shadow-font">
						<span class="glyphicon glyphicon-folder-close"></span>项目管理
					</a>
				</h4>
			</div>
			<div id="collapseOne" class="panel-collapse collapse in">
				<div class="panel-body">
					<table class="table">
						<tbody>
							<tr>
								<td><span class="glyphicon glyphicon-pencil text-primary"></span><a href="http://www.jquery2dotnet.com/">Articles</a>
								</td>
							</tr>
							<tr>
								<td><span class="glyphicon glyphicon-flash text-success"></span><a href="http://www.jquery2dotnet.com/">News</a></td>
							</tr>
							<tr>
								<td><span class="glyphicon glyphicon-file text-info"></span><a href="http://www.jquery2dotnet.com/">Newsletters</a>
								</td>
							</tr>
							<tr>
								<td><span class="glyphicon glyphicon-comment text-success"></span>
								<a href="http://www.jquery2dotnet.com/">Comments</a>
									<span class="badge">42</span></td>
							</tr>
						</tbody>
					</table>
				</div>
			</div>
		</div>
		<div class="panel panel-default">
			<div class="panel-heading">
				<h4 class="panel-title nav-header">
					<a data-toggle="collapse" data-parent="#accordion" href="#collapseTwo" class="shadow-font">
						<span class="glyphicon glyphicon-th"> </span>统计分析</a>
				</h4>
			</div>
			<div id="collapseTwo" class="panel-collapse collapse">
				<div class="panel-body">
					<table class="table">
						<tbody>
							<tr>
								<td><a href="http://www.jquery2dotnet.com/">Orders</a> <span class="label label-success">$ 320</span></td>
							</tr>
							<tr>
								<td><a href="http://www.jquery2dotnet.com/">Invoices</a></td>
							</tr>
							<tr>
								<td><a href="http://www.jquery2dotnet.com/">Shipments</a></td>
							</tr>
							<tr>
								<td><a href="http://www.jquery2dotnet.com/">Tex</a></td>
							</tr>
						</tbody>
					</table>
				</div>
			</div>
		</div>
		<div class="panel panel-default">
			<div class="panel-heading">
				<h4 class="panel-title nav-header">
					<a data-toggle="collapse" data-parent="#accordion" href="#collapseOne" class="shadow-font">
						<span class="glyphicon glyphicon-folder-close"></span>流程管理
					</a>
				</h4>
			</div>
			<div id="collapseOne" class="panel-collapse collapse in">
				<div class="panel-body">
					<table class="table">
						<tbody>
							<tr>
								<td><span class="glyphicon glyphicon-pencil text-primary"></span><a href="http://www.jquery2dotnet.com/">Articles</a>
								</td>
							</tr>
							<tr>
								<td><span class="glyphicon glyphicon-flash text-success"></span><a href="http://www.jquery2dotnet.com/">News</a></td>
							</tr>
							<tr>
								<td><span class="glyphicon glyphicon-file text-info"></span><a href="http://www.jquery2dotnet.com/">Newsletters</a>
								</td>
							</tr>
							<tr>
								<td><span class="glyphicon glyphicon-comment text-success"></span><a href="http://www.jquery2dotnet.com/">Comments</a>
									<span class="badge">42</span></td>
							</tr>
						</tbody>
					</table>
				</div>
			</div>
		</div>
	</div>
</div>
<style type="text/css">
.panel-heading{
	border-bottom:1px dashed #ffffff;
}
.glyphicon {
	margin-right: 10px;
	
}

.panel-body {
	padding: 0px;
}

.panel-body table tr td {
	padding-left: 15px
}

.panel-body .table {
	margin-bottom: 0px;
}

.shadow-font{
		color: #ffffff;
		text-transform: uppercase;
		text-shadow: 0 1px 0 rgba(255, 255, 255, 0.5);
	}
</style>
<script src="VgZb_data/bootstrap.js"></script>
<script type="text/javascript">
	window.alert = function() {
	};
	var defaultCSS = document.getElementById('bootstrap-css');
	function changeCSS(css) {
		if (css)
			$('head > link')
					.filter(':first')
					.replaceWith(
							'<link rel="stylesheet" href="'+ css +'" type="text/css" />');
		else
			$('head > link').filter(':first').replaceWith(defaultCSS);
	}
	$(document).ready(function() {
		var iframe_height = parseInt($('html').height());
		window.parent.postMessage(iframe_height, 'http://bootsnipp.com');
	});
</script>