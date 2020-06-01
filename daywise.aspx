<%@ Page Title="" Language="C#" MasterPageFile="~/adminDashboard.master" AutoEventWireup="true" CodeFile="daywise.aspx.cs" Inherits="daywise" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
      <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
		<meta charset="utf-8" />
		<title>Dashboard - Admin</title>

		<meta name="description" content="overview &amp; stats" />
		<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0" />

		<!-- bootstrap & fontawesome -->
		<link rel="stylesheet" href="assets/css/bootstrap.min.css" />
		<link rel="stylesheet" href="assets/font-awesome/4.5.0/css/font-awesome.min.css" />

		<!-- page specific plugin styles -->

		<!-- text fonts -->
		<link rel="stylesheet" href="assets/css/fonts.googleapis.com.css" />

		<!-- ace styles -->
		<link rel="stylesheet" href="assets/css/ace.min.css" class="ace-main-stylesheet" id="main-ace-style" />

		<!--[if lte IE 9]>
			<link rel="stylesheet" href="assets/css/ace-part2.min.css" class="ace-main-stylesheet" />
		<![endif]-->
		<link rel="stylesheet" href="assets/css/ace-skins.min.css" />
		<link rel="stylesheet" href="assets/css/ace-rtl.min.css" />

		<!--[if lte IE 9]>
		  <link rel="stylesheet" href="assets/css/ace-ie.min.css" />
		<![endif]-->

		<!-- inline styles related to this page -->

		<!-- ace settings handler -->
		<script src="assets/js/ace-extra.min.js"></script>

		
		<script src="assets/js/html5shiv.min.js"></script>
		<script src="assets/js/respond.min.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <div class="breadcrumbs ace-save-state" id="breadcrumbs">
						<ul class="breadcrumb">
							<li>
								<i class="ace-icon fa fa-home home-icon"></i>
								<a href="#">Home</a>
							</li>
							<li class="active">Dashboard</li>
						</ul><!-- /.breadcrumb -->

						<div class="nav-search" id="nav-search">
							<form class="form-search">
								<span class="input-icon">
									<input type="text" placeholder="Search ..." class="nav-search-input" id="nav-search-input" autocomplete="off" />
									<i class="ace-icon fa fa-search nav-search-icon"></i>
								</span>
							</form>
						</div><!-- /.nav-search -->
					</div>

					<div class="page-content">
						

						<div class="page-header">
							<h1>
								Dashboard
								<small>
									<i class="ace-icon fa fa-angle-double-right"></i>
									overview &amp; stats
								</small>
							</h1>
						</div><!-- /.page-header -->

						<div class="row">
							<div class="col-xs-12">
								<!-- PAGE CONTENT BEGINS -->

       




								<form runat="server">
                                      <asp:Panel ID="Panel1" runat="server" Visible="False">
                                                         
        
                                                    <asp:ScriptManager ID= "listviewscriptmanager" runat="server"></asp:ScriptManager>
                                                        <asp:Timer ID="listviewtable" runat="server" Interval="1000" OnTick="listview_design"></asp:Timer>
                                                        </div>
   
                                           <div>
                                           <asp:UpdatePanel id="updPnl" runat="server" UpdateMode="Conditional">
                                           <ContentTemplate>
                                           <asp:Label ID="lbllisting" runat="server"></asp:Label>
                                           </ContentTemplate>
                                           <Triggers>
                                           <asp:AsyncPostBackTrigger ControlID="listviewtable" EventName ="tick" />
                                           </Triggers>
                                           </asp:UpdatePanel>

                                                </asp:Panel>





								<div class="row">
									<div class="space-6"></div>

									<div class="col-sm-7 infobox-container">
                                        <div class="center">
												<span class="btn btn-app btn-sm btn-light no-hover">
													<span runat="server" class="line-height-1 bigger-170 blue"> 1,411 </span>

													<br />
													<span class="line-height-1 smaller-90"> Investment </span>
												</span>


												<span class="btn btn-app btn-sm btn-primary no-hover">
													<span runat="server" class="line-height-1 bigger-170"> 55 </span>

													<br />
													<span class="line-height-1 smaller-90"> Payments </span>
												</span>
											</div>
                                        <div class="space-6"></div>
                                        <div class="vspace-12-sm"></div>
										<div class="infobox infobox-orange2">
											<div class="infobox-chart">
												<span class="sparkline" data-values="196,128,202,177,154,94,100,170,224"></span>
											</div>

											<div class="infobox-data">
												<span id="profittoday" runat="server" class="infobox-data-number"></span>
												<div class="infobox-content">Today</div>
											</div>
										</div>

										<div class="infobox infobox-blue">
											<div class="infobox-chart">
												<span class="sparkline" data-values="196,128,202,177,154,94,100,170,224"></span>
											</div>

											<div class="infobox-data">
												<span id="profitweekly" runat="server" class="infobox-data-number"></span>
												<div class="infobox-content">Weekly</div>
											</div>
										</div>

