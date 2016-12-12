<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>新建项目</title>
<style type="text/css">
	.lb{display:inline-block;width:120px;text-align:right}
	.ipt{width:200px}
</style>
</head>
<body>
	<div>
		<label class="lb">项目(甲方)名称</label><input class="ipt">
	</div>
	<div>
		<label class="lb">问题摘要</label><input class="ipt">
	</div>
	<div>
		<label class="lb">详细描述</label><textarea class="ipt"></textarea>
	</div>
	<div>
		<label class="lb">网关/客户端版本</label><input class="ipt">
	</div>
	<div>
		<label class="lb">应用接入方式</label><select class="ipt"><option value="Agent">Agent</option><option value="Agent">正向代理</option></select>
	</div>
</body>
</html>