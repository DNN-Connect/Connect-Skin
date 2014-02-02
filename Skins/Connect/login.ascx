<%@ Control language="vb" AutoEventWireup="false" Explicit="True" Inherits="DotNetNuke.UI.Skins.Skin" %>
<%@ Register TagPrefix="dnn" TagName="LANGUAGE" Src="~/Admin/Skins/Language.ascx" %>
<%@ Register TagPrefix="dnn" TagName="LOGO" Src="~/Admin/Skins/Logo.ascx" %>
<%@ Register TagPrefix="dnn" TagName="SEARCH" Src="~/Admin/Skins/Search.ascx" %>
<%@ Register TagPrefix="dnn" TagName="NAV" Src="~/Admin/Skins/Nav.ascx" %>
<%@ Register TagPrefix="dnn" TagName="TEXT" Src="~/Admin/Skins/Text.ascx" %>
<%@ Register TagPrefix="dnn" TagName="BREADCRUMB" Src="~/Admin/Skins/BreadCrumb.ascx" %>
<%@ Register TagPrefix="dnn" TagName="USER" Src="~/Admin/Skins/User.ascx" %>
<%@ Register TagPrefix="dnn" TagName="LOGIN" Src="~/Admin/Skins/Login.ascx" %>
<%@ Register TagPrefix="dnn" TagName="LINKS" Src="~/Admin/Skins/Links.ascx" %>
<%@ Register TagPrefix="dnn" TagName="PRIVACY" Src="~/Admin/Skins/Privacy.ascx" %>
<%@ Register TagPrefix="dnn" TagName="TERMS" Src="~/Admin/Skins/Terms.ascx" %>
<%@ Register TagPrefix="dnn" TagName="COPYRIGHT" Src="~/Admin/Skins/Copyright.ascx" %>
<%@ Register TagPrefix="dnn" TagName="STYLES" Src="~/Admin/Skins/Styles.ascx" %>
<%@ Register TagPrefix="dnn" TagName="LINKTOMOBILE" Src="~/Admin/Skins/LinkToMobileSite.ascx" %>
<%@ Register TagPrefix="dnn" Namespace="DotNetNuke.Web.DDRMenu.TemplateEngine" Assembly="DotNetNuke.Web.DDRMenu" %>
<%@ Register TagPrefix="dnn" TagName="MENU" src="~/DesktopModules/DDRMenu/Menu.ascx" %>
<%@ Register TagPrefix="dnn" TagName="USERANDLOGIN" Src="~/Admin/Skins/ConnectUserAndLogin.ascx" %>
<%@ Register TagPrefix="dnn" TagName="TOAST" Src="~/Admin/Skins/Toast.ascx" %>
<%@ Register TagPrefix="dnn" TagName="CONTROLPANEL" Src="~/Admin/Skins/controlpanel.ascx" %>
<%@ Register TagPrefix="dnn" Namespace="DotNetNuke.Web.Client.ClientResourceManagement" Assembly="DotNetNuke.Web.Client" %>
<%@ Register TagPrefix="dnn" TagName="Meta" Src="~/Admin/Skins/Meta.ascx" %>
<dnn:Meta ID="Meta1" runat="server" Name="viewport" Content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0" />
<dnn:Meta ID="Meta2" runat="server" http-equiv="Cache-Control" Content="max-age" />

<link type="text/css" href="http://fonts.googleapis.com/css?family=Roboto:400" rel="stylesheet">
<link type="text/css" href="http://fonts.googleapis.com/css?family=Roboto:100" rel="stylesheet">
<link type="text/css" href="http://fonts.googleapis.com/css?family=Roboto:100italicc" rel="stylesheet">
<link type="text/css" href="http://fonts.googleapis.com/css?family=Roboto:300" rel="stylesheet">
<link type="text/css" href="http://fonts.googleapis.com/css?family=Roboto:300italic" rel="stylesheet">
<link type="text/css" href="http://fonts.googleapis.com/css?family=Roboto:400italic" rel="stylesheet">
<link type="text/css" href="http://fonts.googleapis.com/css?family=Roboto:500" rel="stylesheet">
<link type="text/css" href="http://fonts.googleapis.com/css?family=Roboto:700" rel="stylesheet">
<link type="text/css" href="http://fonts.googleapis.com/css?family=Roboto:500italic" rel="stylesheet">
<link type="text/css" href="http://fonts.googleapis.com/css?family=Roboto:700italic" rel="stylesheet">
<link type="text/css" href="http://fonts.googleapis.com/css?family=Roboto:900" rel="stylesheet">
<link type="text/css" href="http://fonts.googleapis.com/css?family=Roboto:900italic" rel="stylesheet">
<link rel="stylesheet" href="/Portals/_default/Skins/Connect/fonts/novecentowide/stylesheet.css" type="text/css" charset="utf-8" />

<script type="text/javascript">
    $(document).ready(function () {

        $("a.login").click(function () {
            $(".connect_intro").slideUp('fast');
            $(".connect_login").show('fast');
        });

        $('.connect_login .dnnSecondaryAction').click(function () {
            $(".connect_login").slideUp('fast');
            $(".connect_intro").show('fast');
        });

        $("a.register").click(function () {
            $(".connect_intro").slideUp('fast');
            $(".connect_login").slideUp('fast');
            $(".connect_register").show('fast');
        });

        $('.connect_register .dnnSecondaryAction').click(function () {
            $(".connect_register").slideUp('fast');
            $(".connect_intro").show('fast');
        });
    });
</script>

<div class="topBar skinWidth">

    <div class="connect-toolbar clearfix">
        <div class="connect_logo"><dnn:LOGO ID="dnnLogo" runat="server" /></div>
        <div class="connect_usertoolbar clearfix">
            <dnn:USERANDLOGIN id="userLogin" runat="Server" /><div class="clearfix"></div>
        </div>
        <div class="connect_nav">
			<div class="m_nav"></div>
            <dnn:MENU ID="MENU1" MenuStyle="ConnectNav" runat="server"></dnn:MENU>
        </div>
    </div>

	<div class="dnnClear"></div>
</div>

<div class="contentWrap <%=PortalSettings.ActiveTab.Breadcrumbs(PortalSettings.ActiveTab.Breadcrumbs.Count-1).TabName.ToLower().Replace(" ","_") %>">
	<div class="skinWidth">

        <div class="home clearfix">
            <div id="Tile1" runat="server" class="tile tile_900_900 color7 splash"></div>
            <div id="Tile2" runat="server" class="tile tile_300_300 color4"></div>
            <div id="Tile3" runat="server" class="tile tile_300_300 color5"></div>
            <div id="Tile4" runat="server" class="tile tile_300_300 color6"></div>
            <div id="Tile5" runat="server" class="tile tile_1200 color4"></div>
        </div>

		<div id="contentPane" class="contentPane" runat="server"></div>

	</div><!--/skinWidth-->
</div><!--/contentWrap-->
<dnn:DnnJsInclude ID="DnnJsInclude1" runat="server" FilePath="js/purl.js" PathNameAlias="SkinPath" />
<dnn:DnnJsInclude ID="DnnJsInclude2" runat="server" FilePath="skin.js" PathNameAlias="SkinPath" />
