<%@ Page Language="C#" AutoEventWireup="true" CodeFile="SignUp.aspx.cs" Inherits="SignUp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
		<meta charset="utf-8" />
		<title> Page - R2NMD</title>

		<meta name="description" content="User login page" />
		<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0" />

		<!-- bootstrap & fontawesome -->
		<link rel="stylesheet" href="assets/css/bootstrap.min.css" />
		<link rel="stylesheet" href="assets/font-awesome/4.5.0/css/font-awesome.min.css" />

		<!-- text fonts -->
		<link rel="stylesheet" href="assets/css/fonts.googleapis.com.css" />

		<!-- ace styles -->
		<link rel="stylesheet" href="assets/css/ace.min.css" />

		<!--[if lte IE 9]>
			<link rel="stylesheet" href="assets/css/ace-part2.min.css" />
		<![endif]-->
		<link rel="stylesheet" href="assets/css/ace-rtl.min.css" />

		<!--[if lte IE 9]>
		  <link rel="stylesheet" href="assets/css/ace-ie.min.css" />
		<![endif]-->

		<!-- HTML5shiv and Respond.js for IE8 to support HTML5 elements and media queries -->

		<!--[if lte IE 8]>
		<script src="assets/js/html5shiv.min.js"></script>
		<script src="assets/js/respond.min.js"></script>
		<![endif]-->
</head>
<body class="login-layout">
		<div class="main-container">
			<div class="main-content">
				<div class="row">
					<div class="col-sm-10 col-sm-offset-1">
						<div class="login-container">
							<div class="center">
								<h1>
									<i class="ace-icon fa fa-car blue"></i>
									<span class="red">R2MND</span>
									<span class="white" id="id-text2">Application</span>
								</h1>
								<h4 class="blue" id="id-company-text">&copy; Company Name</h4>
							</div>

							<div class="space-6"></div>

							<div class="position-relative">
								<div id="signup-box" class="signup-box visible widget-box no-border">
									<div class="widget-body">
										<div class="widget-main">
											<h4 class="header green lighter bigger">
												<i class="ace-icon fa fa-users blue"></i>
												New User Registration
											</h4>

											<div class="space-6"></div>
											<p> Enter your details to begin: </p>

											<form id="form1" runat="server">
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




												<fieldset>
                                                    <label class="block clearfix">
														<span class="block input-icon input-icon-right">
															 <asp:TextBox ID="txtFullName" runat="server" type="text" class="form-control" placeholder="Full Name"></asp:TextBox>
															<i class="ace-icon fa fa-user"></i>
														</span>
													</label>

                                                    <label class="block clearfix">
														<span class="block input-icon input-icon-right">
															 <asp:TextBox ID="txtEmail" runat="server" type="email" class="form-control" placeholder="Email"></asp:TextBox>
															<i class="ace-icon fa fa-envelope"></i>
														</span>
													</label>

                                                     <label class="block clearfix">
														<span class="block input-icon input-icon-right">
															 <asp:TextBox ID="txtUserName" runat="server" type="text" class="form-control" placeholder="Username"></asp:TextBox>
															<i class="ace-icon fa fa-user"></i>
														</span>
													</label>

                                                    <label class="block clearfix">
														<span class="block input-icon input-icon-right">
															 <asp:TextBox ID="txtPassword" runat="server" type="password" class="form-control" placeholder="Password"></asp:TextBox>
															<i class="ace-icon fa fa-lock"></i>
														</span>
													</label>

                                                    <label class="block clearfix">
														<span class="block input-icon input-icon-right">
															  <asp:TextBox ID="txtConfirmPassword" runat="server" type="password" class="form-control" placeholder="Repeat password"></asp:TextBox>
															<i class="ace-icon fa fa-retweet"></i>
														</span>
													</label>

                                                     <label class="block clearfix">
														<span class="block input-icon input-icon-right">
															   <asp:TextBox ID="txtCNIC" runat="server" type="text" class="form-control" placeholder="CNIC"></asp:TextBox>
															<i class="ace-icon fa fa-asterisk"></i>
														</span>
													</label>
                                                     <label class="block clearfix">
														<span class="block input-icon input-icon-right">
															  <asp:TextBox ID="txtMobile" runat="server" type="text" class="form-control" placeholder="Mobile"></asp:TextBox>
															<i class="ace-icon fa fa-mobile"></i>
														</span>
													</label>

                                                    <label class="block clearfix">
														<span class="block input-icon input-icon-right">
															  <asp:TextBox ID="txtAddress" runat="server" type="text" class="form-control" placeholder="Address"></asp:TextBox>
															<i class="ace-icon fa fa-home"></i>
														</span>
													</label>

													<div class="space-24"></div>

													<div class="clearfix">
														<button type="reset" class="width-30 pull-left btn btn-sm">
															<i class="ace-icon fa fa-refresh"></i>
															<span class="bigger-110">Reset</span>
														</button>

                                                        <asp:Button ID="btnRegister" runat="server" Text="Register" type="button" class="ace-icon fa fa-arrow-right icon-on-right width-65 pull-right btn btn-sm btn-success bigger-110" OnClick="btnRegister_Click"/>
                                                        <%--<button type="button" class="width-65 pull-right btn btn-sm btn-success">
															<span class="bigger-110">Register</span>

															<i class="ace-icon fa fa-arrow-right icon-on-right"></i>
														</button>--%>
													</div>
												</fieldset>
											</form>
										</div>
                                        <div class="social-or-login center">
												<span class="bigger-110">
                                                    <asp:Label ID="lblMessage" runat="server" ForeColor="Red"></asp:Label></span>
											</div>

										<div class="toolbar center">
											<a href="Submit.aspx" class="back-to-login-link">
												<i class="ace-icon fa fa-arrow-left"></i>
												Back to login
											</a>
										</div>
									</div><!-- /.widget-body -->
								</div><!-- /.signup-box -->
							</div><!-- /.position-relative -->

							
						</div>
					</div><!-- /.col -->
				</div><!-- /.row -->
			</div><!-- /.main-content -->
		</div><!-- /.main-container -->

		<!-- basic scripts -->

		<!--[if !IE]> -->
		<script src="assets/js/jquery-2.1.4.min.js"></script>

		<!-- <![endif]-->

		<!--[if IE]>
<script src="assets/js/jquery-1.11.3.min.js"></script>
<![endif]-->
		<script type="text/javascript">
		    if ('ontouchstart' in document.documentElement) document.write("<script src='assets/js/jquery.mobile.custom.min.js'>" + "<" + "/script>");
		</script>

		<!-- inline scripts related to this page -->
		<script type="text/javascript">
		    jQuery(function ($) {
		        $(document).on('click', '.toolbar a[data-target]', function (e) {
		            e.preventDefault();
		            var target = $(this).data('target');
		            $('.widget-box.visible').removeClass('visible');//hide others
		            $(target).addClass('visible');//show target
		        });
		    });



		    //you don't need this, just used for changing background
		    //jQuery(function ($) {
		    //    $('#btn-login-dark').on('click', function (e) {
		    //        $('body').attr('class', 'login-layout');
		    //        $('#id-text2').attr('class', 'white');
		    //        $('#id-company-text').attr('class', 'blue');

		    //        e.preventDefault();
		    //    });
		       

		    //});
		</script>
	</body>
</html>
