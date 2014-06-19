<%@ Control Language="C#" Inherits="CMS.PortalControls.CMSAbstractLayout" %> 
<%@ Register TagPrefix="cc1" Namespace="CMS.Controls" Assembly="CMS.Controls" %>
<%@ Register TagPrefix="cc1" Namespace="CMS.PortalControls" Assembly="CMS.PortalControls" %>
<%@ Register TagPrefix="cc1" Namespace="CMS.DocumentEngine" Assembly="CMS.DocumentEngine" %>

<cms:CMSRepeater ID="NewsDetails" runat="server" DelayedLoading="true" Path="/%" ClassNames="SW.News" WhereCondition=<%# CustomCode.ResolveMacro("NodeAlias LIKE '{?NodeAlias|(encode)?}'") %> TransformationName="SW.News.Details"></cms:CMSRepeater>
