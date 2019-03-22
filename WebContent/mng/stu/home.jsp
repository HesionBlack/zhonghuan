<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<jsp:include page="../../icd_meta.jsp"></jsp:include>
<jsp:include page="../../icd_css.jsp"></jsp:include>
</head>
<!--  sidebar-collapse fixed -->
<body class="hold-transition skin-green sidebar-mini fixed">
	<div class="wrapper">
		<jsp:include page="../icd_stu_title.jsp"></jsp:include>
		<jsp:include page="../icd_stu_left.jsp"></jsp:include>

		<!-- Content Wrapper. Contains page content -->
		<div class="content-wrapper">
			<!-- Content Header (Page header) -->
			<section class="content-header">
				<h1>
					学生信息 <small><jsp:include page="../icd_stu_time.jsp"></jsp:include></small>
				</h1>
				<ol class="breadcrumb">
					<li><a href="<%=request.getContextPath()%>/mng/stu/home.jsp"><i class="fa fa-home"></i> 首页</a></li>
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
								<h3>信息管理</h3>

								<p>StudentInfomation</p>
							</div>
							<div class="icon">
								<i class="ion ion-stats-bars"></i>
							</div>
							<a href="<%=request.getContextPath() %>/mng/stu/List"" class="small-box-footer"> 信息管理</a>
						</div>
					</div>
					<!-- ./col -->
					<div class="col-lg-3 col-xs-6">
						<!-- small box -->
						<div class="small-box bg-green">
							<div class="inner">
								<h3>
									考试信息录入
								</h3>

								<p>InformationEntry</p>
							</div>
							<div class="icon">
								<i class="ion ion-stats-bars"></i>
							</div>
							<a href="#" class="small-box-footer"> 考试信息录入 
							</a>
						</div>
					</div>
			</div>
			</div>
					<!-- ./col -->
				<!-- /.row -->
	<jsp:include page="../../icd_js.jsp"></jsp:include>

</body>

</html>