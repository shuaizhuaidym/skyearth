<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.opensymphony.com/sitemesh/decorator" prefix="decorator"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="zh">
<head>
<meta charset="utf-8">
<link href="${ctx}/resource/bootstrap/img/favicon.png" rel="icon" type="image/x-icon" />
<link href="${ctx}/resource/bootstrap/img/favicon.png" rel="shortcut icon" type="image/x-icon">

<title>JIT项目支持管理系统</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<c:set var="ctx" value="${pageContext.request.contextPath}" />

<link href="${ctx}/resource/bootstrap/css/bootstrap.css" rel="stylesheet">
<link href="${ctx}/resource/bootstrap/css/bootstrap-responsive.css" rel="stylesheet">

<!-- <script type="text/javascript" src="http://getfirebug.com/releases/lite/1.2/firebug-lite-compressed.js"></script> -->
<!-- Le styles -->
<style type="text/css">
html {
	margin: 0";
	padding: 0;
}

body {
	padding-top: 60px;
	padding-bottom: 40px;
}

.srch {
	background: #EEF1F8;
}
.srch input{
	width:128px;
}
@media ( max-width : 980px) {
	/* Enable use of floated navbar text */
	.navbar-text.pull-right {
		float: none;
		padding-left: 5px;
		padding-right: 5px;
	}
}

.lr {
	padding-left: 20px;
	padding-right: 20px;
}

.bread-nav {
	margin-top: -15px;
	margin-bottom: -15px;
	position: static
}

.rds {
	-webkit-border-radius: 5px;
	-moz-border-radius: 5px;
	border-radius: 5px;
}
</style>

<!-- HTML5 shim, for IE6-8 support of HTML5 elements -->
<!--[if lt IE 9]>
      <script src="../assets/js/html5shiv.js"></script>
    <![endif]-->

<!-- Fav and touch icons -->

</head>

<body>
	<div class="navbar navbar-inverse navbar-fixed-top lr">
		<div class="navbar-inner">
			<div class="container-fluid">
				<button type="button" class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
					<span class="icon-bar"></span> <span class="icon-bar"></span> <span class="icon-bar"></span>
				</button>
				<a class="brand" href="${ctx}/">JIT项目支持跟踪系统</a>
				<div class="nav-collapse collapse">
					<p class="navbar-text pull-right">
						Logged in as <a href="#" class="navbar-link">Username</a>
					</p>
					<ul class="nav">
						<li><a href="${ctx}/prj/new.action">项目新建</a></li>
						<li><a href="${ctx}/prj/query.action">项目查询</a></li>
						<li><a href="${ctx}/prj/statistic.action">项目统计</a></li>
						<li><a href="${ctx}/process/query.action">流程管理</a></li>
						<li><a href="${ctx}/org/frame.action">组织机构管理</a></li>
					</ul>
				</div>
				<!--/.nav-collapse -->
			</div>
		</div>
	</div>
	<div class="bread-nav lr">
		<ul class="breadcrumb">
			<li><a href="#">/Home</a></li>
			<li><a href="#">/Products</a></li>
			<li class="active">/Accessories</li>
		</ul>
	</div>
	<decorator:body />

	<hr>
	<div class="container-fluid">
		<footer>
			<p>&copy; Company 2013</p>
		</footer>
	</div>
	</div>
	<!--/.fluid-container-->

	<!-- Le javascript
    ================================================== -->
	<!-- Placed at the end of the document so the pages load faster -->
	<script src="${ctx}/resource/common/jquery-1.11.1.min.js"></script>
	<script src="${ctx}/resource/bootstrap/js/bootstrap-transition.js"></script>
	<script src="${ctx}/resource/bootstrap/js/bootstrap-alert.js"></script>
	<script src="${ctx}/resource/bootstrap/js/bootstrap-modal.js"></script>
	<script src="${ctx}/resource/bootstrap/js/bootstrap-dropdown.js"></script>
	<script src="${ctx}/resource/bootstrap/js/bootstrap-scrollspy.js"></script>
	<script src="${ctx}/resource/bootstrap/js/bootstrap-tab.js"></script>
	<script src="${ctx}/resource/bootstrap/js/bootstrap-tooltip.js"></script>
	<script src="${ctx}/resource/bootstrap/js/bootstrap-popover.js"></script>
	<script src="${ctx}/resource/bootstrap/js/bootstrap-button.js"></script>
	<script src="${ctx}/resource/bootstrap/js/bootstrap-collapse.js"></script>
	<script src="${ctx}/resource/bootstrap/js/bootstrap-carousel.js"></script>
	<script src="${ctx}/resource/bootstrap/js/bootstrap-typeahead.js"></script>
	<script type="text/javascript">
		$(document).ready(function () {
			var aMenuOneLi = $(".menu-one > li");
			var aMenuTwo = $(".menu-two");
			$(".menu-one > li > .header").each(function (i) {
				$(this).click(function () {
					if ($(aMenuTwo[i]).css("display") == "block") {
						$(aMenuTwo[i]).slideUp(300);
						$(aMenuOneLi[i]).removeClass("menu-show");
					} else {
						for (var j = 0; j < aMenuTwo.length; j++) {
							$(aMenuTwo[j]).slideUp(300);
							$(aMenuOneLi[j]).removeClass("menu-show");
						}
						$(aMenuTwo[i]).slideDown(300);
						$(aMenuOneLi[i]).addClass("menu-show");
					}
				});
			});
		});
	</script>
</body>
</html>
