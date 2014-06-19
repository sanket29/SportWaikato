<%@ Control Language="C#" Inherits="CMS.PortalControls.CMSAbstractLayout" %>
<%@ Register TagPrefix="cc1" Namespace="CMS.Controls" Assembly="CMS.Controls" %>
<%@ Register TagPrefix="cc1" Namespace="CMS.PortalControls" Assembly="CMS.PortalControls" %>
<%@ Register TagPrefix="cc1" Namespace="CMS.DocumentEngine" Assembly="CMS.DocumentEngine" %>
<script language="c#" runat="server">
    public void Page_Load(object sender, EventArgs e)
    {
        try
        {
            if (QueryHelper.GetString("category", "") != string.Empty)
                rptNews.WhereCondition = CustomCode.ResolveMacro("Category LIKE '" + QueryHelper.GetString("category", "") + "'");
        }
        catch
        {
        }        
    }
</script>
<h2 class="list-item-title">
    <cms:CMSEditableRegion ID="editableNews" runat="server" RegionTitle="News Title" RegionType="TextBox" DialogWidth="350" />
</h2>
<br />
<br />

<cms:CMSEditableRegion ID="editableTextNews" runat="server" RegionTitle="News Text" RegionType="HtmlEditor" DialogHeight="300" DialogWidth="600" />

<br />
<br />
<%--<cms:CMSRepeater runat="server" Path="/%" ClassNames="SW.News" WhereCondition=<%# CustomCode.ResolveMacro("Category LIKE '{?category?}'") %> TransformationName="SW.News.ListItem"></cms:CMSRepeater>--%>

<cms:CMSRepeater ID="rptNews" runat="server" Path="/%" ClassNames="SW.News" TransformationName="SW.News.ListItem"></cms:CMSRepeater>

