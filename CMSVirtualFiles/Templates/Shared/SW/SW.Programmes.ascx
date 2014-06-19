<%@ Control Language="C#" Inherits="CMS.PortalControls.CMSAbstractLayout" %>
<%@ Register TagPrefix="cc1" Namespace="CMS.Controls" Assembly="CMS.Controls" %>
<%@ Register TagPrefix="cc1" Namespace="CMS.PortalControls" Assembly="CMS.PortalControls" %>
<%@ Register TagPrefix="cc1" Namespace="CMS.DocumentEngine" Assembly="CMS.DocumentEngine" %>
<h2 class="list-item-title">
    <cms:CMSEditableRegion ID="editablePrograme" runat="server" RegionTitle="Programme Title" RegionType="TextBox" DialogWidth="500" />
</h2>
<br />

<cms:CMSEditableRegion ID="editableTextProgramme" runat="server" RegionTitle="Programme Content" RegionType="TextArea" DialogHeight="300" DialogWidth="600" />

<br />
<br />
<cms:CMSRepeater ID="ProgrameList" runat="server" Path="/%" ClassNames="SW.Programme" WhereCondition=<%# CustomCode.ResolveMacro("Category LIKE '{?category?}'") %> TransformationName="SW.Programme.ListItemCompact"></cms:CMSRepeater>
