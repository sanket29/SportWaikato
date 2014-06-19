<%@ Control Language="C#" AutoEventWireup="true" Inherits="CMS.Controls.CMSTransformation" %>
<%@ Register TagPrefix="cms" Namespace="CMS.Controls" Assembly="CMS.Controls" %>
<%@ Register TagPrefix="cc1" Namespace="CMS.Controls" Assembly="CMS.Controls" %>
<div style="width: 100%; height: 104px;">
    <div style="float: left; width: 6%;">
        <%# GetImageByUrl(Eval("LogoImage")) %>
    </div>
    <div style="float: right; width: 93%;">
        <div>
            <h2><a style="color:#6f6f6f" href="/programmes/<%# Eval("NodeAlias").ToString().ToLower() %>.aspx"><%# Eval("Name") %></a></h2>
        </div>
        <br />
        <br />
        <div><%# Eval("ShortDescription") %></div>
        <br />
        <br />
    </div>
</div>
<br />
<%--<cc1:CMSEditModeButtonEditDelete runat="server" id="btnEditDeleteAutoInsert" Path='<%# Eval("NodeAliasPath") %>' AddedAutomatically="True" EnableByParent="True"   />--%>