<%@ Page Title="" Language="C#" MasterPageFile="~/CustomerDashboard.master" AutoEventWireup="true" CodeFile="CustomerDashboard.aspx.cs" Inherits="CustomerDashboard" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
		<meta charset="utf-8" />
		<title>Dashboard - R2NMD Customer</title>

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

		<!-- HTML5shiv and Respond.js for IE8 to support HTML5 elements and media queries -->

		<!--[if lte IE 8]>
		<script src="assets/js/html5shiv.min.js"></script>
		<script src="assets/js/respond.min.js"></script>
		<![endif]-->
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
												<a href="customerallcarinhouse.aspx"><span class="btn btn-app btn-sm btn-light no-hover">
													<span id="workshopcar" runat="server" class="line-height-1 bigger-170 blue">Null</span>
                                                    <asp:TextBox ID="TextBox1" runat="server" Visible="False"></asp:TextBox>
													<br />
													<span class="line-height-1 smaller-90"> Cars in<br />Workshop </span>
												</span>
                                                    </a>

												<a href="customerallcarregisteredlist.aspx"><span class="btn btn-app btn-sm btn-yellow no-hover">
													<span id="carregister" runat="server" class="line-height-1 bigger-170"> Null </span>

													<br />
													<span class="line-height-1 smaller-90"> Cars<br />Registered </span>
												</span>
                                                    </a>

												 <a href="allpaidbill.aspx"><span class="btn btn-app btn-sm btn-grey no-hover">
                                                   
													<span id="billpaid" runat="server" class="line-height-1 bigger-170"> Null </span>

													<br />
													<span class="line-height-1 smaller-90"> Bill<br />Paid </span>
												</span></a>

												<a href="allunpaidbilllist.aspx"><span class="btn btn-app btn-sm btn-danger no-hover">
													<span id="billunpaid" runat="server" class="line-height-1 bigger-170"> Null </span>

													<br />
													<span class="line-height-1 smaller-90"> Bill<br />Un-Paid </span>
												</span></a>

												
											</div>
                                        <div class="space-6"></div>
                                        <div class="vspace-12-sm"></div>
										<div class="infobox infobox-orange2">
											<div class="infobox-chart">
												<span class="sparkline" data-values="196,128,202,177,154,94,100,170,224"></span>
											</div>

											<div class="infobox-data">
												<span id="employeeworking" runat="server" class="infobox-data-number">Null</span>
												<div class="infobox-content">Employee Working</div>
											</div>

											
										</div>

										<div class="infobox infobox-blue2">
											<div class="infobox-progress">
												<div class="easy-pie-chart percentage" data-percent="0" data-size="46">
													<span class="percent">0</span>%
												</div>
											</div>

											<div class="infobox-data">
												<span class="infobox-text">0%</span>

												<div class="infobox-content">
													<span class="bigger-110">Out Source</span>
													
												</div>
											</div>
										</div>

										<div class="infobox infobox-pink">
											<div class="infobox-icon">
												<i class="ace-icon fa fa-shopping-cart"></i>
											</div>

											<div class="infobox-data">
												<span id="inventeryused" runat="server" class="infobox-data-number">Null</span>
												<div class="infobox-content">Inventery Use</div>
											</div>
											
										</div>

<%--										<div class="infobox infobox-red">
											<div class="infobox-icon">
												<i class="ace-icon fa fa-flask"></i>
											</div>

											<div class="infobox-data">
												<span class="infobox-data-number">7</span>
												<div class="infobox-content">experiments</div>
											</div>
										</div>

										<div class="infobox infobox-orange2">
											<div class="infobox-chart">
												<span class="sparkline" data-values="196,128,202,177,154,94,100,170,224"></span>
											</div>

											<div class="infobox-data">
												<span class="infobox-data-number">6,251</span>
												<div class="infobox-content">pageviews</div>
											</div>

											<div class="badge badge-success">
												7.2%
												<i class="ace-icon fa fa-arrow-up"></i>
											</div>
										</div>--%>

										<%--<div class="infobox infobox-blue2">
											<div class="infobox-progress">
												<div class="easy-pie-chart percentage" data-percent="42" data-size="46">
													<span class="percent">42</span>%
												</div>
											</div>

											<div class="infobox-data">
												<span class="infobox-text">traffic used</span>

												<div class="infobox-content">
													<span class="bigger-110">~</span>
													58GB remaining
												</div>
											</div>
										</div>--%>

										<div class="space-6"></div>

										<div class="infobox infobox-green infobox-small infobox-dark">
											<div class="infobox-progress">
												<div class="easy-pie-chart percentage" id="timeleft" runat="server" data-percent="" data-size="38">
													<span id="timetext" runat="server" class="percent"></span>
												</div>
											</div>

											<div class="infobox-data">
												<div class="infobox-content">Days</div>
												<div class="infobox-content">Left</div>
											</div>
										</div>

										<div class="infobox infobox-blue infobox-small infobox-dark">
											<div class="infobox-chart">
												<span class="sparkline" data-values="3,4,2,3,4,4,2,2"></span>
											</div>

											<div class="infobox-data">
												<div class="infobox-content">Paid</div>
												<div id="paidamount" runat="server" class="infobox-content"></div>
											</div>
										</div>

										<div class="infobox infobox-grey infobox-small infobox-dark">
											<div class="infobox-icon">
												<i class="ace-icon fa fa-download"></i>
											</div>

											<div class="infobox-data">
												<div class="infobox-content">Un Paid</div>
												<div id="unpaidamount" runat="server" class="infobox-content">1,205</div>
											</div>
										</div>
									</div>

									<div class="vspace-12-sm"></div>

									
								</div><!-- /.row -->

								

								<div class="row">
									<div class="col-sm-5">
										
									</div><!-- /.col -->

									<div class="col-sm-7">
										
									</div><!-- /.col -->
								</div><!-- /.row -->

							</form>

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
                       
</asp:Content>

