<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<body>
	<style type="text/css">
		.content .menu-one > li {width: 200px; height: auto; overflow: hidden; border-top: 1px solid #ddd;}
		/* .content .menu-one > li.firstChild {border: 0;} */
		.content .menu-one .header {height: 35px; background: #167ac6; line-height: 34px; text-indent: 15px; cursor: pointer;}
		.content .menu-one .header:hover,
		.content .menu-one .menuOne-current {background: #167ac6;}
		.content .menu-one .header > span {display: block;}
		.content .menu-one .header .txt {float: left; color: #fff;}
		.content .menu-one .header .arrow {float: right; width: 35px; height: 35px; background: url(resource/menu/arrow-d.png) no-repeat center center;}
		.content .menu-two {display: none; width: 220px; height: auto;}
		.content .menu-two li {width:200px; height:35px; background: #f9f9f9; line-height: 34px; text-indent: 40px;list-style:none}
		.content .menu-two li.firstChild {border: 0;}
		.content .menu-two li a {display: block; color: #167ac6;}
		.content .menu-two li:hover,
		.content .menu-two li.menuTwo-current {background: #fff;}

		.content .menu-show .header {background: #167ac6;border-top:1px solid #ddd}
		.content .menu-show .header .arrow {background-image: url(resource/menu/arrow-u.png);}
	</style>
	<div class="content">
		<ul class="menu-one">
			<li class="firstChild">
				<div class="header">
					<span class="txt">一、HTML5基础教程</span>
					<span class="arrow"></span>
				</div>
				<ul class="menu-two">
					<li class="firstChild"><a href="#">HTML5基础教程01</a></li>
					<li><a href="#">HTML5基础教程02</a></li>
					<li><a href="#">HTML5基础教程03</a></li>
					<li><a href="#">HTML5基础教程04</a></li>
				</ul>
			</li>
			<li>
				<div class="header">
					<span class="txt">二、CSS3基础教程</span>
					<span class="arrow"></span>
				</div>
				<ul class="menu-two">
					<li class="firstChild"><a href="#">CSS3基础教程01</a></li>
					<li><a href="#">CSS3基础教程02</a></li>
					<li><a href="#">CSS3基础教程03</a></li>
					<li><a href="#">CSS3基础教程04</a></li>
				</ul>
			</li>
			<li>
				<div class="header">
					<span class="txt">三、JavaScript基础教程</span>
					<span class="arrow"></span>
				</div>
				<ul class="menu-two">
					<li class="firstChild"><a href="#">JavaScript基础教程01</a></li>
					<li><a href="#">JavaScript基础教程02</a></li>
					<li><a href="#">JavaScript基础教程03</a></li>
					<li><a href="#">JavaScript基础教程04</a></li>
				</ul>
			</li>
			<li>
				<div class="header">
					<span class="txt">四、PHP基础教程</span>
					<span class="arrow"></span>
				</div>
				<ul class="menu-two">
					<li class="firstChild"><a href="#">PHP基础教程01</a></li>
					<li><a href="#">PHP基础教程02</a></li>
					<li><a href="#">PHP基础教程03</a></li>
					<li><a href="#">PHP基础教程04</a></li>
				</ul>
			</li>
			<li>
				<div class="header">
					<span class="txt">五、IOS基础教程</span>
					<span class="arrow"></span>
				</div>
				<ul class="menu-two">
					<li class="firstChild"><a href="#">IOS基础教程01</a></li>
					<li><a href="#">IOS基础教程02</a></li>
					<li><a href="#">IOS基础教程03</a></li>
					<li><a href="#">IOS基础教程04</a></li>
					<li><a href="http://beyondweb.cn/" title="WEB前端开发">BeyondWeb.cn</a></li>
				</ul>
			</li>
		</ul>
	</div>

</body>
</html>