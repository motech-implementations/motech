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
<body ng-controller="MotechMasterCtrl" class="body-startup">
<div class="bodywrap">
    <div class="hidden-xs">
        <div class="margin-before5"></div>
    </div>
    <div class="clearfix"></div>
    <div class="startup" ng-show="ready">
        <a href=".">
            <div class="startup-logo" ng-cloak>
                <img src="./../../static/img/motech-logo.gif" alt="motech-logo">
            </div>
        </a>
        <div class="clearfix"></div>
        <div class="startup-strip" ng-cloak>
            <div class="form-group" ng-show="!requireConfigFiles">
                <h2 class="title">{{msg('server.welcome.startup')}}</h2>
            </div>
            <div class="form-group alert alert-danger" ng-show="requireConfigFiles">
                <h4>{{msg('server.error.config.file.required')}}</h4>
            </div>
        </div>
        <div class="clearfix"></div>
        <div class="startup-form" ng-show="!requireConfigFiles" ng-cloak>
            <div class="diver">
                <form id="startup-config-form" name="startupConfigForm" ng-init="getStartupViewData()" ng-submit="submitStartupConfig()" method="POST" class="form-horizontal">
                    <div ng-show="!startupViewData.isFileMode" class="form-group">
                        <label class="col-sm-4 control-label">{{msg('server.select.language')}}</label>
                        <div class="col-sm-6">
                            <div class="btn-group">
                                <a class="btn btn-default dropdown-toggle" data-toggle="dropdown" target="_self" href="#">
                                    <i class="flag flag-{{startupViewData.startupSettings.language}} label-flag"></i> {{startupViewData.languages[startupViewData.startupSettings.language]}}
                                    <span class="caret"></span>
                                </a>
                                <ul class="dropdown-menu">
                                    <li ng-repeat="(key, value) in startupViewData.languages">
                                        <a ng-click="setUserLang(key, true)">
                                            <i class="flag flag-{{key}} label-flag"></i> {{value}}
                                        </a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <div ng-show="!startupViewData.isFileMode" class="form-group">
                         <label class="col-sm-4 control-label">{{msg('server.select.loginMode')}}</label>
                         <div class="col-sm-8">
                             <label class="radio-inline">
                                <input type="radio" value="repository" name="loginMode" ng-click="securityMode = 'repository'" ng-checked="securityMode == 'repository'">
                                {{msg('server.repository')}}
                             </label>
                             <label class="radio-inline">
                                <input type="radio" value="openId" name="loginMode" ng-click="securityMode = 'openid'" ng-checked="securityMode == 'openid'"/>
                                {{msg('server.openId')}}
                             </label>
                         </div>
                     </div>
                    <div ng-show="!startupViewData.isAdminRegistered && (securityMode=='repository' || startupViewData.isFileMode)" class="form-group">
                        <label class="col-sm-4 control-label">{{msg('server.enter.adminLogin')}}</label>
                        <div class="col-sm-6">
                            <input type="text" class="form-control" name="adminLogin" ng-model="startupViewData.startupSettings.adminLogin"/>
                        </div>
                    </div>
                    <div ng-show="!startupViewData.isAdminRegistered && (securityMode=='repository' || startupViewData.isFileMode)" class="form-group">
                        <label class="col-sm-4 control-label">{{msg('server.enter.adminPassword')}}</label>
                        <div class="col-sm-6">
                            <input type="password" class="form-control" name="adminPassword" ng-model="startupViewData.startupSettings.adminPassword" validate-password>
                            <span ng-show="startupConfigForm.adminPassword.$error.valid" class="form-hint form-hint-bottom">
                                {{validatorMessage}}
                            </span>
                        </div>
                    </div>
                    <div ng-show="!startupViewData.isAdminRegistered && (securityMode=='repository' || startupViewData.isFileMode)" class="form-group">
                        <label class="col-sm-4 control-label">{{msg('server.enter.adminConfirmPassword')}}</label>
                        <div class="col-sm-6">
                            <input type="password" class="form-control" name="adminConfirmPassword" ng-model="startupViewData.startupSettings.adminConfirmPassword"/>
                        </div>
                    </div>
                     <div ng-show="!startupViewData.isAdminRegistered && (securityMode=='repository' || startupViewData.isFileMode)" class="form-group">
                        <label class="col-sm-4 control-label">{{msg('server.enter.adminEmail')}}</label>
                        <div class="col-sm-6">
                            <input type="email" class="form-control" name="adminEmail" ng-model="startupViewData.startupSettings.adminEmail"/>
                        </div>
                     </div>
                     <div ng-show="securityMode=='openid'" class="form-group">
                         <label class="col-sm-4 control-label">{{msg('server.enter.providerName')}}</label>
                         <div class="col-sm-6">
                             <input type="text" class="form-control" name="providerName" ng-model="startupViewData.startupSettings.providerName"/>
                         </div>
                     </div>
                     <div ng-show="securityMode=='openid'" class="form-group">
                          <label class="col-sm-4 control-label">{{msg('server.enter.providerUrl')}}</label>
                          <div class="col-sm-6">
                              <input type="text" class="form-control" name="providerUrl" ng-model="startupViewData.startupSettings.providerUrl"/>
                          </div>
                     </div>
                    <div class="form-group">
                        <div class="col-sm-offset-4 col-sm-8">
                            <input type="hidden" name="language" ng-model="startupViewData.startupSettings.language"/>
                            <input class="btn btn-primary" ng-disabled="startupConfigForm.$invalid" type="submit" name="START" value="{{msg('server.submit')}}"/>
                        </div>
                    </div>
                    <div ng-show="errors" class="alert alert-danger">
                        <div ng-repeat="error in errors">
                            {{msg(error)}}<br/>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>
</body>
</html>
