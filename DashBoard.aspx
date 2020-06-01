<%@ Page Title="" Language="C#" MasterPageFile="~/adminDashboard.master" AutoEventWireup="true" CodeFile="DashBoard.aspx.cs" Inherits="DashBoard" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
		<meta charset="utf-8" />
		<title>Dashboard - R2NMD Admin</title>

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
												<a href="allpendingcustomer.aspx"><span class="btn btn-app btn-sm btn-light no-hover">
													<span id="customerrequest" runat="server" class="line-height-1 bigger-170 blue"> Null </span>

													<br />
													<span class="line-height-1 smaller-90"> Customer<br />Request </span>
												</span>
                                                    </a>

												<a href="allpendingemployee.aspx"><span  class="btn btn-app btn-sm btn-yellow no-hover"  >
													<span id="employeerequest" runat="server" class="line-height-1 bigger-170"> Null </span>
                                                    
													<br />
													<span runat="server" class="line-height-1 smaller-90"> Employee<br />Request </span>
												</span></a>

                                            <a href="allpendingappointmentlist.aspx"><span  class="btn btn-app btn-sm btn-flat no-hover"  >
													<span id="appointmentrequest" runat="server" class="line-height-1 bigger-170"> Null </span>
                                                    
													<br />
													<span runat="server" class="line-height-1 smaller-80">Appointment<br />Request </span>
												</span></a>

												<a href="allavailableinventery.aspx"><span class="btn btn-app btn-sm btn-grey no-hover">
													<span id="inventeryleft" runat="server" class="line-height-1 bigger-170"> Null </span>

													<br />
													<span class="line-height-1 smaller-90"> Inventery<br />Available </span>
												</span></a>

												<a href="allneedinventery.aspx"><span class="btn btn-app btn-sm btn-danger no-hover">
													<span id="inventeryneed" runat="server" class="line-height-1 bigger-170"> Null </span>

													<br />
													<span class="line-height-1 smaller-90"> Inventery<br />Need</span>
												</span></a>

												<a href="#"><span class="btn btn-app btn-sm btn-success no-hover">
													<span id="employeesalary" runat="server" class="line-height-1 bigger-170"> Null </span>

													<br />
													<span class="line-height-1 smaller-90"> Today<br />Salary </span>
												</span></a>

												<%--<span class="btn btn-app btn-sm btn-primary no-hover">
													<span class="line-height-1 bigger-170"> 55 </span>

													<br />
													<span class="line-height-1 smaller-90"></span>
												</span>--%>
											</div>
                                        <%--<div class="space-6"></div>
                                        <div class="vspace-12-sm"></div>
										<div class="infobox infobox-green">
											<div class="infobox-icon">
												<i class="ace-icon fa fa-comments"></i>
											</div>--%>

