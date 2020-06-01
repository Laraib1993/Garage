<%@ Page Title="" Language="C#" MasterPageFile="~/CustomerDashboard.master" AutoEventWireup="true" CodeFile="appointment.aspx.cs" Inherits="appointment" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
     <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
		<meta charset="utf-8" />
		<title>Appointment - R2NMD Customer</title>

		<meta name="description" content="overview &amp; stats" />
		<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0" />

		<!-- bootstrap & fontawesome -->
		<link rel="stylesheet" href="./assets/css/bootstrap.min.css" />
		<link rel="stylesheet" href="assets/font-awesome/4.5.0/css/font-awesome.min.css" />

		<!-- page specific plugin styles -->

		<!-- text fonts -->
		<link rel="stylesheet" href="assets/css/fonts.googleapis.com.css" />

		<!-- ace styles -->
		<link rel="stylesheet" href="./assets/css/ace.min.css" class="ace-main-stylesheet" id="main-ace-style" />

		<!--[if lte IE 9]>
			<link rel="stylesheet" href="assets/css/ace-part2.min.css" class="ace-main-stylesheet" />
		<![endif]-->
		<link rel="stylesheet" href="./assets/css/ace-skins.min.css" />
		<link rel="stylesheet" href="./assets/css/ace-rtl.min.css" />
    <link rel="stylesheet" href="./assets/css/bootstrap-datetimepicker.min.css" />

		<!--[if lte IE 9]>
		  <link rel="stylesheet" href="assets/css/ace-ie.min.css" />
		<![endif]-->

		<!-- inline styles related to this page -->

		<!-- ace settings handler -->
		<script src="./assets/js/ace-extra.min.js"></script>

		<!-- HTML5shiv and Respond.js for IE8 to support HTML5 elements and media queries -->

		<!--[if lte IE 8]>
		<script src="assets/js/html5shiv.min.js"></script>
		<script src="assets/js/respond.min.js"></script>
		<![endif]-->
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <div class="page-content">
						

						<div class="page-header">
							<h1>
								R2MND
								<small>
									<i class="ace-icon fa fa-angle-double-right"></i>
									Appointment
								</small>
                                <small>
									<i class="ace-icon fa fa-angle-double-right"></i>
									Form
								</small>
							</h1>
						</div><!-- /.page-header -->

						<div class="row">
							<div class="col-xs-12">
								<!-- PAGE CONTENT BEGINS -->
								

								<div class="widget-box">
									<div class="widget-header widget-header-blue widget-header-flat">
										<h4 class="widget-title lighter">Appointment Form</h4>

										
									</div>

									<div class="widget-body">
										<div class="widget-main">
											<div id="fuelux-wizard-container">
												

												<hr />

												<div class="step-content pos-rel">
													<div class="step-pane active" data-step="1">
														<h3 class="lighter block green">Enter the following information</h3>

														

														<form class="form-horizontal" id="validation" runat="server">

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
                                                            <div class="form-group">
																<label class="control-label col-xs-12 col-sm-3 no-padding-right" for="name">Appointment Date:</label>
                                                                <div class="clearfix">
                                                                 <div class="input-group date form_datetime col-md-4" data-date="2017-01-10T05:25:07Z" data-date-format="yyyy MM dd HH:ii p" data-link-field="dtp_input1">
                                                                 <asp:TextBox ID="txtdatetime" runat="server" class="form-control col-xs-12 col-sm-4" size="16" type="text"  ></asp:TextBox>
                                                                <span class="input-group-addon"><span class="glyphicon glyphicon-remove"></span></span>
					                                            <span class="input-group-addon"><span class="glyphicon glyphicon-th"></span></span>
                                                                     </div>
                                                                 </div>
                                                                <input type="hidden" id="dtp_input1" value="" /><br/>
																
															</div>
													
                                                            <div class="hr hr-dotted"></div>
                                                            <div class="space-2"></div>
                                                            <div class="form-group">
																<label class="control-label col-xs-12 col-sm-3 no-padding-right" for="platform">Car:</label>

																<div class="col-xs-12 col-sm-9">
																	<div class="clearfix">
                                                                        <asp:DropDownList ID="ddlCar" runat="server" class="input-medium" ></asp:DropDownList>
																		
																	</div>
																</div>
															</div>

															<div class="space-2"></div>

                                                            <div class="form-group">
																<label class="control-label col-xs-12 col-sm-3 no-padding-right" for="platform">Problem:</label>
                                                                
																<div class="col-xs-12 col-sm-9">
																	<div class="clearfix">
                                                                        <asp:DropDownList ID="ddlProblem" runat="server" class="input-medium" ></asp:DropDownList>
																		
																	</div>
																</div>
															</div>
                                                            <asp:Label ID="lblmsg" runat="server" Text="" ForeColor="white" class=" col-xs-12 col-sm-2 col-sm-offset-3 label-danger" Visible="false" ></asp:Label>


															<div class="space-2"></div>
                                                            <div class="form-group">
																
                                                                 <div class="wizard-actions">
                                                                <asp:button id="btnsubmit" class="btn btn-success btn-next icon-on-submit" Text="Submit" runat="server"  OnClick="btnsubmit_Click"> 
													
												</asp:button>
                                                                     </div>
															</div>
														</form>
													</div>
													
												</div>
											</div>

											<hr />
											<div class="wizard-actions">
												

												
											</div>
										</div><!-- /.widget-main -->
									</div><!-- /.widget-body -->
								</div>

								<!-- PAGE CONTENT ENDS -->
							</div><!-- /.col -->
						</div><!-- /.row -->
					</div><!-- /.page-content -->


    		
    <script type="text/javascript" src="./assets/js/jquery-1.8.3.min.js" charset="UTF-8"></script>
    <script type="text/javascript" src="./assets/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="./assets/js/bootstrap-datetimepicker.js" charset="UTF-8"></script>
    <script type="text/javascript" src="./assets/js/locales/bootstrap-datetimepicker.fr.js" charset="UTF-8"></script>
    
    <script type="text/javascript">
        $('.form_datetime').datetimepicker({
            //language:  'fr',
            weekStart: 1,
            todayBtn: 1,
            autoclose: 1,
            todayHighlight: 1,
            startView: 2,
            forceParse: 0,
            showMeridian: 1
        });
        $('.form_date').datetimepicker({
            language: 'fr',
            weekStart: 1,
            todayBtn: 1,
            autoclose: 1,
            todayHighlight: 1,
            startView: 2,
            minView: 2,
            forceParse: 0
        });
        $('.form_time').datetimepicker({
            language: 'fr',
            weekStart: 1,
            todayBtn: 1,
            autoclose: 1,
            todayHighlight: 1,
            startView: 1,
            minView: 0,
            maxView: 1,
            forceParse: 0
        });
</script>

   
</asp:Content>

