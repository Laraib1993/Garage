<%@ Page Title="" Language="C#" MasterPageFile="~/CustomerDashboard.master" AutoEventWireup="true" CodeFile="CTimeline.aspx.cs" Inherits="CTimeline" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
		<meta charset="utf-8" />
		<title>Profile</title>

		<meta name="description" content="3 styles with inline editable feature" />
		<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0" />

		<!-- bootstrap & fontawesome -->
		<link rel="stylesheet" href="assets/css/bootstrap.min.css" />
		<link rel="stylesheet" href="assets/font-awesome/4.5.0/css/font-awesome.min.css" />

		<!-- page specific plugin styles -->
		<link rel="stylesheet" href="assets/css/jquery-ui.custom.min.css" />
		<link rel="stylesheet" href="assets/css/jquery.gritter.min.css" />
		<link rel="stylesheet" href="assets/css/select2.min.css" />
		<link rel="stylesheet" href="assets/css/bootstrap-datepicker3.min.css" />
		<link rel="stylesheet" href="assets/css/bootstrap-editable.min.css" />

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
								<a href="#">Dashboard</a>
							</li>

							>
							<li class="active">Profile</li>
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
								TimeLine
								
							</h1>
						</div><!-- /.page-header -->

						<div class="row">
							<div class="col-xs-12">
								<!-- PAGE CONTENT BEGINS -->
								

								

								<div>
									<div id="user-profile-1" class="user-profile row">
										<div class="col-xs-12 col-sm-9 center">
											<div>
												

												<div class="space-4"></div>

												
											</div>

											<div class="space-6"></div>

										</div>
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




										<div class="col-xs-12 col-sm-9">
											 <div class="width-80 label label-info label-xlg center arrowed-in arrowed-in-right">
													<div class="inline position-relative center">
														<a href="#" class="user-title-label dropdown-toggle" data-toggle="dropdown">
															
															&nbsp;
															<span class="white">
                                                               <asp:Label ID="lblFullName" runat="server" Text=""></asp:Label> </span>
														</a>

														
													</div>
												</div>
                                            <div class="space-12"></div>

											<div class="profile-user-info profile-user-info-striped">
												
                                                <div class="profile-info-row">
													<div class="profile-info-name"> Username </div>

													<div class="profile-info-value">
														<span class="editable" id="username"><asp:Label ID="lblUserName" runat="server" Text=""></asp:Label></span>
													</div>
												</div>

												<div class="profile-info-row">
													<div class="profile-info-name"> Email </div>

													<div class="profile-info-value">
														<span class="editable" id="age"><asp:Label ID="lblEmail" runat="server" Text=""></asp:Label></span>
													</div>
												</div>

												<div class="profile-info-row">
													<div class="profile-info-name"> Joined </div>

													<div class="profile-info-value">
														<span class="editable" id="signup"><asp:Label ID="lblJoiningDate" runat="server" Text=""></asp:Label></span>
													</div>
												</div>

												<div class="profile-info-row">
													<div class="profile-info-name"> Mobile </div>

													<div class="profile-info-value">
														<span class="editable" id="login"><asp:Label ID="lblMobile" runat="server" Text=""></asp:Label></span>
													</div>
												</div>

												<div class="profile-info-row">
													<div class="profile-info-name"> CNIC </div>

													<div class="profile-info-value">
														<span class="editable" id="about"><asp:Label ID="lblCNIC" runat="server" Text=""></asp:Label></span>
													</div>
												</div>
                                                <div class="profile-info-row">
													<div class="profile-info-name"> Address </div>

													<div class="profile-info-value">
														<span class="editable" id="Address"><asp:Label ID="lblAddress" runat="server" Text=""></asp:Label></span>
													</div>
												</div>
											</div>
                                             <div class="space-12"></div>
                                            <div class="profile-contact-info">
												<div class="profile-contact-links align-left">
													<a href="EditProfile.aspx" class="btn btn-link">
														<i class="ace-icon fa fa-plus-circle bigger-120 green"></i>
														Edit Profile
													</a>

													<a href="#" class="btn btn-link">
                                                        <a href="inbox.aspx" class="btn btn-link">
														<i class="ace-icon fa fa-envelope bigger-120 pink"></i>
														Send a mail
													</a>

													
												</div>

											<div class="space-20"></div>

											
                                                </form>
											
										</div>
									</div>
								</div>

								</div>

								

								<!-- PAGE CONTENT ENDS -->
							</div><!-- /.col -->
						</div><!-- /.row -->
					</div><!-- /.page-content -->
                    
</asp:Content>