<%--											<div class="infobox-data">
												<span class="infobox-data-number">32</span>
												<div class="infobox-content">comments + 2 reviews</div>
											</div>

											<div class="stat stat-success">8%</div>
										</div>

										<div class="infobox infobox-blue">
											<div class="infobox-icon">
												<i class="ace-icon fa fa-twitter"></i>
											</div>

											<div class="infobox-data">
												<span class="infobox-data-number">11</span>
												<div class="infobox-content">new followers</div>
											</div>

											<div class="badge badge-success">
												+32%
												<i class="ace-icon fa fa-arrow-up"></i>
											</div>
										</div>--%>

										<%--<div class="infobox infobox-pink">
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

                                         <div class="space-6"></div>
                                        <div class="vspace-12-sm"></div>
                                        
										<div class="infobox infobox-brown">
											<div class="infobox-progress">
												<span id="profittoday" runat="server" class="easy-pie-chart percentage" >
													<span class="percent"></span>
												</span>
											</div>
                                            

											<div class="infobox-data">
												<span class="infobox-text">Profit</span>

												<div class="infobox-content">
													<span class="bigger-110">~</span>
													Today
												</div>
											</div>
										</div>
                                       <div class="infobox infobox-orange2">
											<div class="infobox-chart">
												<span class="sparkline" data-values="196,128,202,177,154,94,100,170,224"></span>
											</div>

											<div class="infobox-data">
												<span id="losstoday" runat="server" class="infobox-data-number">10</span>
												<div class="infobox-content">Today</div>
											</div>
										</div>
                                      <div class="infobox infobox-green ">
											<div class="infobox-icon">
												<i class="ace-icon fa fa-shopping-cart"></i>
											</div>

											<div class="infobox-data">
												<span id="cartoday" runat="server" class="infobox-data-number">0%</span>
												<div class="infobox-content">Today</div>
											</div>
											
										</div>







										<div class="infobox infobox-light-brown">
											<div class="infobox-progress">
												<span id="profitweekly" runat="server" class="easy-pie-chart percentage" >
													<span class="percent">s</span>%
												</span>
											</div>
                                            

											<div class="infobox-data">
												<span class="infobox-text">Profit</span>

												<div class="infobox-content">
													<span class="bigger-110">~</span>
													Weekly
												</div>
											</div>
										</div>

                                        <div class="infobox infobox-orange2">
											<div class="infobox-chart">
												<span class="sparkline" data-values="196,128,202,177,154,94,100,170,224"></span>
											</div>

											<div class="infobox-data">
												<span id="lossweekly" runat="server" class="infobox-data-number">10</span>
												<div class="infobox-content">Weekly</div>
											</div>
										</div>

                                        <div class="infobox infobox-pink">
											<div class="infobox-icon">
												<i class="ace-icon fa fa-shopping-cart"></i>
											</div>

											<div class="infobox-data">
												<span id="carweekly" runat="server" class="infobox-data-number">0%</span>
												<div class="infobox-content">Weekly</div>
											</div>
											
										</div>

                                       <div class="infobox infobox-grey">
											<div class="infobox-progress">
												<span id="profitmonthly" runat="server" class="easy-pie-chart percentage" >
													<span class="percent"></span>
												</span>
											</div>
                                            

											<div class="infobox-data">
												<span class="infobox-text">Profit</span>

												<div class="infobox-content">
													<span class="bigger-110">~</span>
													Monthly
												</div>
											</div>
										</div>
                                        <div class="infobox infobox-orange2">
											<div class="infobox-chart">
												<span class="sparkline" data-values="196,128,202,177,154,94,100,170,224"></span>
											</div>

											<div class="infobox-data">
												<span id="lossmonthly" runat="server" class="infobox-data-number">%</span>
												<div class="infobox-content">Monthly</div>
											</div>
										</div>

										<div class="infobox infobox-purple2">
											<div class="infobox-icon">
												<i class="ace-icon fa fa-shopping-cart"></i>
											</div>

											<div class="infobox-data">
												<span id="carmonthly" runat="server" class="infobox-data-number">0%</span>
												<div class="infobox-content">Monthly</div>
											</div>
											
										</div>


                                        <div class="infobox infobox-yellow">
											<div class="infobox-progress">
												<span id="profityearly" runat="server" class="easy-pie-chart percentage" >
													<span class="percent"></span>
												</span>
											</div>
                                            

											<div class="infobox-data">
												<span class="infobox-text">Profit</span>

												<div class="infobox-content">
													<span class="bigger-110">~</span>
													Yearly
												</div>
											</div>
										</div>

                                        <div class="infobox infobox-red ">
											<div class="infobox-chart">
												<span class="sparkline" data-values="196,128,202,177,154,94,100,170,224"></span>
											</div>

											<div class="infobox-data">
												<span id="lossyearly" runat="server" class="infobox-data-number">12%</span>
												<div class="infobox-content">Yearly</div>
											</div>
										</div>
                                         <div class="infobox infobox-blue">
											<div class="infobox-icon">
												<i class="ace-icon fa fa-shopping-cart"></i>
											</div>

											<div class="infobox-data">
												<span id="caryearly" runat="server" class="infobox-data-number">0%</span>
												<div class="infobox-content">Yearly</div>
											</div>
											
										</div>
                                       

										<div class="space-12"></div>

									<%--	<div class="infobox infobox-green infobox-small infobox-dark">
											<div class="infobox-progress">
												<div class="easy-pie-chart percentage" data-percent="61" data-size="39">
													<span class="percent">61</span>%
												</div>
											</div>

											<div class="infobox-data">
												<div class="infobox-content">Task</div>
												<div class="infobox-content">Completion</div>
											</div>
										</div>

										<div class="infobox infobox-blue infobox-small infobox-dark">
											<div class="infobox-chart">
												<span class="sparkline" data-values="3,4,2,3,4,4,2,2"></span>
											</div>

											<div class="infobox-data">
												<div class="infobox-content">Earnings</div>
												<div class="infobox-content">$32,000</div>
											</div>
										</div>

										<div class="infobox infobox-grey infobox-small infobox-dark">
											<div class="infobox-icon">
												<i class="ace-icon fa fa-download"></i>
											</div>

											<div class="infobox-data">
												<div class="infobox-content">Downloads</div>
												<div class="infobox-content">1,205</div>
											</div>
										</div>
									</div>--%>


                                        	<div class="infobox infobox-green infobox-small infobox-dark">
											<div class=" infobox-chart">
												<span class=" icon-next" ></span>
											</div>

											<div class="infobox-data">
                                                <div class="infobox-content">Date</div>
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

										<div class="infobox infobox-light-brown infobox-small infobox-dark">
											<div class="infobox-chart">
												<span class="sparkline" data-values="3,4,2,3,4,4,2,2"></span>
											</div>

											<div class="infobox-data">
												<div class="infobox-content">Earnings</div>
												<div id="payment" runat="server" class="infobox-content"></div>
											</div>
										</div>

                                        <div class="infobox infobox-blue infobox-small infobox-dark">
											<div class="infobox-chart">
												<span class="sparkline" data-values="3,4,2,3,4,4,2,2"></span>
											</div>

											<div class="infobox-data">
												<div id="todayname" runat="server" class="infobox-content"></div>
												<div id="profit" runat="server" class="infobox-content"></div>
											</div>
										</div>
									</div>


									<div class="vspace-12-sm"></div>

									</form>
								</div><!-- /.row -->

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

