<%@ Control Language="C#" AutoEventWireup="true" Inherits="CMS.Controls.CMSTransformation" %><%@ Register TagPrefix="cms" Namespace="CMS.Controls" Assembly="CMS.Controls" %>
<%@ Register TagPrefix="cc1" Namespace="CMS.Controls" Assembly="CMS.Controls" %><h4><strong><%# Eval("Area") %></strong></h4>
<p>
    <asp:Placeholder runat="server" visible='<%# !String.IsNullOrEmpty(Eval("Address").ToString()) %>' >
        <%# Eval("Address") %><br>
    </asp:Placeholder>
    <asp:Placeholder runat="server" visible='<%# !String.IsNullOrEmpty(Eval("Phone").ToString()) %>' >
        <%# Eval("Phone") %><br>
    </asp:Placeholder>
    <asp:Placeholder runat="server" visible='<%# !String.IsNullOrEmpty(Eval("Email").ToString()) %>' >
        E: <a href="mailto:<%# Eval("Email") %>"><%# Eval("Email") %></a><br>
    </asp:Placeholder>
    <asp:Placeholder runat="server" visible='<%# !String.IsNullOrEmpty(Eval("FreePhone").ToString()) %>' >
        Freephone: <%# Eval("FreePhone") %>
    </asp:Placeholder>
</p><cc1:CMSEditModeButtonEditDelete runat="server" id="btnEditDeleteAutoInsert" Path='<%# Eval("NodeAliasPath") %>' AddedAutomatically="True" EnableByParent="True"   />