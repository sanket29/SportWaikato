<%@ Control Language="C#" Inherits="CMS.PortalControls.CMSAbstractLayout" %> 
<%@ Register TagPrefix="cc1" Namespace="CMS.Controls" Assembly="CMS.Controls" %>
<%@ Register TagPrefix="cc1" Namespace="CMS.PortalControls" Assembly="CMS.PortalControls" %>
<%@ Register TagPrefix="cc1" Namespace="CMS.DocumentEngine" Assembly="CMS.DocumentEngine" %>
<div class="row">
	<div class="col-inner">
            <h3><cms:CMSWebPartZone ZoneID="ZoneTitle" runat="server" /></h3> 
            
            <cms:CMSWebPartZone ZoneID="zoneContent" runat="server" />
	</div>
</div>