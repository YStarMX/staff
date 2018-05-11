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
<div class="container">
<div class="panel panel-primary">
	<div class="panel-heading">
		<h3 class="panel-title">修改信息</h3>
	</div>
	<div class="panel-body">
		<form class="form-horizontal" role="form" action="modUser.htm" method="post">
			<input type="hidden" name="id" value="${user.id}">
			<div class="form-group">
				<label class="col-sm-3 control-label">name</label>
				<div class="col-sm-6">
					<input class="form-control" type="text" name="name" value="${user.name}" required="required" maxlength="50">
				</div>
			</div>
			<div class="form-group">
				<label class="col-sm-3 control-label">age</label>
				<div class="col-sm-6">
					<input class="form-control" type="text" name="age" value="${user.age}" required="required" pattern="[1-9][0-9]" title="两位数">
				</div>
			</div>
			<div class="form-group">
				<label class="col-sm-3 control-label">phone</label>
				<div class="col-sm-6">
					<input class="form-control" type="text" name="phone" value="${user.phone}" required="required" pattern="1[0-9]{10}" title="11位手机号码">
				</div>
			</div>
			<div class="form-group">
				<label class="col-sm-3 control-label">address</label>
				<div class="col-sm-6">
					<input class="form-control" type="text" name="address" value="${user.address}" required="required" maxlength="100">
				</div>
			</div>
			<div class="form-group">
				<label class="col-sm-3 control-label">role</label>
				<div class="col-sm-6">
					<input class="form-control" type="text" name="role" value="${user.role}" required="required" pattern="[A|N]">
				</div>
			</div>
			<div class="form-group">
				<div class="col-sm-offset-3 col-sm-6">
					<input type="submit" value="保存修改"
						class="btn btn-primary">
				</div>
			</div>
		</form>
	</div>
</div>
</div>