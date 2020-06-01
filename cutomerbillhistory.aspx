<%@ Page Title="" Language="C#" MasterPageFile="~/CustomerDashboard.master" AutoEventWireup="true" CodeFile="cutomerbillhistory.aspx.cs" Inherits="cutomerbillhistory" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
     <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
		<meta charset="utf-8" />
		<title>Dashboard - R2NMD Customer</title>

		<meta name="description" content="overview &amp; stats" />
		<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0" />

		<!-- bootstrap & fontawesome -->
		<link rel="stylesheet" href="assets/css/bootstrap.min.css" />
		<link rel="stylesheet" href="assets/font-awesome/4.5.0/css/font-awesome.min.css" />

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
								<span class="input-icon">
									<input type="text" placeholder="Search ..." class="nav-search-input" id="nav-search-input" autocomplete="off" />
									<i class="ace-icon fa fa-search nav-search-icon"></i>
								</span>
						</div><!-- /.nav-search -->
					</div>

					<div class="page-content">
						

						<div class="page-header">
							<h1>
								List
								<small>
									<i class="ace-icon fa fa-angle-double-right"></i>
									Bill
								</small>
							</h1>
						</div><!-- /.page-header -->

						<div class="row">
							<div class="col-xs-12">
								<!-- PAGE CONTENT BEGINS -->
								
										
										    <div class="clearfix">
											    <div class="pull-right tableTools-container"></div>
										    </div>
										    <div class="table-header">
											    Results for "All paid bill"
										    </div>

										    <!-- div.table-responsive -->

										    <!-- div.dataTables_borderWrap -->
										    <div>
                                <asp:ListView ID="ListView1" runat="server" DataSourceID="SqlDataSource1" 
            onsorting="ListView1_Sorting" 
            onitemcommand="ListView1_ItemCommand" >
            <AlternatingItemTemplate>
                    <tr style="">
                         <td>
                    <asp:Label ID="FullNameLabel" runat="server" Text='<%# Eval("FullName") %>' />
                </td>
                <td>
                    <asp:Label ID="EmailLabel" runat="server" Text='<%# Eval("Email") %>' />
                </td>
                <td>
                    <asp:Label ID="MobileLabel" runat="server" Text='<%# Eval("Mobile") %>' />
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
                <td>
                    <asp:Label ID="AccountStatusLabel" runat="server" class="label label-sm invoice-info-label " Text='<%# Eval("AccountStatus") %>' />
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
                    <asp:TextBox ID="FullNameTextBox" runat="server" Text='<%# Bind("FullName") %>' />
                </td>
                <td>
                    <asp:TextBox ID="EmailTextBox" runat="server" Text='<%# Bind("Email") %>' />
                </td>
                <td>
                    <asp:TextBox ID="MobileTextBox" runat="server" Text='<%# Bind("Mobile") %>' />
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
                        <asp:TextBox ID="FullNameTextBox" runat="server" Text='<%# Bind("FullName") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="EmailTextBox" runat="server" Text='<%# Bind("Email") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="MobileTextBox" runat="server" Text='<%# Bind("Mobile") %>' />
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
                    <td>
                        <asp:TextBox ID="AccountStatusTextBox" runat="server" Text='<%# Bind("AccountStatus") %>' />
                    </td>
                </tr>
                
            </InsertItemTemplate>
            
            <ItemTemplate>
                    <tr style="">
                        <td>
                    <asp:Label ID="FullNameLabel" runat="server" Text='<%# Eval("FullName") %>' />
                </td>
                <td>
                    <asp:Label ID="EmailLabel" runat="server" Text='<%# Eval("Email") %>' />
                </td>
                <td>
                    <asp:Label ID="MobileLabel" runat="server" Text='<%# Eval("Mobile") %>' />
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
                <td>
                    <asp:Label ID="AccountStatusLabel" class="label label-sm invoice-info-label " runat="server" Text='<%# Eval("AccountStatus") %>' />
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
										 Name</th>
									<th runat="server">Email</th>
                                    <th runat="server">Mobile</th>
                                    <th runat="server">Submission Date </th>
                                    <th runat="server">Handover Date</th>
                                    <th runat="server">Payment</th>
                                    <th runat="server">Status</th>
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
            
           <SelectedItemTemplate>
                                                             <tr style="">
                                                                 
                                                                 <td>
                    <asp:Label ID="FullNameLabel" runat="server" Text='<%# Eval("FullName") %>' />
                </td>
                <td>
                    <asp:Label ID="EmailLabel" runat="server" Text='<%# Eval("Email") %>' />
                </td>
                <td>
                    <asp:Label ID="MobileLabel" runat="server" Text='<%# Eval("Mobile") %>' />
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
                <td>
                    <asp:Label ID="AccountStatusLabel" runat="server" Text='<%# Eval("AccountStatus") %>' />
                </td>
                                                             </tr>
        </SelectedItemTemplate>

        </asp:ListView>
    
         <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
             ConnectionString="<%$ ConnectionStrings:workshopConnectionString %>" 
             SelectCommand="sp_customerbillhistory" SelectCommandType="StoredProcedure">
             <SelectParameters>
                  <asp:ControlParameter Name="userinfoID" ControlID="username" PropertyName="Value" />
                 <%--<asp:Parameter DefaultValue=""  Name="userinfoID" Type="Int64" />--%>
             </SelectParameters>


                                </asp:SqlDataSource>
                                <asp:HiddenField ID="username" runat="server" />
    

								

								

								<div class="row">
									<div class="col-sm-5">
										
									</div><!-- /.col -->

									<div class="col-sm-7">
										
									</div><!-- /.col -->
								</div><!-- /.row -->

							

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
    </form>
</asp:Content>

