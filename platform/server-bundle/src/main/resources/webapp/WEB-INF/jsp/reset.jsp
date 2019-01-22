<!DOCTYPE html>
<html ng-app="motech-dashboard">
    <head>
        <meta charset="UTF-8">
        <title>MOTECH - Mobile Technology for Community Health</title>

        <%@ include file="faviconPage.jsp" %>

         <link rel="stylesheet" type="text/css" href="../server/resources/css/jquery-ui.min.css">
            <link rel="stylesheet" type="text/css" href="../server/resources/css/alert-blackgloss.css">
            <link rel="stylesheet" type="text/css" href="../server/resources/css/angular-ui.css">
            <link rel="stylesheet" type="text/css" href="../server/resources/css/bootstrap-notify.css">
            <link rel="stylesheet" type="text/css" href="../server/resources/css/bootstrap-switch.css">
            <link rel="stylesheet" type="text/css" href="../server/resources/css/bootstrap.min.css">
            <link rel="stylesheet" type="text/css" href="../server/resources/css/bootstrap-theme.min.css">
            <link rel="stylesheet" type="text/css" href="../server/resources/css/font-awesome.min.css">
            <link rel="stylesheet" type="text/css" href="../server/resources/css/jqGrid/ui.jqgrid.css">
            <link rel="stylesheet" type="text/css" href="../server/resources/css/jqGrid/ui.jqgrid.override.css">
            <link rel="stylesheet" type="text/css" href="../server/resources/css/jquery-cron/jquery-cron.css">
            <link rel="stylesheet" type="text/css" href="../server/resources/css/jquery-cron/jquery-gentleSelect.css">
            <link rel="stylesheet" type="text/css" href="../server/resources/css/jquery-sidebar.css">
            <link rel="stylesheet" type="text/css" href="../server/resources/css/select2.css">
            <link rel="stylesheet" type="text/css" href="../server/resources/css/swagger/swagger-screen.css">
            <link rel="stylesheet" type="text/css" href="../server/resources/css/tagit/jquery.tagit.css">
            <link rel="stylesheet" type="text/css" href="../server/resources/css/tagmanager/bootstrap-tagmanager.css">
            <link rel="stylesheet" type="text/css" href="../server/resources/css/tagsinput/jquery.tagsinput.css">
            <link rel="stylesheet" type="text/css" href="../server/resources/css/timepicker/jquery-ui-timepicker-addon.css">
            <link rel="stylesheet" type="text/css" href="../server/resources/css/index.css">

            <script type="text/javascript" src="../server/resources/lib/rangy-core/rangy-core.js"></script>
            <script type="text/javascript" src="../server/resources/lib/jquery/jquery.js"></script>
            <script type="text/javascript" src="../server/resources/lib/jquery/jquery.migrate.min.js"></script>
            <script type="text/javascript" src="../server/resources/lib/angular/angular.min.js"></script>
            <script type="text/javascript" src="../server/resources/lib/jquery/jquery-ui.js"></script>
            <script type="text/javascript" src="../server/resources/lib/underscore/underscore-min.js"></script>
            <script type="text/javascript" src="../server/resources/lib/backbone/backbone-min.js"></script>
            <script type="text/javascript" src="../server/resources/lib/handlebars/handlebars-2.0.0.js"></script>
            <script type="text/javascript" src="../server/resources/lib/swagger/swagger-client.js"></script>
            <script type="text/javascript" src="../server/resources/lib/swagger/swagger-ui.js"></script>
            <script type="text/javascript" src="../server/resources/lib/angular/angular-cookies.min.js"></script>
            <script type="text/javascript" src="../server/resources/lib/angular/angular-loadOnDemand.js"></script>
            <script type="text/javascript" src="../server/resources/lib/angular/angular-resource.min.js"></script>
            <script type="text/javascript" src="../server/resources/lib/angular/angular-route.min.js"></script>
            <script type="text/javascript" src="../server/resources/lib/angular/angular-sanitize.min.js"></script>
            <script type="text/javascript" src="../server/resources/lib/angular/angular-ui.min.js"></script>
            <script type="text/javascript" src="../server/resources/lib/angular/ui-bootstrap-custom-tpls-0.6.0.min.js"></script>
            <script type="text/javascript" src="../server/resources/lib/bootstrap/bootstrap-multiselect.js"></script>
            <script type="text/javascript" src="../server/resources/lib/bootstrap/bootstrap-notify.js"></script>
            <script type="text/javascript" src="../server/resources/lib/bootstrap/bootstrap-switch.js"></script>
            <script type="text/javascript" src="../server/resources/lib/bootstrap/bootstrap.js"></script>
            <script type="text/javascript" src="../server/resources/lib/highlight/highlight.7.3.pack.js"></script>
            <script type="text/javascript" src="../server/resources/lib/jqGrid/grid.locale-en.js"></script>
            <script type="text/javascript" src="../server/resources/lib/jqGrid/jquery.jqGrid.min.js"></script>
            <script type="text/javascript" src="../server/resources/lib/jquery-cron/jquery-cron.js"></script>
            <script type="text/javascript" src="../server/resources/lib/jquery-cron/jquery-gentleSelect.js"></script>
            <script type="text/javascript" src="../server/resources/lib/jquery/jquery.alerts.js"></script>
            <script type="text/javascript" src="../server/resources/lib/jquery/jquery.ba-bbq.min.js"></script>
            <script type="text/javascript" src="../server/resources/lib/jquery/jquery.blockUI.js"></script>
            <script type="text/javascript" src="../server/resources/lib/jquery/jquery.caret.js"></script>
            <script type="text/javascript" src="../server/resources/lib/jquery/jquery.cookie.js"></script>
            <script type="text/javascript" src="../server/resources/lib/jquery/jquery.form.js"></script>
            <script type="text/javascript" src="../server/resources/lib/jquery/jquery.i18n.properties-min-1.0.9.js"></script>
            <script type="text/javascript" src="../server/resources/lib/jquery/jquery.livequery.min.js"></script>
            <script type="text/javascript" src="../server/resources/lib/jquery/jquery.select2.js"></script>
            <script type="text/javascript" src="../server/resources/lib/jquery/jquery.sidebar.js"></script>
            <script type="text/javascript" src="../server/resources/lib/jquery/jquery.slideto.min.js"></script>
            <script type="text/javascript" src="../server/resources/lib/jquery/jquery.tools.min.js"></script>
            <script type="text/javascript" src="../server/resources/lib/jquery/jquery.wiggle.min.js"></script>
            <script type="text/javascript" src="../server/resources/lib/layout/jquery.layout.min.js"></script>
            <script type="text/javascript" src="../server/resources/lib/marked/marked.js"></script>
            <script type="text/javascript" src="../server/resources/lib/moment/langs.js"></script>
            <script type="text/javascript" src="../server/resources/lib/moment/moment.js"></script>
            <script type="text/javascript" src="../server/resources/lib/parseuri/parseuri.js"></script>
            <script type="text/javascript" src="../server/resources/lib/shred/shred.bundle.js"></script>
            <script type="text/javascript" src="../server/resources/lib/tagit/jquery.tagit.js"></script>
            <script type="text/javascript" src="../server/resources/lib/tagmanager/bootstrap-tagmanager.js"></script>
            <script type="text/javascript" src="../server/resources/lib/tagsinput/jquery.tagsinput.js"></script>
            <script type="text/javascript" src="../server/resources/lib/text-angular/textAngular.js"></script>
            <script type="text/javascript" src="../server/resources/lib/timepicker/jquery-ui-sliderAccess.js"></script>
            <script type="text/javascript" src="../server/resources/lib/timepicker/jquery-ui-timepicker-addon.js"></script>
            <script type="text/javascript" src="../server/resources/lib/bootstrap/bootstrap-fileupload.min.js"></script>
            <script type="text/javascript" src="../server/resources/js/browser-detect.js"></script>
            <script type="text/javascript" src="../server/resources/js/app.js"></script>
            <script type="text/javascript" src="../server/resources/js/common.js"></script>
            <script type="text/javascript" src="../server/resources/js/controllers.js"></script>
            <script type="text/javascript" src="../server/resources/js/dashboard.js"></script>
            <script type="text/javascript" src="../server/resources/js/directives.js"></script>
            <script type="text/javascript" src="../server/resources/js/localization.js"></script>
            <script type="text/javascript" src="../server/resources/js/services.js"></script>
            <script type="text/javascript" src="../server/resources/js/startup.js"></script>
            <script type="text/javascript" src="../server/resources/js/util.js"></script>

    </head>

    <body ng-show="ready" ng-controller="MotechMasterCtrl" class="body-down" ng-init="getResetViewData()">
        <div class="bodywrap">
            <div class="header">
                <div class="container">
                    <a href=".">
                        <div class="dashboard-logo" ng-cloak>
                            <img class="logo" alt="Logo - {{msg('server.motechTitle')}}" src="./../../static/img/motech-logo.gif">
                        </div>
                    </a>
                    <div class="hidden-xs" ng-cloak>
                        <div class="header-title">{{msg('server.motechTitle')}}</div>
                    </div>
                    <div class="clearfix"></div>
                </div>
            </div>

            <div class="clearfix"></div>
            <div class="navbar-wrapper navbar-default">
                <div class="header-nav navbar">
                    <div class="navbar-inner"></div>
                </div>
            </div>
            <div class="clearfix"></div>
            <div id="content" class="container">
                <div class="row">
                    <div id="main-content">
                        <div class="well2 margin-center margin-before spnw5">
                            <div class="reset-content" ng-cloak>
                                <div class="box-header">
                                     {{msg('server.reset.resetYourPassword')}}
                                </div>
                                <div class="box-content">
                                    <div class="well3" ng-if="resetViewData.invalidToken == false && resetViewData.resetSucceed == false">
                                        <div ng-if="resetViewData.errors != null">
                                            <div class="login-error" ng-repeat="error in resetViewData.errors">
                                                {{msg(error)}}
                                            </div>
                                        </div>
                                        <form method="post" class="reset-password-form" ng-submit="submitResetPasswordForm()" name="resetPasswordForm">
                                            <input type="hidden" id="token" name="token" value="{{resetViewData.resetForm.token}}" />

                                            <div class="form-group">
                                                <h4>{{msg('server.reset.enterNewPassword')}}</h4>
                                            </div>
                                            <div class="form-group">
                                                <label>{{msg('server.reset.password')}}</label>
                                                <input class="col-md-12 form-control" type="password" required validate-password
                                                    id="password" name="password" ng-model="resetViewData.resetForm.password" />
                                                <span ng-show="resetPasswordForm.password.$error.valid === true" class="form-hint form-hint-bottom">
                                                    {{validatorMessage}}
                                                </span>
                                            </div>
                                            <div class="form-group">
                                                <label>{{msg('server.reset.confirmPassword')}}</label>
                                                <input class="col-md-12 form-control" type="password" confirm-password="resetViewData.resetForm.password" required visited-confirm-input
                                                    id="passwordConfirmation" name="passwordConfirmation" ng-model="resetViewData.resetForm.passwordConfirmation" />
                                                <span ng-show="isConfirmPasswordDirty && resetPasswordForm.passwordConfirmation.$dirty && resetPasswordForm.passwordConfirmation.$error.equal === true && resetPasswordForm.password.$error.valid === false"
                                                    class="form-hint form-hint-bottom">
                                                    {{msg('server.error.invalid.password')}}
                                                </span>
                                            </div>
                                            <div class="form-group margin-before ">
                                                <input ng-disabled="resetPasswordForm.$invalid" class="btn btn-primary margin-before" type="submit" value="{{msg('server.reset.changePassword')}}" />
                                            </div>
                                        </form>
                                    </div>
                                    <div class="well3" ng-if="resetViewData.resetSucceed == true">
                                        <div ng-if="resetViewData.errors != null">
                                            <div class="login-error" ng-repeat="error in resetViewData.errors">
                                                {{msg('error')}}
                                            </div>
                                        </div>
                                        <div ng-if"resetViewData.errors == null">
                                            <p>{{msg('server.reset.resetSuccess')}}</p>
                                            <p><a href="./login">{{msg('server.login')}}</a></p>
                                        </div>
                                    </div>
                                    <div class="well3" ng-if="resetViewData.invalidToken == true">
                                        {{msg('server.reset.invalidToken')}}
                                    </div>
                                    <div class="clearfix"></div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>
