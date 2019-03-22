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
					学生添加信息 <small> <jsp:include page="../../icd_stu_time.jsp"></jsp:include>
					</small>
				</h1>
				<ol class="breadcrumb">
					<li><a href="./main.html"><i class="fa fa-home"></i> 首页</a></li>
					<li>学生信息管理</li>
					<li class="active"><a href="javascript:;">报考学生信息管理</a></li>
				</ol>
			</section>

			<!--主内容 -->
			<section class="content">
				<!-- right column -->
				<div class="col-md-12">
					<!-- Horizontal Form -->
					<div class="box box-info" style="border-radius: 12px;">
						<div class="box-header with-border">
							<h3 class="box-title">添加报考学生信息</h3>
						</div>
						<!-- /.box-header -->
						<!-- form start -->
						<form class="form-horizontal" method = "post" action = "<%=request.getContextPath()%>/mng/stu/add">
							<div class="box-body">
								<div class="form-group">
									<label for="inputEmail3" class="col-sm-2 control-label">姓名</label>

									<div class="col-sm-10">
										<input type="text" class="form-control" 
											placeholder="请输入学生姓名" name="sname" id="sname">
									</div>
								</div>
								
								<div class="form-group">
									<label for="inputEmail3" class="col-sm-2 control-label">身份证号</label>
 
									<div class="col-sm-10">
										<input type="text" class="form-control" 
											placeholder="请输入学生身份证号" name="idcard" id="idcard">
									</div>
								</div>
								<div class="form-group">
									<label for="inputEmail3" class="col-sm-2 control-label">性别</label>

									<div class="col-sm-10">
										<input type="radio"   name="gender" id="gender" value="1" checked="checked">男
									   <input type="radio"  name="gender" id="gender" value="0">女
									</div>
								</div>
								<div class="form-group">
									<label for="inputEmail3" class="col-sm-2 control-label">民族</label>

									<div class="col-sm-10">
										<input type="text" class="form-control" 
											placeholder="请输入学生民族" name="nation" id="nation">
									</div>
								</div>
								
								<div class="form-group">
									<label for="inputEmail3" class="col-sm-2 control-label">政治面貌</label>

									<div class="col-sm-10">
										<input type="text" class="form-control" 
											placeholder="请输入学生政治面貌" name="political" id="political">
									</div>
								</div>

								<div class="form-group">
									<label for="inputPassword3" class="col-sm-2 control-label">出生日期:</label>
									<div class="col-sm-10">
										<!--时间图标-->
										<div class="input-group">
											<span class="input-group-addon"><i
												class="fa  fa-calendar"></i></span> <input type="text"
												name="birthday" class="form-control" id="birthday" />
										</div>
									</div>
								</div>
								<div class="form-group">
									<label for="inputEmail3" class="col-sm-2 control-label">地址</label>

									<div class="col-sm-10">
										<input type="text" class="form-control" 
											placeholder="请输入地址" name="address" id="address">
									</div>
								</div>
                             <div class="form-group">
									<label for="inputEmail3" class="col-sm-2 control-label">生源地</label>

									<div class="col-sm-10">
										<input type="text" class="form-control" 
											placeholder="请输入生源地" name="source" id="source">
									</div>
								</div>
								  <div class="form-group">
									<label for="inputEmail3" class="col-sm-2 control-label">所在院校</label>

									<div class="col-sm-10">
										<input type="text" class="form-control" 
											placeholder="请输入所在院校" name="school" id="school">
									</div>
								</div>
								<div class="form-group">
									<label for="inputPassword3" class="col-sm-2 control-label">毕业时间:</label>
									<div class="col-sm-10">
										<!--时间图标-->
										<div class="input-group">
											<span class="input-group-addon"><i
												class="fa  fa-calendar"></i></span> <input type="text"
												name="gradutetime" class="form-control" id="gradutetime" />
										</div>
									</div>
								</div>
								  <div class="form-group">
									<label for="inputEmail3" class="col-sm-2 control-label">所学专业</label>

									<div class="col-sm-10">
										<input type="text" class="form-control" 
											placeholder="请输入所学专业" name="major" id="major">
									</div>
								</div>
								  <div class="form-group">
									<label for="inputEmail3" class="col-sm-2 control-label">联系方式</label>

									<div class="col-sm-10">
										<input type="text" class="form-control" 
											placeholder="请输入联系方式" name="mobile" id="mobile">
									</div>
								</div>
								  <div class="form-group">
									<label for="inputEmail3" class="col-sm-2 control-label">曾用名</label>

									<div class="col-sm-10">
										<input type="text" class="form-control" 
											placeholder="请输入曾用名" name="real_name" id="real_name">
									</div>
								</div>
								 <div class="form-group">
									<label for="inputEmail3" class="col-sm-2 control-label">邮箱</label>
                  
									<div class="col-sm-10">
										<input type="text" class="form-control" 
											placeholder="请输入邮箱" name="email" id="email">
									</div>
								</div>
								<div class="form-group">
									<label for="inputPassword3" class="col-sm-2 control-label">上传头像:</label>
									<div class="col-sm-10">
										<div class="input-group">
											<input type="text" name="title" class="form-control"
												readonly="readonly" id="btn_upload" placeholder="请选择要上传图片"
												style="height: 43px;"></input> <span
												class="input-group-addon"><i class="fa  fa-calendar"></i>
										</div>
									</div>
								</div>
								<div class="form-group">
									<label for="inputPassword3" class="col-sm-2 control-label">备注:</label>
									<div class="col-sm-10">
										<!--富文本编辑器控件-->
										<textarea id="memo" name="memo" rows="15"
											cols="100" class="form-control"></textarea>
									</div>
								</div>
							</div>
							<!-- /.box-body -->
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