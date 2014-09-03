<!DOCTYPE html>
<html lang="en">
<head>
<meta http-equiv="content-type" content="text/html; charset=UTF-8">
<meta charset="utf-8">
<title>Accordion Menu - Bootsnipp.com</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="VgZb_data/bootstrap.css" rel="stylesheet" id="bootstrap-css">
<style type="text/css">
body {
	margin-top: 50px;
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
</style>
<script src="VgZb_data/jquery-1.js"></script>
<script src="VgZb_data/bootstrap.js"></script>
<script type="text/javascript">
        window.alert = function(){};
        var defaultCSS = document.getElementById('bootstrap-css');
        function changeCSS(css){
            if(css) $('head > link').filter(':first').replaceWith('<link rel="stylesheet" href="'+ css +'" type="text/css" />'); 
            else $('head > link').filter(':first').replaceWith(defaultCSS); 
        }
        $( document ).ready(function() {
          var iframe_height = parseInt($('html').height()); 
          window.parent.postMessage( iframe_height, 'http://bootsnipp.com');
        });
    </script>
</head>
<body>
	<div class="container">
		<div class="row">
			<div class="col-sm-3 col-md-3">
				<div class="panel-group" id="accordion">
					<div class="panel panel-default">
						<div class="panel-heading">
							<h4 class="panel-title">
								<a data-toggle="collapse" data-parent="#accordion" href="#collapseOne"><span
									class="glyphicon glyphicon-folder-close"> </span>Content</a>
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
											<td><span class="glyphicon glyphicon-flash text-success"></span><a href="http://www.jquery2dotnet.com/">News</a>
											</td>
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
					<div class="panel panel-default">
						<div class="panel-heading">
							<h4 class="panel-title">
								<a data-toggle="collapse" data-parent="#accordion" href="#collapseTwo"><span class="glyphicon glyphicon-th">
								</span>Modules</a>
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
					
				</div>
			</div>
			<div class="col-sm-9 col-md-9">
				<div class="well">
					<h1>Accordion Menu With Icon</h1>
					Admin Dashboard Accordion Menu
				</div>
			</div>
		</div>
	</div>
	<script type="text/javascript">
		</script>


</body>
</html>