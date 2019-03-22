<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<jsp:include page="../../../icd_meta.jsp"></jsp:include>
<jsp:include page="../../../icd_css.jsp"></jsp:include>
</head>
<!--  sidebar-collapse fixed -->
<body class="hold-transition skin-green sidebar-mini fixed">
	<div class="wrapper">
		<jsp:include page="../../icd_stu_title.jsp"></jsp:include>
		<jsp:include page="../../icd_stu_left.jsp"></jsp:include>

		<!-- Content Wrapper. Contains page content -->
		<div class="content-wrapper">
			<!-- Content Header (Page header) -->
			<section class="content-header">
				<h1>
					学生信息 <small><jsp:include page="../../icd_stu_time.jsp"></jsp:include></small>
				</h1>
				<ol class="breadcrumb">
					<li><a href="./main.html"><i class="fa fa-home"></i> 首页</a></li>
					<li><a href="#">学生信息管理</a></li>
					<li class="active"><a href="javascript:;">报考学生信息管理</a></li>
				</ol>
			</section>

			<!-- Main content -->
			<section class="content">
				<!---组合查询-->
				<!-- Small boxes (Stat box) -->
				<div class="row">
					<div class="col-lg-3 col-xs-6">
						<!-- small box -->
						<div class="small-box bg-aqua">
							<div class="inner">
								<h3>150</h3>

								<p>成交客户</p>
							</div>
							<div class="icon">
								<i class="fa fa-shopping-cart"></i>
							</div>
							<a href="#" class="small-box-footer"> 客户信息 <i
								class="fa fa-arrow-circle-right"></i>
							</a>
						</div>
					</div>
					<!-- ./col -->
					<div class="col-lg-3 col-xs-6">
						<!-- small box -->
						<div class="small-box bg-green">
							<div class="inner">
								<h3>
									53<sup style="font-size: 20px">%</sup>
								</h3>

								<p>Bounce Rate</p>
							</div>
							<div class="icon">
								<i class="ion ion-stats-bars"></i>
							</div>
							<a href="#" class="small-box-footer"> More info <i
								class="fa fa-arrow-circle-right"></i>
							</a>
						</div>
					</div>
					<!-- ./col -->
					<div class="col-lg-3 col-xs-6">
						<!-- small box -->
						<div class="small-box bg-yellow">
							<div class="inner">
								<h3>44</h3>

								<p>User Registrations</p>
							</div>
							<div class="icon">
								<i class="ion ion-person-add"></i>
							</div>
							<a href="#" class="small-box-footer"> More info <i
								class="fa fa-arrow-circle-right"></i>
							</a>
						</div>
					</div>
					<!-- ./col -->
					<div class="col-lg-3 col-xs-6">
						<!-- small box -->
						<div class="small-box bg-red">
							<div class="inner">
								<h3>65</h3>

								<p>Unique Visitors</p>
							</div>
							<div class="icon">
								<i class="ion ion-pie-graph"></i>
							</div>
							<a href="#" class="small-box-footer"> More info <i
								class="fa fa-arrow-circle-right"></i>
							</a>
						</div>
					</div>
					<!-- ./col -->
				</div>
				<!-- /.row -->
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

	<!--退出模态框开始--->
	<div class="modal modal-success fade" id="exitModal">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					<h4 class="modal-title">退出对话框</h4>
				</div>
				<div class="modal-body">
					<p>是否确认退出&hellip;</p>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-outline pull-left"
						data-dismiss="modal">取消</button>
					<button type="button" class="btn btn-outline" id="btn_logout">确认</button>
				</div>
			</div>
			<!-- /.modal-content -->
		</div>
		<!-- /.modal-dialog -->
	</div>
	<!--退出模态框结束--->
	<jsp:include page="../../../icd_js.jsp"></jsp:include>

	<script type="text/javascript">
		//退出事件
		$("#btn_logout").click(function() {
			//取消
			$("#exitModal").modal("hide");
			//登录页面
			window.location.href = "../login.html";
		});
		//删除按钮
		$(".a-delete").click(function() {
			//超连接href属性，href传给后台代码
			var url = $(this).attr("href"); //后台方法 delete?id=123;
			$("#deletemodal").modal('show');
			//点击确认删除按钮
			$("#btn_delete").one('click', function() {
				window.location.href = url; //跳转至后台（删除数据库。。。。）
				$("#deletemodal").modal("hide");
				return false; //阻止原有动作
			});
			return false; //阻止原有动作
		});
	</script>
</body>

</html>