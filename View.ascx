﻿<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="View.ascx.cs" Inherits="TemplateDNN7NG6.View" %>
<%@ Register TagPrefix="dnn" Namespace="DotNetNuke.Web.Client.ClientResourceManagement" Assembly="DotNetNuke.Web.Client" %>

<base href="<%= Request.RawUrl%>">
<%-- 
 1 -> Rename Angular selector
 --%>
<app-root>
    <p>Loading...</p>
</app-root>

<script>
   var serviceFramework = $.ServicesFramework(parseInt('<%=ModuleId %>'));
<%-- 
 2 -> Rename AngularTEMPLATE inside window["AngularTEMPLATE"], with same name in dnncontext.service.ts
 --%>
    window["AngularTEMPLATE"] =
        {
            "Resources":  {
                "Example01": "lorem ipsum 01",
                "Example02": "lorem ipsum 02",
            },
            "Settings": {
                "AllowIndex": "True"
            },
            "routingWebAPI": "/DesktopModules/Rainbow_Staging/API/",
            "IsEditable": <%= Editable.ToString().ToLower()%>,
            "EditMode": <%= EditMode.ToString().ToLower() %>,
            "IsAdmin": false,
            "ModuleId": <%=ModuleId%>,
            "PortalId": <%= PortalId %>,
            "UserId": <%= UserId %>,
            "HomeDirectory": "Portals/<%= PortalId %>/",
            "ModuleDirectory": "<%=ControlPath%>",
            "RawUrl": "<%= Request.RawUrl%>",
            "PortalLanguages": ["<%= PortalSettings.CultureCode%>"],
            "CurrentLanguage": "it-IT",
            "Users": [],
            "TabId": <%= TabId %>,
            "locale": $("html").attr("lang"),
        }
</script>

<script src="<%= ControlPath %>dist/runtime.js<%= version %>"></script>
<script src="<%= ControlPath %>dist/polyfills.js<%= version %>"></script>
<script src="<%= ControlPath %>dist/styles.js<%= version %>"></script>
<script src="<%= ControlPath %>dist/vendor.js<%= version %>"></script>
<script src="<%= ControlPath %>dist/main.js<%= version %>"></script>

<!-- OPTIONAL it's important if you use material design fonts -->
<link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">

<!-- OPTIONAL: is useful for testing you can remove it -->
<script>
    jQuery(document).ready(function() {
        console.log('starting antiforgeryvalue +: ' + window.$.ServicesFramework(<%=ModuleId%>).getAntiForgeryValue());
    });
</script>
