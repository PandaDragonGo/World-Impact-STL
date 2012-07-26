<%@ Control language="C#" AutoEventWireup="false" Explicit="True" Inherits="DotNetNuke.UI.Skins.Skin" %>
<%@ Register TagPrefix="dnn" TagName="LOGO" Src="~/Admin/Skins/Logo.ascx" %>
<%@ Register TagPrefix="dnn" TagName="COPYRIGHT" Src="~/Admin/Skins/Copyright.ascx" %>
<%@ Register TagPrefix="dnn" Namespace="DotNetNuke.UI.Skins" Assembly="DotNetNuke" %>
<%@ Register TagPrefix="ddr" TagName="MENU" src="~/DesktopModules/DDRMenu/Menu.ascx" %>
<%@ Register TagPrefix="ddr" Namespace="DotNetNuke.Web.DDRMenu.TemplateEngine" Assembly="DotNetNuke.Web.DDRMenu" %>
<%@ Import Namespace="TabInfo=DotNetNuke.Entities.Tabs.TabInfo" %>

<div id="WorldImpactSTL" class="interior">
	<div id="header">
    	<div id="logo" class="logo"><dnn:LOGO runat="server" id="dnnLOGO" /></div>
    	<ddr:MENU runat="server" MenuStyle="TopLevelMenuTemplate" ExcludeNodes="870"/>
    	<div class="banner" id="Banner" runat="server"></div>
    </div>
    <div id="contentWrap" class="clear">
		<div class="twocol clear">
			<div class="leftColumn">
			<% TabController controller = new TabController();
				TabInfo rootTab = this.PortalSettings.ActiveTab;
				while (rootTab.ParentId > -1) {
					rootTab = controller.GetTab(rootTab.ParentId, rootTab.PortalID, true);
				} %>
				<h2 class="section-title"><%=rootTab.TabName%></h2>
				<ddr:MENU runat="server" MenuStyle="SideNavMenuTemplate" NodeSelector="+0,0,1" />
				<div class="sidebar" id="Sidebar" runat="server"></div>
			</div>
			<div class="main-col" id="ContentPane" runat="server"></div>
		</div>
		<div class="fullwidth" id="Fullwidth" runat="server"></div>
    </div>
    <div class="actions clear">
		<ul id="giving-interior">
			<li class="give-money">
			<a href="/Giving/GiveMoney.aspx">Give Money <span>Donate to empower the city</span></a>
			</li>
			<li class="give-stuff">
			<a href="/Giving/GiveStuff.aspx">Give Stuff <span>Ministry and housing donations</span></a>
			</li>
			<li class="give-time">
			<a href="/Giving/GiveTime.aspx">Give Time <span>Volunteer your time</span></a>
			</li>
			<li class="give-later">
			<a href="/Giving/GiveLater.aspx">Give Later <span>Leave a lasting testimony</span></a>
			</li>
		</ul>
		<div class="clear"></div>
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