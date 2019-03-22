<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<jsp:include page="../../../icd_meta.jsp"></jsp:include>
<jsp:include page="../../../icd_css.jsp"></jsp:include>
</head>

<body class="hold-transition skin-green sidebar-mini fixed">
	<div class="wrapper">
		<jsp:include page="../../icd_stu_title.jsp"></jsp:include>
		<jsp:include page="../../icd_stu_left.jsp"></jsp:include>
		<!-- 主体内容 -->
		<div class="content-wrapper">
			<!-- Content Header (Page header) -->
			<section class="content-header">
				<h1>
					修改密码 <small> <jsp:include page="../../icd_stu_time.jsp"></jsp:include>
					</small>
				</h1>
				
				<ol class="breadcrumb">
					<li><a href="<%=request.getContextPath()%>/mng/stu/home.jsp"><i class="fa fa-home"></i> 首页</a></li>
					<li>系统管理</li>
					<li class="active"><a href="javascript:;">修改密码</a></li>
				</ol>
			</section>

			<!--主内容 -->
			<section class="content">
				<!-- right column -->
				<div class="col-md-12">
					<!-- Horizontal Form -->
					<div class="box box-info" style="border-radius: 12px;">
						<div class="box-header with-border">
							<h3 class="box-title">修改密码</h3>
						</div>
						<p style="color:red;font-weight=bolder;">${msg}</p>
						<!-- /.box-header -->
						<!-- form start -->
						<form class="form-horizontal" method = "post" action = "<%=request.getContextPath()%>/mng/stu/pwd">
							<div class="box-body">
								<div class="form-group">
									<label for="inputEmail3" class="col-sm-2 control-label">原密码</label>

									<div class="col-sm-10">
										<input type="password" class="form-control" 
											placeholder="请输入旧密码" name="oldpwd" id="oldpwd">
									</div>
								</div>
								<div class="form-group">
									<label for="inputEmail3" class="col-sm-2 control-label">新密码</label>
 
									<div class="col-sm-10">
										<input type="password" class="form-control" 
											placeholder="请输入新密码" name="newpwd" id="newpwd">
									</div>
								</div>
								<div class="form-group">
									<label for="inputEmail3" class="col-sm-2 control-label">确认密码</label>

									<div class="col-sm-10">
										<input type="password" class="form-control" 
											placeholder="请输入学生民族" name="okpwd" id="okpwd">
									</div>
								</div>
							<div class="box-footer">
								<button type="reset" class="btn btn-default">重置</button>
								<button type="submit" class="btn btn-info pull-right">确定</button>
							</div>
							<!-- /.box-footer -->
						</form>
					</div>
			</section>
			<!-- /.content -->
		</div>
		<!-- /.content-wrapper -->

		<!-- Main Footer -->
		<jsp:include page="../../icd_stu_foot.jsp"></jsp:include>
	</div>
	<!-- ./wrapper -->
	<!--删除模态框开始--->
	<div class="modal modal-danger fade" id="deletemodal">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					<h4 class="modal-title">删除对话框</h4>
				</div>
				<div class="modal-body">
					<p>是否确认删除&hellip;</p>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-outline pull-left"
						data-dismiss="modal">取消</button>
					<button type="button" class="btn btn-outline" id="btn_delete">确认</button>
				</div>
			</div>
			<!-- /.modal-content -->
		</div>
		<!-- /.modal-dialog -->
	</div>
	<!--删除模态框结束--->
	<jsp:include page="../../../icd_js.jsp"></jsp:include>
	<!--富文本编辑器结束 -->
	<!--富文本编辑器结束 -->
	<script type="text/javascript">
		//退出事件
		$("#btn_logout").click(function() {
			//取消
			$("#exitModal").modal("hide");
			//登录页面
			window.location.href = "../login.html";
		});

		//点击毕业日期控件
		$("#gradutetime").click(function() {
			WdatePicker(); //调用my97datepicker封装JS
		});
		//点击出生日期控件
		$("#birthday").click(function() {
			WdatePicker(); //调用my97datepicker封装JS
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

		//上传主图  调用富文本编辑中文件上传功能
		var editor2 = KindEditor.editor({
			allowFileManager : true
		//是否允许浏览远程服务器上的文件。
		});
		//单独富文本编辑器上传功能
		$("#btn_upload").click(
				function() {
					editor2.loadPlugin('image', function() {
						//富文本编辑图片上传对话框
						editor2.plugin.imageDialog({
							imageUrl : $("#url1").val(), //文件上传网址
							clickFn : function(url, title, width, height,
									border, align) {
								$('#url1').val(url);
								editor2.hideDialog();
							}
						});
					});
				});
	</script>
</body>

</html>