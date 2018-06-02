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
	        查询条件
	    </h3>
	</div>
	<div class="panel-body">
<form action="qryUser.htm" method="post" class="form-horizontal">
<div class="form-group">
	<label for="id" class="col-sm-offset-3 col-sm-2 control-label">Id:</label>
	<div class="col-sm-3">
	<input type="text" name="id" id="id" size="20" maxlength="20"
		   	 				onmouseover="this.focus();" class="form-control" value="${(user.id)!}"/><br>
	</div>
</div>
<div class="form-group">
	<label for="id" class="col-sm-offset-3 col-sm-2 control-label">Name:</label>
	<div class="col-sm-3">
	<input type="text" name="name" id="name" size="20" maxlength="20"
		   	 				onmouseover="this.focus();" class="form-control" value="${(user.name)!}"/><br>
	</div>
</div>
<div class="form-group">
	<label for="id" class="col-sm-offset-3 col-sm-2 control-label">Age:</label>
	<div class="col-sm-3">
	<input type="text" name="age" id="age" size="20" maxlength="20"
		   	 				onmouseover="this.focus();" class="form-control" value="${(user.age)!}"/><br>
	</div>
</div>
<div class="form-group">
	<label for="id" class="col-sm-offset-3 col-sm-2 control-label">Phone:</label>
	<div class="col-sm-3">
	<input type="text" name="phone" id="phone" size="20" maxlength="20"
		   	 				onmouseover="this.focus();" class="form-control" value="${(user.phone)!}"/><br>
	</div>
</div>
<div class="form-group">
<label for="id" class="col-sm-offset-3 col-sm-2 control-label">Addres:</label>
	<div class="col-sm-3">
	<input type="text" name="address" id="address" size="20" maxlength="20"
		   	 				onmouseover="this.focus();" class="form-control" value="${(user.address)!}"/><br>
	</div>
</div>
<div class="form-group">
	<label for="id" class="col-sm-offset-3 col-sm-2 control-label">Role:</label>
	<div class="col-sm-3">
	<input type="text" name="role" id="role" size="20" maxlength="20"
		   	 				onmouseover="this.focus();" class="form-control" value="${(user.role)!}"/><br>
	</div>
</div>
<div class="form-group">
<div style="text-align:center">
	<input type="submit" value="查询" class="btn btn-primary"/>
</div>
</div>
</form>
</div>
</div>
</div>
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
		  <TR align="center" id="${user.id}">
		    <TD>${user.id}</TD>
		    <TD>${user.name}</TD>
		    <TD>${user.age}</TD>
		    <TD>${user.phone}</TD>
		    <TD>${user.address}</TD>
		    <TD>${user.role}</TD>
		    <TD><A href="javascript:void(0);" onclick="delUser(${user.id})">删除</A>&nbsp;
		        <A href="toModUser.htm?id=${user.id}">修改</A>
		    </TD>
		  </TR>
		  </#list>
		  </#if>
		</table>
		<A href="toAddUser.htm">添加</A>
	</div>
</div>
</div>
</body>
</html>
<script>
function delUser(id) {
	$.post("delUser.json", {
		id : id
	}, function(data, status) {
		$("#" + id).remove();
	});
}
</script>
