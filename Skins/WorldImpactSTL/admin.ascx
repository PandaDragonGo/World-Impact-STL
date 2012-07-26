<%@ Control language="C#" AutoEventWireup="false" Explicit="True" Inherits="WorldImpact.Stl.SkinBase" %>
<%@ Register TagPrefix="dnn" TagName="LOGO" Src="~/Admin/Skins/Logo.ascx" %>
<%@ Register TagPrefix="dnn" TagName="COPYRIGHT" Src="~/Admin/Skins/Copyright.ascx" %>
<%@ Register TagPrefix="dnn" Namespace="DotNetNuke.UI.Skins" Assembly="DotNetNuke" %>
<%@ Register TagPrefix="ddr" TagName="MENU" src="~/DesktopModules/DDRMenu/Menu.ascx" %>
<%@ Register TagPrefix="ddr" Namespace="DotNetNuke.Web.DDRMenu.TemplateEngine" Assembly="DotNetNuke.Web.DDRMenu" %>

<div id="WorldImpactSTL" class="admin">
	<div id="header">
    	<h2 class="site-title"><a href="<%=DotNetNuke.Common.Globals.NavigateURL(PortalSettings.HomeTabId)%>">World Impact STL</a></h2>
    	<ddr:MENU runat="server" MenuStyle="TopLevelMenuTemplate" />
    </div>   
    <div id="contentWrap" class="clear">
		<div class="main-content" id="ContentPane" runat="server"></div>
    </div>   
    <div id="footer" class="clear">
    	<div class="three-col">
			<div class="footerUtility">
				<dnn:Copyright runat="server" id="dnnCopyright" CssClass="copyright" />
				<ul>
					<li>3108 N Grand Blvd.  St. Louis, MO 63107</li>   
					<li>P 314.533.8313  F 314.652-8616</li>  
					<li><a href="#">Contact Us</a></li>  
				</ul>
			</div>
			<div class="foot-mid" id="FooterMid" runat="server"></div>
        	<div class="foot-right" id="FooterRight" runat="server"></div>
		</div>
	</div>
	<div class="bottom-shadow clear"></div>
</div>

<script src="<%=SkinPath%>/js/jquery.pngFix.pack.js" type="text/javascript" ></script>