﻿<%@ Page Title="" Language="C#" MasterPageFile="~/adminDashboard.master" AutoEventWireup="true" CodeFile="alluser.aspx.cs" Inherits="alluser" %>

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

							<li>
								<a href="#">User</a>
							</li>
							<li class="active">List</li>
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
						<!-- /.ace-settings-container -->

						<div class="page-header">
							<h1>
								List
								<small>
									<i class="ace-icon fa fa-angle-double-right"></i>
									Users
								</small>
							</h1>
						</div><!-- /.page-header -->

						
                     <div class="row">
							<div class="col-xs-12">
                                
	                                <div class="row">
									    <div class="col-xs-12">
										
										    <div class="clearfix">
											    <div class="pull-right tableTools-container"></div>
										    </div>
										    <div class="table-header">
											    Results for "All User List"
										    </div>

										    <!-- div.table-responsive -->

										    <!-- div.dataTables_borderWrap -->
										    <div>
                                            <form id="formlist" runat="server">
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




                                                  <asp:ListView ID="ListView1" runat="server" DataSourceID="SqlDataSource1" 
            onsorting="ListView1_Sorting" 
            onitemcommand="ListView1_ItemCommand" DataKeyNames="userinfoID" >
            <AlternatingItemTemplate>
                    <tr style="">
                        <td>
                            <asp:Label ID="userinfoIDLabel" runat="server" Text='<%# Eval("userinfoID") %>' />
                        </td>
                        <td><asp:Label runat="server" ID="UsernameLabel" Text='<%# Eval("Username") %>'></asp:Label></td>
                        <td><asp:Label runat="server" ID="FullNameLabel" Text='<%# Eval("FullName") %>'></asp:Label></td>
                        <td>
                            <asp:Label ID="MobileLabel" runat="server" Text='<%# Eval("Mobile") %>' />
                            </td>
                         <td>
                             <asp:Label ID="EmailLabel" runat="server" Text='<%# Eval("Email") %>' />
                        </td>
                        <td>
															<asp:Label ID="CNICLabel" runat="server" Text='<%# Eval("CNIC") %>' />
                        </td>
                        <td>
                            <asp:LinkButton runat="server" class="label label-sm arrowed-in-right label-warning">
                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("RoleName") %>' />
                                </asp:LinkButton>
                        </td>
                        <td>
                             <asp:LinkButton runat="server" class="label label-sm arrowed-in-right label-danger">
                            <asp:Label ID="Label2" runat="server" Text='<%# Eval("AccountStatus") %>' />
                                 </asp:LinkButton>
                        </td>
                    </tr>
            </AlternatingItemTemplate>
            <EditItemTemplate>
                    
                </tr style="">
                    
                  <td>
                      <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
                      <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
                </td>
                <td>
                    <asp:Label ID="userinfoIDLabel1" runat="server" Text='<%# Eval("userinfoID") %>' />
                </td>
                <td>
                    <asp:TextBox ID="UsernameTextBox" runat="server" Text='<%# Bind("Username") %>' />
                </td>
                <td>
                    <asp:TextBox ID="FullNameTextBox" runat="server" Text='<%# Bind("FullName") %>' />
                </td>
                <td>
                    <asp:TextBox ID="MobileTextBox" runat="server" Text='<%# Bind("Mobile") %>' />
                </td>
                <td>
                    <asp:TextBox ID="EmailTextBox" runat="server" Text='<%# Bind("Email") %>' />
                </td>
                <td>
                    <asp:TextBox ID="CNICTextBox" runat="server" Text='<%# Bind("CNIC") %>' />
                </td>
                <td>
                    <asp:TextBox ID="RoleNameTextBox" runat="server" Text='<%# Bind("RoleName") %>' />
                </td>
                <td>
                    <asp:TextBox ID="AccountStatusTextBox" runat="server" Text='<%# Bind("AccountStatus") %>' />
                </td>
            </EditItemTemplate>
            <EmptyDataTemplate>
                <table runat="server" style="">
                    <tr>
                        <td>No data was returned.</td>
                    </tr>
                </table>
            </EmptyDataTemplate>
            <InsertItemTemplate>
                <tr style="">
                    <td>
                        <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" />
                        <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" />
                    </td>
                    <td>
                        &nbsp;</td>
                    <td><asp:TextBox ID="UsernameTextBox" runat="server" Text='<%# Bind("Username") %>'></asp:TextBox></td>
                     <td>
                         <asp:TextBox ID="FullNameTextBox" runat="server" Text='<%# Bind("FullName") %>' />
                    </td>
                    
                    <td>
                        <asp:TextBox ID="MobileTextBox" runat="server" Text='<%# Bind("Mobile") %>' />
                    </td>
                    <td>
                            <asp:TextBox ID="EmailTextBox" runat="server" Text='<%# Bind("Email") %>' />
                        </td>
                        <td>
															<asp:TextBox ID="CNICTextBox" runat="server" Text='<%# Bind("CNIC") %>' />
                        </td>
                    <td>
                        <asp:TextBox ID="RoleNameTextBox" runat="server" Text='<%# Bind("RoleName") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="AccountStatusTextBox" runat="server" Text='<%# Bind("AccountStatus") %>' />
                    </td>
                </tr>
            </InsertItemTemplate>
            
            <ItemTemplate>
                    <tr style="">
                        <td>
                            <asp:Label ID="userinfoIDLabel" runat="server" Text='<%# Eval("userinfoID") %>' />
                        </td>
                        <td><asp:Label runat="server" ID="UsernameLabel" Text='<%# Eval("Username") %>'></asp:Label></td>
                        <td><asp:Label runat="server" ID="FullNameLabel" Text='<%# Eval("FullName") %>'></asp:Label></td>
                        <td>
                            
                            <asp:Label ID="MobileLabel" runat="server" Text='<%# Eval("Mobile") %>' />
                        </td>
                        <td>
                            <asp:Label ID="EmailLabel" runat="server" Text='<%# Eval("Email") %>' />
                        </td>
                        <td>
															<asp:Label ID="CNICLabel" runat="server" Text='<%# Eval("CNIC") %>' />
                        </td>
                        <td>
                            <asp:LinkButton runat="server" class="label label-sm arrowed-in-right label-warning">
                            <asp:Label ID="RoleNameLabel" runat="server" Text='<%# Eval("RoleName") %>' />
                                </asp:LinkButton>
                        </td>
                        <td>
                             <asp:LinkButton runat="server" class="label label-sm arrowed-in-right label-danger">
                            <asp:Label ID="AccountStatusLabel" runat="server" Text='<%# Eval("AccountStatus") %>' />
                                 </asp:LinkButton>
                        </td>
                    </tr>
            </ItemTemplate>
            <LayoutTemplate>
                <table runat="server" class="col-lg-12 col-md-12">
                    <tr runat="server">
                        <td runat="server">
                            <table id="itemPlaceholderContainer" runat="server" class="table table-striped table-bordered table-hover">
                                <tr runat="server" style="">
                                     <th runat="server">
										 userinfoID</th>
									<th runat="server">Username</th>
                                    <th runat="server">FullName</th>
                                    <th runat="server">Mobile</th>
                                    <th runat="server">Email</th>
                                    <th runat="server">CNIC</th>
                                    <th runat="server">RoleName</th>
                                     <th runat="server">AccountStatus</th>
                                </tr>
                                <tr id="itemPlaceholder" runat="server">
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr runat="server">
                        <td runat="server" style=""></td>
                    </tr>
                </table>
            </LayoutTemplate>
            <%--<SelectedItemTemplate>
                <tr style="">
                    <th class="center">
															<label class="pos-rel">
																<input type="checkbox" class="ace" />
																<span class="lbl"></span>
															</label>
														</th>
                    <td><asp:Label runat="server" ID="Label14" Text='<%# Eval("jobseekerId") %>' ></asp:Label></td>
                    <td>
                        <asp:Label ID="jobseekernameLabel" runat="server" Text='<%# Eval("jobseekername") %>' />
                    </td>
                    <td>
                        <asp:Label ID="emailLabel" runat="server" Text='<%# Eval("email") %>' />
                    </td>
                    <td>
                        <asp:Label ID="phoneLabel" runat="server" Text='<%# Eval("phone") %>' />
                    </td>
                    <td>
                        <asp:Label ID="genderLabel" runat="server" Text='<%# Eval("gender") %>' />
                    </td>
                    <td>
                        <asp:Label ID="desiredsalarayLabel" runat="server" Text='<%# Eval("desiredsalaray") %>' />
                    </td>
                    <td>
                        <asp:Label ID="amountLabel" runat="server" Text='<%# Eval("amount") %>' />
                    </td>
                    <td>
                        <asp:Label ID="durationmonthLabel" runat="server" Text='<%# Eval("durationmonth") %>' />
                    </td>
                    <td>
                        <asp:Label ID="levelnameLabel" runat="server" Text='<%# Eval("levelname") %>' />
                    </td>
                    <td>
                        <asp:LinkButton ID="lnkUpdate" class="label label-sm arrowed-in-right label-warning " runat="server">
                        <asp:Label ID="functinalareanameLabel" runat="server" Text='<%# Eval("functinalareaname") %>' />
                        </asp:LinkButton>
                    </td>
                </tr>
            </SelectedItemTemplate>
            --%>
                                                         <SelectedItemTemplate>
                                                             <tr style="">
                                                                 
                                                                 <td>
                                                                     <asp:Label ID="userinfoIDLabel" runat="server" Text='<%# Eval("userinfoID") %>' />
                                                                 </td>
                                                                 <td>
                                                                     <asp:Label ID="UsernameLabel" runat="server" Text='<%# Eval("Username") %>' />
                                                                 </td>
                                                                 <td>
                                                                     <asp:Label ID="FullNameLabel" runat="server" Text='<%# Eval("FullName") %>' />
                                                                 </td>
                                                                 <td>
                                                                     <asp:Label ID="MobileLabel" runat="server" Text='<%# Eval("Mobile") %>' />
                                                                 </td>
                                                                 <td>
                                                                     <asp:Label ID="EmailLabel" runat="server" Text='<%# Eval("Email") %>' />
                                                                 </td>
                                                                 <td>
                                                                     <asp:Label ID="CNICLabel" runat="server" Text='<%# Eval("CNIC") %>' />
                                                                 </td>
                                                                 <td>
                                                                     <asp:Label ID="RoleNameLabel" runat="server" Text='<%# Eval("RoleName") %>' />
                                                                 </td>
                                                                 <td>
                                                                     <asp:Label ID="AccountStatusLabel" runat="server" Text='<%# Eval("AccountStatus") %>' />
                                                                 </td>
                                                             </tr>
                                                         </SelectedItemTemplate>
        </asp:ListView>
    
         <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
             ConnectionString="<%$ ConnectionStrings:workshopConnectionString %>" 
             SelectCommand="sp_sp_userfulldetail" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
    

                                            </form>
                                           
                                            </div>
        
                                        </div>
                                       </div>
                            </div>
                         </div>   
</asp:Content>

