<%@ Page Title="" Language="C#" MasterPageFile="~/CustomerDashboard.master" AutoEventWireup="true" CodeFile="AddCar.aspx.cs" Inherits="AddCar" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
          <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
		<meta charset="utf-8" />
		<title>Form Wizard - Ace Admin</title>

		<meta name="description" content="and Validation" />
		<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0" />

		<!-- bootstrap & fontawesome -->
		<link rel="stylesheet" href="assets/css/bootstrap.min.css" />
		<link rel="stylesheet" href="assets/font-awesome/4.5.0/css/font-awesome.min.css" />

		<!-- page specific plugin styles -->
		<link rel="stylesheet" href="assets/css/select2.min.css" />

		<!-- text fonts -->
		<link rel="stylesheet" href="assets/css/fonts.googleapis.com.css" />

		<!-- ace styles -->
		<link rel="stylesheet" href="assets/css/ace.min.css" class="ace-main-stylesheet"  />

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
    <div class="page-content">
						

						<div class="page-header">
							<h1>
								R2MND
								<small>
									<i class="ace-icon fa fa-angle-double-right"></i>
									Car Information
								</small>
                                <small>
									<i class="ace-icon fa fa-angle-double-right"></i>
									Add Car
								</small>
							</h1>
						</div><!-- /.page-header -->

						<div class="row">
							<div class="col-xs-12">
								<!-- PAGE CONTENT BEGINS -->
								

								<div class="widget-box">
									<div class="widget-header widget-header-blue widget-header-flat">
										<h4 class="widget-title lighter">Add Car</h4>

										
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
																<label class="control-label col-xs-12 col-sm-3 no-padding-right" for="platform">Company</label>

																<div class="col-xs-12 col-sm-9">
																	<div class="clearfix">
                                                                        <asp:DropDownList ID="ddlCompany" runat="server" class="input-medium" ></asp:DropDownList>
																		
																	</div>
																</div>
															</div>

															<div class="space-2"></div>

                                                            <div class="form-group">
																<label class="control-label col-xs-12 col-sm-3 no-padding-right" for="platform">Model</label>
                                                                
																<div class="col-xs-12 col-sm-9">
																	<div class="clearfix">
                                                                        <asp:DropDownList ID="ddlModel" runat="server" class="input-medium" ></asp:DropDownList>
																		
																	</div>
																</div>
															</div>

															<div class="space-2"></div>

                                                            <div class="form-group">
																<label class="control-label col-xs-12 col-sm-3 no-padding-right" >Car Type</label>

																<div class="col-xs-12 col-sm-9">
																	<div class="clearfix">
                                                                        <asp:DropDownList ID="ddlType" runat="server" class="input-medium" ></asp:DropDownList>
																		
																	</div>
																</div>
															</div>

                                                            <%--<div class="form-group">
																<label class="control-label col-xs-12 col-sm-3 no-padding-right">Car Type</label>

																<div class="col-xs-12 col-sm-9">
																	<div class="clearfix">
                                                                        <asp:DropDownList ID="ddluserid" runat="server" class="input-medium"></asp:DropDownList>
																		
																	</div>
																</div>
															</div>--%>
															<div class="space-2"></div>
                                                            <div class="hr hr-dotted"></div>
                                                            
                                                            <div class="form-group">
																<label class="control-label col-xs-12 col-sm-3 no-padding-right" for="email">Car Name:</label>

																<div class="col-xs-12 col-sm-9">
																	<div class="clearfix">
                                                                        <asp:TextBox ID="txtCarName" runat="server" type="text"  class="col-xs-12 col-sm-4"></asp:TextBox>
																		
																	</div>
																</div>
															</div>

															<div class="space-2"></div>

															<div class="form-group">
																<label class="control-label col-xs-12 col-sm-3 no-padding-right" for="name">Engine No:</label>

																<div class="col-xs-12 col-sm-9">
																	<div class="clearfix">
                                                                        <asp:TextBox ID="txtEngineNo" runat="server" type="text"  class="col-xs-12 col-sm-4"></asp:TextBox>
																		
																	</div>
																</div>
															</div>


															<div class="space-2"></div>
                                                            <div class="form-group">
																<label class="control-label col-xs-12 col-sm-3 no-padding-right" for="name">Name Plate No:</label>

																<div class="col-xs-12 col-sm-9">
																	<div class="clearfix">
                                                                        <asp:TextBox ID="txtnameplate" runat="server" type="text"  class="col-xs-12 col-sm-4"></asp:TextBox>
																		
																	</div>
																</div>
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
			

	
</asp:Content>

