<meta name="viewport" content="width=device-width, initial-scale=1.0">
<!-- 新 Bootstrap 核心 CSS 文件 -->
<link
	href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css"
	rel="stylesheet">
<!-- jQuery文件。务必在bootstrap.min.js 之前引入 -->
<script src="https://cdn.bootcss.com/jquery/2.1.1/jquery.min.js"></script>
<!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
<script
	src="https://cdn.bootcss.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	
<!DOCTYPE html>
<body>
<div class="container">
<div class="panel panel-primary">
	<div class="panel-heading">
	    <h3 class="panel-title">
	        员工信息
	    </h3>
	</div>
	<div class="panel-body">
<table class="table table-striped">
  <TR align="center">
	<TD width="150"><b>ID</b></TD>
	<TD width="150"><b>Name</b></TD>
	<TD width="150"><b>Age</b></TD>
	<TD width="150"><b>Phone</b></TD>
	<TD width="150"><b>Address</b></TD>
	<TD width="150"><b>Role</b></TD>
	<TD width="150"><b></b></TD>
  </TR>
  <#if userList??>
  <#list userList as user>
  <TR align="center">
    <TD>${user.id}</TD>
    <TD>${user.name}</TD>
    <TD>${user.age}</TD>
    <TD>${user.phone}</TD>
    <TD>${user.address}</TD>
    <TD>${user.role}</TD>
    <TD><A href="delUser.htm?id=${user.id}">删除</A>&nbsp;
        <A href="toModUser.htm?id=${user.id}">修改</A>
    </TD>
  </TR>
  </#list>
  </#if>
</table>
</body>
<A href="toAddUser.htm">添加</A>
</div>
</html>
