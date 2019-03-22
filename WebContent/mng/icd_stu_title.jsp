<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!-- Main Header -->
<header class="main-header">
	<!-- Logo -->
	<a href="<%=request.getContextPath()%>/mng/stu/home.jsp" class="logo"> <!-- mini logo for sidebar mini 50x50 pixels -->
		<span class="logo-mini"><b>学</b></span> <!-- logo for regular state and mobile devices -->
		<span class="logo-lg"><b>学生端</b></span>
	</a>

	<!-- Header Navbar -->
	<nav class="navbar navbar-static-top" role="navigation">
		<!-- Sidebar toggle button-->
		<a href="#" class="sidebar-toggle" data-toggle="offcanvas"
			role="button"> <span class="sr-only">切换侧边栏</span>
		</a>
		<!-- Navbar Right Menu -->
		<div class="navbar-custom-menu">
			<ul class="nav navbar-nav">
				<!-- User Account Menu -->
				<li class="dropdown user user-menu">
					<!-- Menu Toggle Button --> <a href="#" class="dropdown-toggle"
					data-toggle="dropdown"> <!-- The user image in the navbar--> <img
						src="<%=request.getContextPath()%>/adminlte/img/user1-128x128.jpg"
						class="user-image" alt="User Image"> <!-- hidden-xs hides the username on small devices so only the image appears. -->
						<span class="hidden-xs">${curr_stu.login}</span>
				</a>
					<ul class="dropdown-menu">
						<!-- The user image in the menu -->
						<li class="user-header"><img
							src="<%=request.getContextPath()%>/adminlte/img/user1-128x128.jpg" class="img-circle"
							alt="User Image">
							<p>
								- Java Developer <small>${curr_stu.regitster_time}</small>
							</p></li>
						<!-- Menu Body -->
						<li class="user-body">
							<div class="row">
								<div class="col-xs-4 text-center">
									<a href="<%=request.getContextPath()%>/mng/stu/loged/loged.jsp"><i class="fa fa-info-circle"></i> 详情</a>
								</div>
								<div class="col-xs-4 text-center" style="padding: 0">
									<a href="<%=request.getContextPath()%>/mng/stu/pwd/pwd.jsp"><i class="fa fa-lock"></i> 修改密码</a>
								</div>
								<div class="col-xs-4 text-center">
									<a href="#exitModal" data-toggle="modal"><i
										class="fa fa-power-off" ></i> 退出</a>
								</div>
							</div>
						</li>
						<!-- Menu Footer
              <li class="user-footer">
                <div class="pull-left">
                  <a href="#" class="btn btn-default btn-flat">修改密码</a>
                </div>
                <div class="pull-right">
                  <a href="#exitModal" data-toggle="modal" class="btn btn-default btn-flat">退出</a>
                </div>
              </li>-->
					</ul>
				</li>
				<li class="dropdown tasks tasks-menu"><a href="#"
					class="dropdown-toggle" data-toggle="dropdown"><i
						class="fa fa-gears"></i></a>
					<ul class="dropdown-menu" style="width: 240px" id="skin-menu"></ul>
				</li>
			</ul>
		</div>
	</nav>
</header>

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
					<a type="button" class="btn btn-outline" id="btn_logout"  href="<%=request.getContextPath()%>/mng/stu/Out">确认</a>
				</div>
			</div>
			<!-- /.modal-content -->
		</div>
		<!-- /.modal-dialog -->
	</div>
	
	
	<script type="text/javascript">
		//退出事件
		$("#btn_logout").click(function() {
			//取消
			$("#exitModal").modal("hide");
			//登录页面
			window.location.href = "/mng/stu/Out";
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