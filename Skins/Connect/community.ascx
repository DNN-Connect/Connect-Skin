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
<script type="text/javascript" src="/Portals/_Default/Skins/Connect/js/purl.js"></script>

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

        $('.searchInputContainer > input').focusin(function () {
            input = $(this);
            input.toggleClass('active');
        });

        $('.searchInputContainer > input').focusout(function () {
            input = $(this);
            input.toggleClass('active');
        });

        $('.userName > a').text('My Account');

        $('.external-sociallink-twitter').attr('target', '_blank');

        var params = $.url().param('SearchValues');

        if (params) {
            var link = $('a[rel="' + params + '"]');
            if (link) {
                link.addClass('active');
            }
        }

        $('.connectdir_searchbutton > input').addClass('dnnPrimaryAction');
        $('.connectdir_searchformbutton > input').addClass('dnnPrimaryAction');

    });

</script>

<div class="topBar skinWidth">

    <div class="connect-toolbar clearfix">
        <div class="connect_logo"><dnn:LOGO ID="dnnLogo" runat="server" /></div>
        <div class="connect_search"><dnn:SEARCH ID="dnnSearch" runat="server" ShowSite="false" ShowWeb="false" EnableTheming="true" Submit="Search" CssClass="SearchButton" Placeholder="" /></div>
        <div class="connect_nav">
            <dnn:MENU ID="MENU1" MenuStyle="ConnectNav" runat="server"></dnn:MENU>
        </div>
        <div class="connect_usertoolbar clearfix">
            <dnn:USERANDLOGIN id="userLogin" runat="Server" /><div class="clearfix"></div>
        </div>
    </div>

	<div class="dnnClear"></div>
</div>

<div class="contentWrap">
	<div class="skinWidth">

    
        <div class="tiles clearfix">
            
            <div class="content left clearfix">
                <div id="ContentPane" runat="server" class="tile tile_content color0"></div>
            </div>            
            
            <div class="sidebar right clearfix">
                <div id="Tile1" runat="server" class="tile tile_300 color1 clearfix"></div>
                <div id="Tile2" runat="server" class="tile tile_300 color2 clearfix"></div>
                <div id="Tile3" runat="server" class="tile tile_300 color5 clearfix"></div>
                <div id="Tile4" runat="server" class="tile tile_300 color6 clearfix"></div>
                <div id="Tile5" runat="server" class="tile tile_300 color4 clearfix"></div>
            </div>
        </div>

		

	</div><!--/skinWidth-->
</div><!--/contentWrap-->