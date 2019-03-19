<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!-- Main Header -->
<header class="main-header">
	<!-- Logo -->
	<a href="main.html" class="logo"> <!-- mini logo for sidebar mini 50x50 pixels -->
		<span class="logo-mini"><b>招生</b></span> <!-- logo for regular state and mobile devices -->
		<span class="logo-lg"><b>招生</b>管理系统</span>
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

				<!-- Notifications Menu -->
				<li class="dropdown notifications-menu messages-menu tasks-menu">
					<!-- Menu toggle button --> <a href="#" class="dropdown-toggle"
					data-toggle="dropdown"> <i class="fa fa-bell-o"></i> <span
						class="label label-warning">10</span>
				</a>
					<ul class="dropdown-menu">
						<li class="header">你有 10 个待办事项</li>
						<li>
							<!-- Inner Menu: contains the notifications -->
							<ul class="menu">
								<li>
									<!-- start notification --> <a href="#"> <i
										class="fa fa-users text-aqua"></i> 5 个新订单待确认
								</a>
								</li>
								<li><a href="#">
										<div class="pull-left">
											<!-- User Image -->
											<img src="../adminlte/img/avatar04.png" class="img-circle"
												alt="User Image">
										</div> <!-- Message title and timestamp -->
										<h4>
											中午开会 <small><i class="fa fa-clock-o"></i> 5 分钟前</small>
										</h4> <!-- The message -->
										<p>今天中午13:30召开全体员工会议</p>
								</a></li>
								<li><a href="#">
										<div class="pull-left">
											<!-- User Image -->
											<img src="../adminlte/img/avatar04.png" class="img-circle"
												alt="User Image">
										</div> <!-- Message title and timestamp -->
										<h4>
											晚上18点聚会 <small><i class="fa fa-clock-o"></i> 5 分钟前</small>
										</h4> <!-- The message -->
										<p>今天中午13:30召开全体员工会议</p>
								</a></li>
								<li><a href="#"> <!-- Task title and progress text -->
										<h3>
											微销项目开发进度 <small class="pull-right">20%</small>
										</h3> <!-- The progress bar -->
										<div class="progress xs">
											<!-- Change the css width attribute to simulate progress -->
											<div class="progress-bar progress-bar-aqua"
												style="width: 20%" role="progressbar" aria-valuenow="20"
												aria-valuemin="0" aria-valuemax="100">
												<span class="sr-only">20% 已完成</span>
											</div>
										</div>
								</a></li>
								<li><a href="#"> <i class="fa fa-warning text-yellow"></i>
										库存告急库存告急库存告急库存告急库存告急
								</a></li>
								<!-- end notification -->
							</ul>
						</li>
						<li class="footer"><a href="#">查看所有</a></li>
					</ul>
				</li>

				<!-- User Account Menu -->
				<li class="dropdown user user-menu">
					<!-- Menu Toggle Button --> <a href="#" class="dropdown-toggle"
					data-toggle="dropdown"> <!-- The user image in the navbar--> <img
						src="<%=request.getContextPath()%>/adminlte/img/user1-128x128.jpg"
						class="user-image" alt="User Image"> <!-- hidden-xs hides the username on small devices so only the image appears. -->
						<span class="hidden-xs">Test</span>
				</a>
					<ul class="dropdown-menu">
						<!-- The user image in the menu -->
						<li class="user-header"><img
							src="<%=request.getContextPath()%>/adminlte/img/user1-128x128.jpg" class="img-circle"
							alt="User Image">
							<p>
								- Java Developer <small>互联网老兵...</small>
							</p></li>
						<!-- Menu Body -->
						<li class="user-body">
							<div class="row">
								<div class="col-xs-4 text-center">
									<a href="#"><i class="fa fa-info-circle"></i> 详情</a>
								</div>
								<div class="col-xs-4 text-center" style="padding: 0">
									<a href="#"><i class="fa fa-lock"></i> 修改密码</a>
								</div>
								<div class="col-xs-4 text-center">
									<a href="#exitModal" data-toggle="modal"><i
										class="fa fa-power-off"></i> 退出</a>
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