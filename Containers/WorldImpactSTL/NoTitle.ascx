<%@ Control language="C#" AutoEventWireup="false" Explicit="True" Inherits="DotNetNuke.UI.Containers.Container" %>
<%@ Register TagPrefix="dnn" TagName="Actions" Src="~/Admin/Containers/actions.ascx" %>
<%@ Register TagPrefix="dnn" TagName="ActionButton" Src="~/Admin/Containers/ActionButton.ascx" %>

<div class="notitle">
	  
	<dnn:Actions runat="server" id="dnnActions" />  
	<div runat="server" id="ContentPane"  class="s-body" ></div>
    
	<dnn:ActionButton runat="server" id="dnnActionButton1"  CommandName="AddContent.Action" DisplayLink="True" DisplayIcon="True" />
	
	<dnn:ActionButton runat="server" id="dnnActionButton2"  CommandName="ModuleSettings.Action" DisplayLink="True" DisplayIcon="True" />

</div>
