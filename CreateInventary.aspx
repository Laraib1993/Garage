﻿<%@ Page Title="" Language="C#" MasterPageFile="~/adminDashboard.master" AutoEventWireup="true" CodeFile="CreateInventary.aspx.cs" Inherits="CreateInventary" %>

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
									Inventary
								</small>
                                <small>
									<i class="ace-icon fa fa-angle-double-right"></i>
									Create Inventary
								</small>
							</h1>
						</div><!-- /.page-header -->

						<div class="row">
							<div class="col-xs-12">
								<!-- PAGE CONTENT BEGINS -->
								

								<div class="widget-box">
									<div class="widget-header widget-header-blue widget-header-flat">
										<h4 class="widget-title lighter">Add Inventary</h4>

										
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
																<label class="control-label col-xs-12 col-sm-3 no-padding-right" for="email">Product Name:</label>

																<div class="col-xs-12 col-sm-9">
																	<div class="clearfix">
                                                                        <asp:TextBox ID="txtProductName" runat="server" type="text" name="Product Name" class="col-xs-12 col-sm-4"></asp:TextBox>
																		
																	</div>
																</div>
															</div>
                                                            <div class="space-2"></div>

                                                             <div class="form-group">
																<label class="control-label col-xs-12 col-sm-3 no-padding-right" for="email">Purchase Date:</label>

																<div class="col-xs-12 col-sm-9">
																	<div class="clearfix">
                                                                 <div class="input-group date form_datetime col-md-4" data-date="2017-01-10T05:25:07Z" data-date-format="yyyy MM dd HH:ii p" data-link-field="dtp_input1">
                                                                 <asp:TextBox ID="txtPurchaseDate" runat="server" class="form-control col-xs-12 col-sm-4" size="16" type="text"  ></asp:TextBox>
                                                                <span class="input-group-addon"><span class="glyphicon glyphicon-remove"></span></span>
					                                            <span class="input-group-addon"><span class="glyphicon glyphicon-th"></span></span>
                                                                     </div>
                                                                 </div>
                                                                <input type="hidden" id="dtp_input1" value="" /><br/>
																</div>

															</div>
                                                            <div class="space-2"></div>
                                                            <div class="hr hr-dotted"></div>
                                                             <div class="form-group">
																<label class="control-label col-xs-12 col-sm-3 no-padding-right" >Purchase Prize:</label>

																<div class="col-xs-12 col-sm-9">
																	<div class="clearfix">
                                                                        <asp:TextBox ID="txtPurchasePrize" runat="server" type="text"  class="col-xs-12 col-sm-4"></asp:TextBox>
																		
																	</div>
																</div>
															</div>
                                                            <div class="space-2"></div>
                                                            <div class="form-group">
																<label class="control-label col-xs-12 col-sm-3 no-padding-right" for="platform">Labour Charge:</label>

																<div class="col-xs-12 col-sm-9">
																	<div class="clearfix">
                                                                        <asp:DropDownList ID="ddlLabourCharge" runat="server" class="input-medium" ></asp:DropDownList>
																	</div>
																</div>
															</div>
                                                            <div class="space-2"></div>
															<div class="form-group">
																<label class="control-label col-xs-12 col-sm-3 no-padding-right" >Status:</label>

																<div class="col-xs-12 col-sm-9">
																	<div class="clearfix">
                                                                        <asp:DropDownList ID="ddlstatus" runat="server" class="input-medium" >
                                                                            <asp:ListItem Value="0">Select Status</asp:ListItem>
                                                                            <asp:ListItem Value="6">Available</asp:ListItem>
                                                                            <asp:ListItem Value="7">Not-Available</asp:ListItem>
                                                                        </asp:DropDownList>
																	</div>
																</div>
															</div>

															<div class="space-2"></div>
                                                            
                                                            
                                                             

															
                                                            <div class="space-2"></div>

                                                             <div class="form-group">
																
															     <asp:Label ID="lblMessage" runat="server" ForeColor="Red"></asp:Label>
															</div>
                                                             <div class="space-2"></div>
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
					</div><!-- /.page-content -->


    
	<%--	<!-- basic scripts -->

		<!--[if !IE]> -->
		<script src="assets/js/jquery-2.1.4.min.js"></script>

		<!-- <![endif]-->

		<!--[if IE]>
