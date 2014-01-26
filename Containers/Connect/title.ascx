<%@ Control language="vb" CodeBehind="~/admin/Containers/container.vb" AutoEventWireup="false" Explicit="True" Inherits="DotNetNuke.UI.Containers.Container" %>
<%@ Register TagPrefix="dnn" TagName="TITLE" Src="~/Admin/Containers/Title.ascx" %>
<div class="head_title">
	<dnn:TITLE runat="server" ID="dnnTITLE" />
</div>
<div class="connect_plain clearfix">
	<div id="ContentPane" runat="server"></div>
</div>