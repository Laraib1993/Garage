﻿<%@ Page Title="" Language="C#" MasterPageFile="~/CustomerDashboard.master" AutoEventWireup="true" CodeFile="customerallcarinhouse.aspx.cs" Inherits="customerallcarinhouse" %>

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

							<li>
								<a href="#">Customer</a>
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
						

						<div class="page-header">
							<h1>
								List
								<small>
									<i class="ace-icon fa fa-angle-double-right"></i>
									Car
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
											    Results for "All registered cars"
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
            onitemcommand="ListView1_ItemCommand" >
            <AlternatingItemTemplate>
                    <tr style="">
                        <td>
                            <asp:Label ID="FullNameLabel" runat="server" Text='<%# Eval("FullName") %>' />
                        </td>
                        <td><asp:Label runat="server" ID="carnameLabel" Text='<%# Eval("carname") %>'></asp:Label>

                        </td>
                        <td>
                            <asp:Label runat="server" ID="enginenumberLabel" Text='<%# Eval("enginenumber") %>'></asp:Label>

                        </td>
                        <td>
                            
                            <asp:Label ID="nameplateLabel" runat="server" Text='<%# Eval("nameplate") %>' />
                        </td>
                        <td>
                            <asp:Label ID="companynameLabel" runat="server" Text='<%# Eval("companyname") %>' />
                        </td>
                        <td>
							<asp:Label ID="modelLabel" runat="server" Text='<%# Eval("model") %>' />
                        </td>
                        <td>
                            <asp:Label ID="nameLabel" runat="server" Text='<%# Eval("name") %>' />
                        </td>
                        <td>
                            <asp:Label ID="receivingdateLabel" runat="server" Text='<%# Eval("receivingdate") %>' />
                        </td>
                        <td>
                            <asp:Label ID="handovedateLabel" runat="server" Text='<%# Eval("handovedate") %>' />
                        </td>
                        <td>
                            <asp:Label ID="paymentLabel" runat="server" class="label label-sm arrowed-in-right label-danger " Text='<%# Eval("payment") %>' />
                        </td>
                        </tr></AlternatingItemTemplate><EditItemTemplate>
                    
                </tr style="">
                    
                                                          <td>
                                                              <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
                                                              <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
                                                          </td>
                                                          <td>
                                                              <asp:TextBox ID="FullNameTextBox" runat="server" Text='<%# Bind("FullName") %>' />
                                                          </td>
                                                          <td>
                                                              <asp:TextBox ID="carnameTextBox" runat="server" Text='<%# Bind("carname") %>' />
                                                          </td>
                                                          <td>
                                                              <asp:TextBox ID="enginenumberTextBox" runat="server" Text='<%# Bind("enginenumber") %>' />
                                                          </td>
                                                          <td>
                                                              <asp:TextBox ID="nameplateTextBox" runat="server" Text='<%# Bind("nameplate") %>' />
                                                          </td>
                                                          <td>
                                                              <asp:TextBox ID="companynameTextBox" runat="server" Text='<%# Bind("companyname") %>' />
                                                          </td>
                                                          <td>
                                                              <asp:TextBox ID="modelTextBox" runat="server" Text='<%# Bind("model") %>' />
                                                          </td>
                                                          <td>
                                                              <asp:TextBox ID="nameTextBox" runat="server" Text='<%# Bind("name") %>' />
                                                          </td>
                                                          <td>
                                                              <asp:TextBox ID="receivingdateTextBox" runat="server" Text='<%# Bind("receivingdate") %>' />
                                                          </td>
                                                          <td>
                                                              <asp:TextBox ID="handovedateTextBox" runat="server" Text='<%# Bind("handovedate") %>' />
                                                          </td>
                                                          <td>
                                                              <asp:TextBox ID="paymentTextBox" runat="server" Text='<%# Bind("payment") %>' />
                                                          </td>
                                                      </EditItemTemplate><EmptyDataTemplate>
                <table runat="server" style="">
                    <tr>
                        <td>No data was returned.</td></tr></table></EmptyDataTemplate><InsertItemTemplate>
               
            </InsertItemTemplate>
            
            <ItemTemplate>
                    <tr style="">
                        <td>
                            <asp:Label ID="FullNameLabel" runat="server" Text='<%# Eval("FullName") %>' />
                        </td>
                        <td><asp:Label runat="server" ID="carnameLabel" Text='<%# Eval("carname") %>'></asp:Label></td><td>
                            <asp:Label runat="server" ID="enginenumberLabel" Text='<%# Eval("enginenumber") %>'></asp:Label></td><td>
                            
                            <asp:Label ID="nameplateLabel" runat="server" Text='<%# Eval("nameplate") %>' />
                        </td>
                        <td>
                            <asp:Label ID="companynameLabel" runat="server" Text='<%# Eval("companyname") %>' />
                        </td>
                        <td>
							<asp:Label ID="modelLabel" runat="server" Text='<%# Eval("model") %>' />
                        </td>
                        <td>
                            <asp:Label ID="nameLabel" runat="server" Text='<%# Eval("name") %>' />
                        </td>
                        <td>
                            <asp:Label ID="receivingdateLabel" runat="server" Text='<%# Eval("receivingdate") %>' />
                        </td>
                        <td>
                            <asp:Label ID="handovedateLabel" runat="server" Text='<%# Eval("handovedate") %>' />
                        </td>
                        <td>
                            <asp:Label ID="paymentLabel" runat="server" class="label label-sm arrowed-in-right label-danger " Text='<%# Eval("payment") %>' />
                        </td>
                        </tr></ItemTemplate><LayoutTemplate>
                <table runat="server" class="col-lg-12 col-md-12">
                    <tr runat="server">
                        <td runat="server">
                            <table id="itemPlaceholderContainer" runat="server" class="table table-striped table-bordered table-hover">
                                <tr runat="server" style="">
                                     <th runat="server">
										 Name</th><th runat="server">Car</th>
                                    <th runat="server">Engine Number</th>
                                    <th runat="server">Name Plate</th>
                                    <th runat="server">Company Name</th>
                                    <th runat="server">Model</th>

                                     <th runat="server">Capicity</th>
                                     <th runat="server">Submission Date</th>
                                     <th runat="server">Handove Date</th>
                                     <th runat="server">Payment</th>

                                </tr><tr id="itemPlaceholder" runat="server">
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <%--<tr runat="server">
                        <td runat="server" style="">
                            <asp:DataPager ID="DataPager1" runat="server">
                                <Fields>
                                    <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" ShowLastPageButton="True" />
                                </Fields>
                            </asp:DataPager>
                        </td>
                    </tr>--%>
                </table>
            </LayoutTemplate>
                                                                    <SelectedItemTemplate>
                                                             <tr style="">
                                                                 
                                                                 <td>
                                                                     <asp:Label ID="FullNameLabel" runat="server" Text='<%# Eval("FullName") %>' />
                                                                 </td>
                                                                 <td>
                                                                     <asp:Label ID="carnameLabel" runat="server" Text='<%# Eval("carname") %>' />
                                                                 </td>
                                                                 <td>
                                                                     <asp:Label ID="enginenumberLabel" runat="server" Text='<%# Eval("enginenumber") %>' />
                                                                 </td>
                                                                 <td>
                                                                     <asp:Label ID="nameplateLabel" runat="server" Text='<%# Eval("nameplate") %>' />
                                                                 </td>
                                                                 <td>
                                                                     <asp:Label ID="companynameLabel" runat="server" Text='<%# Eval("companyname") %>' />
                                                                 </td>
                                                                 <td>
                                                                     <asp:Label ID="modelLabel" runat="server" Text='<%# Eval("model") %>' />
                                                                 </td>
                                                                        <td>
                                                                            <asp:Label ID="nameLabel" runat="server" Text='<%# Eval("name") %>' />
                                                                 </td>
                                                                 <td>
                                                                     <asp:Label ID="receivingdateLabel" runat="server" Text='<%# Eval("receivingdate") %>' />
                                                                 </td>
                                                                 <td>
                                                                     <asp:Label ID="handovedateLabel" runat="server" Text='<%# Eval("handovedate") %>' />
                                                                 </td>
                                                                 <td>
                                                                     <asp:Label ID="paymentLabel" runat="server" Text='<%# Eval("payment") %>' />
                                                                 </td>
                                                                        </tr></SelectedItemTemplate>

                                                  </asp:ListView><asp:SqlDataSource ID="SqlDataSource1" runat="server" 
             ConnectionString="<%$ ConnectionStrings:workshopConnectionString %>" 
             SelectCommand="sp_allcarinhouse" SelectCommandType="StoredProcedure">

                                                      <SelectParameters>
                  <asp:ControlParameter Name="userinfoID" ControlID="username" PropertyName="Value" />
                 <%--<asp:Parameter DefaultValue=""  Name="userinfoID" Type="Int64" />--%>
             </SelectParameters>
                                                                 </asp:SqlDataSource>
                                                 <asp:HiddenField ID="username" runat="server" />
    

                                            </form>
                                           
                                            </div>
        
                                        </div>
                                       </div>
                            </div>
                         </div>
</asp:Content>

