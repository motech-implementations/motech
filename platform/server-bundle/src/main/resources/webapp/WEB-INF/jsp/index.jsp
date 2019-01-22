<%@ page language="java" pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

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

<body ng-controller="MotechMasterCtrl" id="container" ng-class="showDashboardLogo.backgroundUpDown()" class="custom ui-layout-container" layout state="bodyState" ng-init="bodyState = true">
    <div ng-controller="MotechHomeCtrl">

        <div ng-show="ready" class="ui-layout-pane ui-layout-pane-north" id="outer-north" ng-cloak>
            <div id="content-header" ng-include="'../server/resources/partials/header.html'"></div>
        </div>

        <div ng-show="ready" id="outer-south" class="ui-layout-pane ui-layout-pane-south" ng-cloak>
            <span id="tbarCloseSouth" class="southpane-open pull-right" title="Close This Pane"><i class="fa fa-caret-down button"></i></span>
            <div ng-include="'../server/resources/partials/footer.html'"></div>
        </div>

        <div ng-show="ready" id="outer-west" class="ui-layout-pane ui-layout-pane-west" ng-cloak>
            <div class="header-toolbar header-footer"><i id="tbarCloseWest" class="button fa fa-caret-left"></i></div>
            <div class="ui-layout-content" ng-cloak>
                <motech-modules></motech-modules>
            </div>
        </div>

        <div id="outer-center" class="outer-center ui-layout-pane ui-layout-pane-center ui-layout-container">
            <div id="main-content">
                <c:choose>
                    <c:when test="${isAccessDenied}">
                    <div ng-include="'../server/resources/partials/access-denied-splash.html'"></div>
                    </c:when>
                    <c:otherwise>
                    <div class="splash" ng-hide="ready">
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
                    <div id="module-content" load-on-demand="moduleToLoad"></div>
                    </c:otherwise>
                </c:choose>
            </div>
        </div> <!-- #outer-center-->

    </div>
</body>
</html>
