<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!-- Left side column. contains the logo and sidebar -->
<aside class="main-sidebar">
	<!-- sidebar: style can be found in sidebar.less -->
	<section class="sidebar" id="scrollspy">
		<!-- Sidebar Menu -->
		<ul class="sidebar-menu">
			<li class="header"><i class="fa fa-th"></i> 功能菜单</li>

			<li class="treeview active"><a href="#"><i
					class="fa fa-shopping-cart"></i> <span>学生信息管理</span> <span
					class="pull-right-container"> <i
						class="fa fa-angle-left pull-right"></i>
				</span> </a>
				<ul class="treeview-menu ">
					<li><a href="<%=request.getContextPath() %>/mng/stu/List"><i class="fa fa-reorder"></i>
							报考学生信息管理</a></li>
					<li><a href="list.html"><i class="fa fa-cube"></i> 报考科目管理</a></li>
				</ul></li>


			<li class="treeview"><a href="#"><i
					class="fa fa-gear"></i> <span>系统管理</span> <span
					class="pull-right-container"> <i
						class="fa fa-angle-left pull-right"></i>
				</span> </a>
				<ul class="treeview-menu">
					<li class="active"><a href="<%=request.getContextPath()%>/mng/stu/loged/loged.jsp"><i
							class="fa fa-sitemap"></i> 登录信息详情</a></li>
					<li><a href="<%=request.getContextPath()%>/mng/stu/pwd/pwd.jsp"><i class="fa fa-sitemap"></i> 修改密码</a></li>
				</ul></li>
		</ul>
		<!-- /.sidebar-menu -->
	</section>
	<!-- /.sidebar -->
</aside>