<script src="assets/js/jquery-1.11.3.min.js"></script>
<![endif]-->
		<script type="text/javascript">
		    if ('ontouchstart' in document.documentElement) document.write("<script src='assets/js/jquery.mobile.custom.min.js'>" + "<" + "/script>");
		</script>
		<script src="assets/js/bootstrap.min.js"></script>

		<!-- page specific plugin scripts -->
		<script src="assets/js/wizard.min.js"></script>
		<script src="assets/js/jquery.validate.min.js"></script>
		<script src="assets/js/jquery-additional-methods.min.js"></script>
		<script src="assets/js/bootbox.js"></script>
		<script src="assets/js/jquery.maskedinput.min.js"></script>
		<script src="assets/js/select2.min.js"></script>

		<!-- ace scripts -->
		<script src="assets/js/ace-elements.min.js"></script>
		<script src="assets/js/ace.min.js"></script>

		<!-- inline scripts related to this page -->
		<script type="text/javascript">
		    jQuery(function ($) {

		        $('[data-rel=tooltip]').tooltip();

		        $('.select2').css('width', '200px').select2({ allowClear: true })
				.on('change', function () {
				    $(this).closest('form').validate().element($(this));
				});


		        var $validation = false;
		        $('#fuelux-wizard-container')
				.ace_wizard({
				    //step: 2 //optional argument. wizard will jump to step "2" at first
				    //buttons: '.wizard-actions:eq(0)'
				})
				.on('actionclicked.fu.wizard', function (e, info) {
				    if (info.step == 1 && $validation) {
				        if (!$('#validation-form').valid()) e.preventDefault();
				    }
				})
				//.on('changed.fu.wizard', function() {
				//})
				.on('finished.fu.wizard', function (e) {
				    bootbox.dialog({
				        message: "Thank you! Your information was successfully saved!",
				        buttons: {
				            "success": {
				                "label": "OK",
				                "className": "btn-sm btn-primary"
				            }
				        }
				    });
				}).on('stepclick.fu.wizard', function (e) {
				    //e.preventDefault();//this will prevent clicking and selecting steps
				});


		        //jump to a step
		        /**
				var wizard = $('#fuelux-wizard-container').data('fu.wizard')
				wizard.currentStep = 3;
				wizard.setState();
				*/

		        //determine selected step
		        //wizard.selectedItem().step



		        //hide or show the other form which requires validation
		        //this is for demo only, you usullay want just one form in your application




		        //documentation : http://docs.jquery.com/Plugins/Validation/validate


		        $.mask.definitions['~'] = '[+-]';
		        $('#phone').mask('(999) 999-9999');

		        jQuery.validator.addMethod("phone", function (value, element) {
		            return this.optional(element) || /^\(\d{3}\) \d{3}\-\d{4}( x\d{1,6})?$/.test(value);
		        }, "Enter a valid phone number.");

		        $('#validation').validate({
		            errorElement: 'div',
		            errorClass: 'help-block',
		            focusInvalid: false,
		            ignore: "",
		            rules: {
		                email: {
		                    required: true,
		                    email: true
		                },
		                password: {
		                    required: true,
		                    minlength: 5
		                },
		                password2: {
		                    required: true,
		                    minlength: 5,
		                    equalTo: "#password"
		                },
		                name: {
		                    required: true
		                },
		                phone: {
		                    required: true,
		                    phone: 'required'
		                },
		                url: {
		                    required: true,
		                    url: true
		                },
		                comment: {
		                    required: true
		                },
		                state: {
		                    required: true
		                },
		                platform: {
		                    required: true
		                },
		                subscription: {
		                    required: true
		                },
		                gender: {
		                    required: true,
		                },
		                agree: {
		                    required: true,
		                }
		            },

		            messages: {
		                email: {
		                    required: "Please provide a valid email.",
		                    email: "Please provide a valid email."
		                },
		                password: {
		                    required: "Please specify a password.",
		                    minlength: "Please specify a secure password."
		                },
		                state: "Please choose state",
		                subscription: "Please choose at least one option",
		                gender: "Please choose gender",
		                agree: "Please accept our policy"
		            },


		            highlight: function (e) {
		                $(e).closest('.form-group').removeClass('has-info').addClass('has-error');
		            },

		            success: function (e) {
		                $(e).closest('.form-group').removeClass('has-error');//.addClass('has-info');
		                $(e).remove();
		            },

		            errorPlacement: function (error, element) {
		                if (element.is('input[type=checkbox]') || element.is('input[type=radio]')) {
		                    var controls = element.closest('div[class*="col-"]');
		                    if (controls.find(':checkbox,:radio').length > 1) controls.append(error);
		                    else error.insertAfter(element.nextAll('.lbl:eq(0)').eq(0));
		                }
		                else if (element.is('.select2')) {
		                    error.insertAfter(element.siblings('[class*="select2-container"]:eq(0)'));
		                }
		                else if (element.is('.chosen-select')) {
		                    error.insertAfter(element.siblings('[class*="chosen-container"]:eq(0)'));
		                }
		                else error.insertAfter(element.parent());
		            },

		            submitHandler: function (form) {
		            },
		            invalidHandler: function (form) {
		            }
		        });




		        $('#modal-wizard-container').ace_wizard();
		        $('#modal-wizard .wizard-actions .btn[data-dismiss=modal]').removeAttr('disabled');


		        /**
				$('#date').datepicker({autoclose:true}).on('changeDate', function(ev) {
					$(this).closest('form').validate().element($(this));
				});
				
				$('#mychosen').chosen().on('change', function(ev) {
					$(this).closest('form').validate().element($(this));
				});
				*/


		        $(document).one('ajaxloadstart.page', function (e) {
		            //in ajax mode, remove remaining elements before leaving page
		            $('[class*=select2]').remove();
		        });
		    })
		</script>--%>
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

