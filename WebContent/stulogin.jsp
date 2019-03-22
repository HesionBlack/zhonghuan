<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<jsp:include page="icd_meta.jsp"></jsp:include>
<jsp:include page="icd_css.jsp"></jsp:include>
</head>

<body class="hold-transition login-page">
		<div class="login-box">
			<div class="login-logo">
				<a href="#">中环<b>招生考试</b>系统</a>
			</div>
				<%
					String msg = (String)request.getAttribute("msg");
				%>
			<div class="login-box-body"
				style="border-top: 6px solid #00A65A; border-radius: 6px;">
				<p class="login-box-msg" style="color: red; font-weight: bolder;">学生端后台管理入口</p>
	            <p class="login-box-msg" style="color: red; font-weight: bolder;">${msg}</p>  
				<form action="<%=request.getContextPath()%>/Login" method="post">
						<div class="form-group has-feedback">
							<input type="text" class="form-control" placeholder="用户名" name="usname" id="usname">
							<span class="glyphicon glyphicon-envelope form-control-feedback"></span>
						</div>
						<div class="form-group has-feedback">
							<input type="password" class="form-control" placeholder="密码" name="pwd" id="pwd">
							<span class="glyphicon glyphicon-lock form-control-feedback"></span>
						</div>
		
						<div class="row">
							<div class="col-xs-8">
								<input type="text" class="form-control" id="cc" name="cc"
									placeholder="验证码">
							</div>
							<div class="col-xs-4">
								<img src="<%=request.getContextPath() %>/vcServlet" />
							</div>
						</div>
		
						<div class="row" align="center">
							<div class="col-xs-4 checkbox" style="margin-left: 20px">
								<input type="submit" class="btn btn-success btn-block btn-flat" value="登录"></a>
							</div>
							<div class="col-xs-2" style="margin-top: 10px"></div>
							<div class="col-xs-4" style="margin-top: 10px;">
								<button class="btn btn-success btn-block btn-flat btn_register">注册 </button>
							</div>
						</div>
				</form>
			</div>
	</div>
	</div>
	<jsp:include page="icd_js.jsp"></jsp:include>


	<!--模态框开始--->
	
		<div class="modal modal-success fade" id="deletemodal">
			<div class="modal-dialog">
				<div class="modal-content">
				   <form action ="<%=request.getContextPath() %>/register" class="form-horizontal" method="post">
						<div class="modal-header">
							<button type="button" class="close" data-dismiss="modal"
								aria-label="Close">
								<span aria-hidden="true">&times;</span>
							</button>
							<h4 class="modal-title">学生注册功能</h4>
						</div>
						<div class="modal-body">
								<div class="box-body">
									<div class="form-group">
										<label for="inputEmail3" class="col-sm-2 control-label">用户名</label>
		
										<div class="col-sm-10">
											<input type="text" class="form-control" id="username"
												name="username" placeholder="请输入学生姓名">
										</div>
									</div>
									<div class="form-group">
										<label for="inputEmail3" class="col-sm-2 control-label">密码</label>
		
										<div class="col-sm-10">
											<input type="password" class="form-control" id="password"
												name="password" placeholder="请输入用户密码">
										</div>
									</div>
									<div class="form-group">
										<label for="inputPassword3" class="col-sm-2 control-label">备注:</label>
										<div class="col-sm-10">
											<!--富文本编辑器控件-->
											<textarea id="description" name="description" rows="4"
												cols="100" class="form-control"></textarea>
										</div>
									</div>
								</div>
							
						</div>
						<div class="modal-footer">
							<button type="button" class="btn btn-outline pull-left"
								data-dismiss="modal">取消</button>
							<input type="submit" class="btn btn-outline" id="btn_register" value="注册">
						</div>
				  	</form>
				</div>
				<!-- /.modal-content -->
			</div>
			<!-- /.modal-dialog -->
		</div>
	<!--模态框结束--->
	<jsp:include page="icd_js.jsp"></jsp:include>
	<script type="text/javascript">
		//注册按钮
		$(".btn_register").click(function() {
			//超连接href属性，href传给后台代码
			var url = $(this).attr("href"); //后台方法 delete?id=123;
			$("#deletemodal").modal('show');
			return false; //阻止原有动作
		});
		//富文本编辑器创建---显示哪个控件中
		var editor = KindEditor.create('textarea[name="description"]', {
			width : '100%',
			urlType : "", //设置站内本地URL：默认是""，可选值有"relative"、"absolute"、"domain"
			uploadJson : 'ke_upload', //指定上传文件的服务器端程序请求路径
			fileManagerJson : 'ke_manager', //指定浏览远程图片的服务器端程序请求路径
			allowFileManager : true
		//是否允许浏览远程服务器上的文件。
		});
	</script>
</body>

</html>