<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />

<link rel="stylesheet" type="text/css" href="${ctx}/resource/extjs/css/ext-all.css" />
<script type="text/javascript" src="${ctx}/resource/extjs/ext-base-3.4.0.js"></script>
<script type="text/javascript" src="${ctx}/resource/extjs/ext-all-3.4.0.js"></script>
<div class="span2" style="width: 14.5299%; margin: 0">
	<div class="panel-group" id="accordion">
		<div class="panel panel-default">
			<div class="panel-heading">
				<h4 class="panel-title nav-header">项目管理</h4>
			</div>
		</div>
	</div>
	<div id="div_tree"></div>
	<script type="text/javascript">
		Ext.BLANK_IMAGE_URL = '${ctx}/resource/extjs/images/default/s.gif';
		Ext.onReady(function(){
		    var tree = new Ext.tree.TreePanel({
		        renderTo:'div_tree',
		        useArrows:true,
		        autoScroll:true,
		        animate:true,
		        enableDD:true,
		        containerScroll: true,
		        rootVisible: false,
		        frame: true,
		        root: {
		            nodeType: 'async'
		        },
		        
		        // auto create TreeLoader
		        dataUrl: '${ctx}/resource/extjs/check-nodes.json',
		        
		        listeners: {
		            'checkchange': function(node, checked){
		                if(checked){
		                    node.getUI().addClass('complete');
		                }else{
		                    node.getUI().removeClass('complete');
		                }
		            }
		        }
		    });

		    tree.getRootNode().expand(true);
		});
	</script>
</div>