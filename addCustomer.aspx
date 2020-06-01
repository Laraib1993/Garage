<%@ Page Title="" Language="C#" MasterPageFile="~/adminDashboard.master" AutoEventWireup="true" CodeFile="addcustomer.aspx.cs" Inherits="addcustomer" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
		<meta charset="utf-8" />
		<title>Dashboard - Admin</title>
		<meta name="description" content="and Validation" />
		<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0" />
		<link rel="stylesheet" href="assets/css/bootstrap.min.css" />
		<link rel="stylesheet" href="assets/font-awesome/4.5.0/css/font-awesome.min.css" />
		<link rel="stylesheet" href="assets/css/select2.min.css" />
		<link rel="stylesheet" href="assets/css/fonts.googleapis.com.css" />
		<link rel="stylesheet" href="assets/css/ace.min.css" class="ace-main-stylesheet"  />
		<link rel="stylesheet" href="assets/css/ace-skins.min.css" />
		<link rel="stylesheet" href="assets/css/ace-rtl.min.css" />
		<script src="assets/js/ace-extra.min.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
      <div class="page-content">
						

						<div class="page-header">
							<h1>
								R2MND
								<small>
									<i class="ace-icon fa fa-angle-double-right"></i>
									Employee
								</small>
                                <small>
									<i class="ace-icon fa fa-angle-double-right"></i>
									Add Employee
								</small>
							</h1>
						</div><!-- /.page-header -->

						<div class="row">
							<div class="col-xs-12">
								<!-- PAGE CONTENT BEGINS -->
								

								<div class="widget-box">
									<div class="widget-header widget-header-blue widget-header-flat">
										<h4 class="widget-title lighter">Add Customer</h4>

										
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
																<label class="control-label col-xs-12 col-sm-3 no-padding-right" >Full Name:</label>

																<div class="col-xs-12 col-sm-9">
																	<div class="clearfix">
                                                                        <asp:TextBox ID="txtfullname" runat="server" type="text"  class="col-xs-12 col-sm-4"></asp:TextBox>
																		
																	</div>
																</div>
															</div>
                                                            
                                                             <div class="form-group">
																<label class="control-label col-xs-12 col-sm-3 no-padding-right" for="email" >Email:</label>

																<div class="col-xs-12 col-sm-9">
																	<div class="clearfix">
                                                                        <asp:TextBox ID="txtemail" runat="server" type="text"  class="col-xs-12 col-sm-4"></asp:TextBox>
																		
																	</div>
																</div>
															</div>
                                                            
                                                             <div class="form-group">
																<label class="control-label col-xs-12 col-sm-3 no-padding-right" >User Name:</label>

																<div class="col-xs-12 col-sm-9">
																	<div class="clearfix">
                                                                        <asp:TextBox ID="txtusername" runat="server" type="text"  class="col-xs-12 col-sm-4"></asp:TextBox>
																		
																	</div>
																</div>
															</div>
                                                            
                                                             <div class="form-group">
																<label class="control-label col-xs-12 col-sm-3 no-padding-right" >Password:</label>

																<div class="col-xs-12 col-sm-9">
																	<div class="clearfix">
                                                                        <asp:TextBox ID="txtpass" runat="server" type="text" class="col-xs-12 col-sm-4" TextMode="Password"></asp:TextBox>
																		
																	</div>
																</div>
															</div>
                                                            
                                                             <div class="form-group">
																<label class="control-label col-xs-12 col-sm-3 no-padding-right" >Confirm Password:</label>

																<div class="col-xs-12 col-sm-9">
																	<div class="clearfix">
                                                                        <asp:TextBox ID="txtcnfrmpass" runat="server" type="text"  class="col-xs-12 col-sm-4" TextMode="Password"></asp:TextBox>
																		
																	</div>
																</div>
															</div>
                                                            
                                                             <div class="form-group">
																<label class="control-label col-xs-12 col-sm-3 no-padding-right" >CNIC:</label>

																<div class="col-xs-12 col-sm-9">
																	<div class="clearfix">
                                                                        <asp:TextBox ID="txtcnic" runat="server" type="text"  class="col-xs-12 col-sm-4"></asp:TextBox>
																		
																	</div>
																</div>
															</div>
                                                            
                                                             <div class="form-group">
																<label class="control-label col-xs-12 col-sm-3 no-padding-right" >Mobile:</label>

																<div class="col-xs-12 col-sm-9">
																	<div class="clearfix">
                                                                        <asp:TextBox ID="txtmobile" runat="server" type="text"  class="col-xs-12 col-sm-4"></asp:TextBox>
																		
																	</div>
																</div>
															</div>
                                                            
                                                             <div class="form-group">
																<label class="control-label col-xs-12 col-sm-3 no-padding-right" >Address:</label>

																<div class="col-xs-12 col-sm-9">
																	<div class="clearfix">
                                                                        <asp:TextBox ID="txtadd" runat="server" type="text"  class="col-xs-12 col-sm-4"></asp:TextBox>
																		
																	</div>
																</div>
															</div>	
                                                             <div class="social-or-login center">
												<span class="bigger-110">
                                                    <asp:Label ID="lblMessage" runat="server" ForeColor="Red"></asp:Label></span>
											</div>	
                                                           
                                                            <div class="wizard-actions">
												
                                                <asp:Button ID="btnSubmit" runat="server" Text="Submit" class="btn btn-success btn-next ace-icon fa fa-arrow-submit icon-on-submit" OnClick="btnSubmit_Click" />
												
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
					</div>
</asp:Content>