<%--										<div class="infobox infobox-pink">
											<div class="infobox-icon">
												<i class="ace-icon fa fa-shopping-cart"></i>
											</div>

											<div class="infobox-data">
												<span class="infobox-data-number">8</span>
												<div class="infobox-content">new orders</div>
											</div>
											<div class="stat stat-important">4%</div>
										</div>

										<div class="infobox infobox-red">
											<div class="infobox-icon">
												<i class="ace-icon fa fa-flask"></i>
											</div>

											<div class="infobox-data">
												<span class="infobox-data-number">7</span>
												<div class="infobox-content">experiments</div>
											</div>
										</div>--%>

										<div class="infobox infobox-grey ">
											<div class="infobox-chart">
												<span class="sparkline" data-values="196,128,202,177,154,94,100,170,224"></span>
											</div>

											<div class="infobox-data">
												<span id="profitmonthly" runat="server" class="infobox-data-number"></span>
												<div class="infobox-content">Monthly</div>
											</div>
										</div>

                                        <div class="infobox infobox-red ">
											<div class="infobox-chart">
												<span class="sparkline" data-values="196,128,202,177,154,94,100,170,224"></span>
											</div>

											<div class="infobox-data">
												<span id="profityearly" runat="server" class="infobox-data-number">12%</span>
												<div class="infobox-content">Yearly</div>
											</div>
										</div>
                                         <div class="infobox infobox-brown">
											<div class="infobox-chart">
												<span class="sparkline" data-values="196,128,202,177,154,94,100,170,224"></span>
											</div>

											<div class="infobox-data">
												<span id="todaycarcompleted" runat="server" class="infobox-data-number">12%</span>
												<div class="infobox-content">Today Car</div>
											</div>
										</div>
                                         <div class="infobox infobox-green">
											<div class="infobox-chart">
												<span class="sparkline" data-values="196,128,202,177,154,94,100,170,224"></span>
											</div>

											<div class="infobox-data">
												<span id="weeklycarcompleted" runat="server" class="infobox-data-number">12%</span>
												<div class="infobox-content">Weekly Car</div>
											</div>
										</div>
                                        <div class="infobox infobox-orange ">
											<div class="infobox-chart">
												<span class="sparkline" data-values="196,128,202,177,154,94,100,170,224"></span>
											</div>

											<div class="infobox-data">
												<span id="monthlycompletedcar" runat="server" class="infobox-data-number">12%</span>
												<div class="infobox-content">Monthly Car</div>
											</div>
										</div>
                                         <div class="infobox infobox-blue3 ">
											<div class="infobox-chart">
												<span class="sparkline" data-values="196,128,202,177,154,94,100,170,224"></span>
											</div>

											<div class="infobox-data">
												<span id="yearlycompletedcar" runat="server" class="infobox-data-number">12%</span>
												<div class="infobox-content">Yearly Car</div>
											</div>
										</div>
<%--										<div class="infobox infobox-blue2">
											<div class="infobox-progress">
												<div id="profitpercentage" runat="server" class="easy-pie-chart percentage"  data-percent="90" >
													<span id="profit" runat="server" class="percent"></span>%
												</div>
											</div>

											<div class="infobox-data">
												<span class="infobox-text">Profit</span>

												<div class="infobox-content">
													<span class="bigger-110">~</span>
													
												</div>
											</div>
										</div>--%>

										<div class="space-6"></div>

										<div class="infobox infobox-green infobox-small infobox-dark">
											<div class="infobox-chart">
												<span class="fa-calendar"></span>
											</div>

											<div class="infobox-data">
												<div id="date" runat="server" class="infobox-content"></div>
											</div>
										</div>

										<div class="infobox infobox-grey infobox-small infobox-dark">
											<div class="infobox-chart">
												<span class="sparkline" data-values="3,4,2,3,4,4,2,2"></span>
											</div>

											<div class="infobox-data">
												<div class="infobox-content">Investments</div>
												<div id="invest" runat="server" class="infobox-content">$32,000</div>
											</div>
										</div>

										<div class="infobox infobox-blue infobox-small infobox-dark">
											<div class="infobox-chart">
												<span class="sparkline" data-values="3,4,2,3,4,4,2,2"></span>
											</div>

											<div class="infobox-data">
												<div class="infobox-content">Earnings</div>
												<div id="payment" runat="server" class="infobox-content"></div>
											</div>
										</div>
									</div>

									<div class="vspace-12-sm"></div>

									
								</div><!-- /.row -->
                                    </form>

								<div class="hr hr32 hr-dotted"></div>

								<div class="row">
									<div class="col-sm-5">
										
									</div><!-- /.col -->

									<div class="col-sm-7">
										
									</div><!-- /.col -->
								</div><!-- /.row -->

								<div class="hr hr32 hr-dotted">  

								<div class="row">
									<div class="col-sm-6">
										<!-- /.widget-box -->
									</div><!-- /.col -->

									<div class="col-sm-6">
										<!-- /.widget-box -->
									</div><!-- /.col -->
								</div><!-- /.row -->
                                    
								<!-- PAGE CONTENT ENDS -->
							</div><!-- /.col -->
						</div><!-- /.row -->
					</div><!-- /.page-content -->
                        </div>
   
</asp:Content>

