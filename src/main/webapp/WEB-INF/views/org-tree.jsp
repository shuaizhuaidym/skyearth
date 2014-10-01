<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<body>
	<link rel="stylesheet" type="text/css" href="../../resources/css/ext-all.css" />
	<script type="text/javascript" src="../../adapter/ext/ext-base.js"></script><script type="text/javascript" src="${ctx}/resource/extjs/ext-all-3.4.0.js"></script>
<div class="span2">
	<div id="div_tree">tree</div>
</div>
<script type="text/javascript">
		Ext.BLANK_IMAGE_URL = '${ctx}/images/default/s.gif';
		$(function() {
			var treeRoot = new Ext.tree.AsyncTreeNode({
				id : "0",
				text : "组织机构管理",
				expanded : true
			});
			var tree = new Ext.tree.TreePanel({
				id : "orgTree",
				renderTo : 'div_tree',
				autoScroll : true,
				animate : true,
				enableDD : true,
				containerScroll : true,
				border : false,
				rootVisible : false,
				root : treeRoot,
				loader : new Ext.tree.TreeLoader({
					dataUrl : "${ctx}/org/tree.action",
					baseParams : {
						parent_id : 0
					},
					clearOnLoad : true,

					listeners : {
						"beforeload" : function(treeloader, node) {
							try {
								treeloader.baseParams.parent_id = node.id;
							} catch (e) {
							}
						}
					}
				})
			});
			tree.expandAll();
		});
	</script>
</body>
</html>