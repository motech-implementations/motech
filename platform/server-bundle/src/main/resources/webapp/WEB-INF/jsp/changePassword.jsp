<!DOCTYPE html>
<html ng-app="motech-dashboard">
    <head>
        <meta charset="UTF-8">
        <title>MOTECH - Mobile Technology for Community Health</title>

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

    <body ng-show="ready" ng-controller="MotechMasterCtrl" class="body-down" ng-init="initChangePasswordViewData()">
        <div class="bodywrap">
            <div class="header">
                <div class="container">
                    <div class="dashboard-logo">
                        <img class="logo" alt="Logo - {{msg('server.motechTitle')}}" src="../server/resources/img/motech-logo.gif">
                    </div>
                    <div class="hidden-xs hidden-sm">
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
                        <div class="well2 margin-center margin-before spn6">
                            <div class="reset-content">
                                <div ng-if="!changePasswordViewData.changeSucceded" class="box-header">
                                     {{msg('server.reset.changeYourPassword')}}
                                </div>
                                <div ng-if="changePasswordViewData.changeSucceded" class="box-header">
                                     {{msg('server.information')}}
                                </div>
                                <div class="box-content">
                                    <div class="well3">
                                        <h5 ng-if="!changePasswordViewData.changeSucceded">{{msg('server.reset.passwordExpired')}}</h5>
                                        <form ng-if="!changePasswordViewData.changeSucceded" method="post" name="changePasswordForm"
                                            class="inside form-horizontal" ng-submit="submitChangePasswordForm()">
                                            <input type="hidden" id="username" name="username" ng-model="changePasswordViewData.changePasswordForm.username" />
                                            <div class="form-group">
                                                <label class="control-label col-md-5">{{msg('server.username')}}</label>
                                                <div class="form-inline col-md-6">
                                                    <input class="form-control input-auto" required id="username" name="username"
                                                        ng-model="changePasswordViewData.changePasswordForm.username" />
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label class="control-label col-md-5">{{msg('server.reset.currentPassword')}}</label>
                                                <div class="form-inline col-md-6">
                                                    <input class="form-control input-auto" type="password" required
                                                        id="oldPassword" name="oldPassword" ng-model="changePasswordViewData.changePasswordForm.oldPassword" />
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label class="control-label col-md-5">{{msg('server.reset.newPassword')}}</label>
                                                <div class="form-inline col-md-6">
                                                    <input class="form-control input-auto" type="password" required validate-password old-password="changePasswordViewData.changePasswordForm.oldPassword"
                                                        id="password" name="newPassword" ng-model="changePasswordViewData.changePasswordForm.password" />
                                                    <span ng-show="changePasswordForm.newPassword.$error.notEqual" class="form-hint form-hint-bottom">
                                                        {{msg('server.reset.passwordCannotBeEqual')}}
                                                    </span>
                                                    <span ng-show="changePasswordForm.newPassword.$error.valid === true && changePasswordForm.newPassword.$error.notEqual === false" class="form-hint form-hint-bottom">
                                                        {{validatorMessage}}
                                                    </span>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label class="control-label col-md-5">{{msg('server.reset.confirmPassword')}}</label>
                                                <div class="form-inline col-md-6">
                                                    <input class="form-control input-auto" type="password" required id="passwordConfirmation" name="confirmPassword" visited-confirm-input
                                                        confirm-password="changePasswordViewData.changePasswordForm.password" ng-model="changePasswordViewData.changePasswordForm.passwordConfirmation" />
                                                    <span ng-show="isConfirmPasswordDirty && changePasswordForm.confirmPassword.$dirty && changePasswordForm.confirmPassword.$error.equal === true && changePasswordForm.newPassword.$error.valid === false && changePasswordForm.newPassword.$error.notEqual === false"
                                                        class="form-hint form-hint-bottom">
                                                        {{msg('server.error.invalid.password')}}
                                                    </span>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <div class="col-md-offset-5 col-md-4">
                                                    <input class="btn btn-primary" type="submit" value="{{msg('server.reset.changePassword')}}" ng-disabled="changePasswordForm.$invalid"/>
                                                </div>
                                            </div>
                                        </form>
                                        <div ng-if="changePasswordViewData.errors != null">
                                            <div class="alert alert-danger" ng-repeat="error in changePasswordViewData.errors">
                                                {{msg(error)}}
                                            </div>
                                        </div>
                                    </div>
                                    <div ng-if="changePasswordViewData.changeSucceded" class="well3">
                                        <div>
                                            <h4>{{msg('server.reset.passwordChanged')}}</h4>
                                            <div class="form-group">
                                                <a class="btn btn-primary" href="./home">{{msg('server.continue')}}</a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>
