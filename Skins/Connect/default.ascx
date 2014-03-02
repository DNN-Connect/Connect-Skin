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
<dnn:Meta ID="Meta3" runat="server" Name="viewport" Content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0" />
<dnn:Meta ID="Meta4" runat="server" http-equiv="Cache-Control" Content="max-age" />

<script>!function (d, s, id) { var js, fjs = d.getElementsByTagName(s)[0], p = /^http:/.test(d.location) ? 'http' : 'https'; if (!d.getElementById(id)) { js = d.createElement(s); js.id = id; js.src = p + "://platform.twitter.com/widgets.js"; fjs.parentNode.insertBefore(js, fjs); } }(document, "script", "twitter-wjs");</script>

<div id="fb-root"></div>
<script>(function(d, s, id) {
  var js, fjs = d.getElementsByTagName(s)[0];
  if (d.getElementById(id)) return;
  js = d.createElement(s); js.id = id;
  js.src = "//connect.facebook.net/de_DE/all.js#xfbml=1&appId=1430154350554964";
  fjs.parentNode.insertBefore(js, fjs);
}(document, 'script', 'facebook-jssdk'));</script>

<link href='http://fonts.googleapis.com/css?family=Muli' rel='stylesheet' type='text/css'>
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
<dnn:Meta ID="Meta1" runat="server" Name="viewport" Content="width=device-width; initial-scale=1.0; maximum-scale=1.0; user-scalable=0;" />
<dnn:Meta ID="Meta2" runat="server" http-equiv="Cache-Control" Content="max-age" />


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
    
        <div class="tiles clearfix">
            
            <div class="content left clearfix">
                <div id="TopPane" runat="server" class="tile tile_bar" ContainerType="G" ContainerName="Connect" ContainerSrc="Plain.ascx"></div>
                <div id="ContentPane" runat="server" class="tile tile_content" ContainerType="G" ContainerName="Connect" ContainerSrc="White.ascx"></div>
				<div id="ContentLeftPane" runat="server" class="tile tile_content50"></div>
				<div id="ContentRightPane" runat="server" class="tile tile_content50"></div>
            </div>            
            
            <div class="sidebar left clearfix">
                <div id="Tile0" runat="server" class="tile tile_300 color0 clearfix"></div>
				<div id="Tile1" runat="server" class="tile tile_300 color1 clearfix"></div>
                <div id="Tile2" runat="server" class="tile tile_300 color2 clearfix"></div>
                <div id="Tile3" runat="server" class="tile tile_300 color5 clearfix"></div>
                <div id="Tile4" runat="server" class="tile tile_300 color6 clearfix"></div>
                <div id="Tile5" runat="server" class="tile tile_300 color4 clearfix"></div>
				<div id="Tile6" runat="server" class="tile tile_300 color1 clearfix"></div>
            </div>
        </div>

	</div><!--/skinWidth-->

    <div class="footer skinWidth clearfix">

        <div class="col-f first">
            <h4>DNN-Connect</h4>
            
            <p>For all matters regarding this website, direct your electronic conversation to</p>
            <p><a href="mailto:webmaster@dnn-connect.org">webmaster@dnn-connect.org</a></p>
            <p>In case you need to get in touch with us by regular post, please direct it to</p>
            <p>Philipp Becker<br />Hof Haina 4<br />D-35444 Biebertal</p>
        </div>

        <div class="col-f">
            <h4>Meet the Team</h4>
            <p>DNN Connect is an initiative for the community by the community. It is run by volunteers.</p>
            <ul>
                <li>Peter Donker<br /><a href="http://bring2mind.net" target="_blank">Bring2Mind</a></li>
                <li>Vicen&ccedil; Masanas<br /><a href="http://www.disgrafic.com" target="_blank">Disgrafic</a></li>
                <li>Philipp Becker<br /><a href="http://peppertree-solutions.com" target="_blank">Peppertree Solutions</a></li>
            </ul>
        </div>

        <div class="col-f">
            <h4>Social Channels</h4>
            <ul>
                <li><a href="http://facebook.com/dnnconnect">Facebook</a></li>
                <li><a href="http://twitter.com/dnnconnect">Twitter</a></li>
            </ul>
            <h4>Legal</h4>
            <p>DNN and DotNetNuke are registered trademarks of <a href="http://www.dnnsoftware.com">DNN Corp</a></p>
        </div>

    </div>
</div><!--/contentWrap-->
<dnn:DnnJsInclude ID="DnnJsInclude1" runat="server" FilePath="js/purl.js" PathNameAlias="SkinPath" />
<dnn:DnnJsInclude ID="DnnJsInclude2" runat="server" FilePath="skin.js" PathNameAlias="SkinPath" />
