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
<body class="body-down" ng-controller="MotechMasterCtrl" ng-init="getLoginViewData()">
    <div class="splash login" ng-hide="ready">
        <div class="splash-logo">
            <img src="./../../static/img/motech-logo.gif" alt="motech-logo">
        </div>
        <div class="clearfix"></div>
        <div class="splash-loader">
            <img src="./../../static/img/loadingbar.gif" alt="loading">
        </div>
        <div class="clearfix"></div>
        <div class="splash-msg"></div>
        <div class="clearfix"></div>
    </div>
    <div class="clearfix"></div>
    <div ng-show="ready" class="bodywrap">
        <div class="header">
            <div class="container">
                <a href=".">
                    <div class="dashboard-logo" ng-cloak>
                        <img class="logo" alt="Logo - {{msg('server.motechTitle')}}" src="./../../static/img/motech-logo.gif">
                    </div>
                </a>
                <div class="hidden-xs" ng-cloak>
                    <div class="header-title">
                        {{msg('server.motechTitle')}}
                    </div>
                </div>
                <div class="clearfix"></div>
            </div>
        </div>

        <div class="clearfix"></div>
        <div class="navbar-wrapper navbar-default">
            <div class="header-nav navbar">
                <div class="navbar-inner">
                </div>
            </div>
        </div>

        <!-- TODO: Repository and OpenID sections are repeated twice here. Would be better to extract it as a separate jsps and have it in only one place.-->

        <div class="clearfix"></div>
        <div id="content" class="container">
            <div class="row">
                <div id="main-content">
                    <div ng-if="loginViewData.error == null && loginViewData.blocked == null" id="login" class="well2 margin-center margin-before spnw55">
                        <div class="box-header" ng-cloak>
                            {{msg('security.signInUser')}}
                        </div>
                        <div class="box-content clearfix" ng-cloak>
                            <div class="well3">
                                <div ng-if="loginViewData.loginMode.repository">
                                    <form action="{{loginViewData.contextPath}}j_spring_security_check" method="POST" class="inside form-horizontal">
                                        <div class="form-group">
                                            <h4>
                                                {{msg('security.signInWithId')}}
                                                {{msg('security.motechId')}}
                                            </h4>
                                        </div>
                                        <div class="form-group margin-before2">
                                            <input element-focus class="col-sm-12 form-control" type="text" name="j_username" placeholder="{{msg('security.userName')}}" />
                                        </div>
                                        <div class="form-group">
                                            <input class="col-sm-12 form-control" type="password" name="j_password" placeholder="{{msg('security.password')}}" />
                                        </div>
                                        <div class="form-group">
                                            <input class="btn btn-primary" value="{{msg('security.signin')}}" type="submit"/>
                                            <span class="pull-right margin-before05">
                                                <a href="../../module/server/forgot">
                                                    "{{msg('security.signInQuestions')}}"
                                                </a>
                                            </span>
                                        </div>
                                    </form>
                                </div>
                                <div ui-if="loginViewData.loginMode.openId" ng-cloak>
                                    <div class="clearfix"></div>
                                    <form class="inside form-horizontal" action="{{loginViewData.contextPath}}j_spring_openid_security_check" method="POST">
                                        <div class="form-group open-id">
                                            <p>{{msg('security.signInWith')}} {{loginViewData.openIdProviderName}} {{msg('security.users')}}&nbsp;&nbsp;</p>
                                            <input name="openid_identifier" type="hidden" value="{{loginViewData.openIdProviderUrl}}"/>
                                            <input class="btn btn-primary" type="submit" value="{{msg('security.signInWith')}} {{loginViewData.openIdProviderName}}"/>
                                        </div>
                                        <div class="form-group open-id">
                                            <p>{{msg('server.oneTimeToken')}}&nbsp;
                                                <a href="../../module/server/forgot">
                                                    {{msg('security.clickHere')}}
                                                </a>
                                            </p>
                                        </div>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div ng-if="loginViewData.error != null || loginViewData.blocked != null" class="well2 margin-center margin-before col-sm-12" ng-cloak>
                        <div class="box-header">
                            {{msg('security.signInUnsuccessful')}}
                        </div>
                        <div class="box-content clearfix">
                            <div class="row">
                                <div class="col-md-6 inside">
                                    <div class="well3">
                                            <div class="form-group margin-before">
                                                <h4 ng-if="loginViewData.error != null" class="login-error">
                                                    {{msg('security.wrongPassword')}}
                                                </h4>
                                                <h4 ng-if="loginViewData.blocked != null" class="login-error">
                                                    {{msg('security.userBlocked')}}
                                                </h4>
                                            </div>
                                            <div class="form-group margin-before2">
                                                <h5 ng-if="loginViewData.error != null" class="login-error">
                                                    {{msg('security.didnotRecognizeMsg')}}
                                                </h5>
                                                <h5 ng-if="loginViewData.blocked != null" class="login-error">
                                                    {{msg('security.userBlockedDescription')}}
                                                </h5>
                                            </div>
                                        <div class="form-group margin-before2">
                                            <h5>
                                                {{msg('security.donotRememberMsg1')}}
                                                <a href="../../module/server/forgot">
                                                    {{msg('security.clickHere')}}
                                                </a>
                                                {{msg('security.donotRememberMsg2')}}
                                            </h5>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="well3">
                                        <div class="left-divider">
                                            <div ui-if="loginViewData.loginMode.repository" ng-cloak>
                                                <form class="inside form-horizontal" action="{{loginViewData.contextPath}}j_spring_security_check" method="POST">
                                                    <div class="form-group">
                                                        <h4>
                                                            {{msg('security.signInWithId')}}&nbsp;
                                                            {{msg('security.motechId')}}
                                                        </h4>
                                                    </div>
                                                    <div class="form-group margin-before2">
                                                        <input element-focus class="col-sm-12 form-control" type="text" name="j_username" placeholder="{{msg('security.userName')}}">
                                                    </div>
                                                    <div class="form-group">
                                                        <input class="col-sm-12 form-control" type="password" name="j_password" placeholder="{{msg('security.password')}}">
                                                    </div>
                                                    <div class="form-group">
                                                        <input class="btn btn-primary" type="submit" value="{{msg('security.signin')}}"/>
                                                    </div>
                                                </form>
                                            </div>
                                            <div ui-if="loginViewData.loginMode.openId" ng-cloak>
                                                <form class="inside form-horizontal" action="{{loginViewData.contextPath}}j_spring_openid_security_check" method="POST">
                                                    <div class="form-group open-id">
                                                        <p>For ${openIdProviderName} users:&nbsp;&nbsp;</p>
                                                        <input name="openid_identifier" type="hidden" value="{{loginViewData.openIdProviderUrl}}"/>
                                                        <input class="btn btn-primary" type="submit" value="{{msg('security.signInWith')}} {{loginViewData.openIdProviderName}}"/>
                                                    </div>
                                                    <div class="form-group open-id">
                                                        <p>
                                                            {{msg('server.oneTimeToken')}}&nbsp;&nbsp;
                                                            <a href="../../module/server/forgot">
                                                                {{msg('security.clickHere')}}
                                                            </a>
                                                        </p>
                                                    </div>
                                                </form>
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
    </div>
</body>
</html>
