<%@ Control Language="C#" AutoEventWireup="true" Inherits="CMS.Controls.CMSTransformation" %><%@ Register TagPrefix="cms" Namespace="CMS.Controls" Assembly="CMS.Controls" %>
<%@ Register TagPrefix="cc1" Namespace="CMS.Controls" Assembly="CMS.Controls" %>
<div class="list-item">
	<div class="list-item-body-wrapper">
		<div class="list-item-body">
			<h3 class="list-item-title"><a href="#"><%# Eval("Name") %></a></h3>
			<p class="fixie"></p>
			<p><%# Convert.ToDateTime(Eval("Date")).ToShortDateString() %></p>
		</div>
	</div>
</div>
<br />
<br />
<%--<cc1:CMSEditModeButtonEditDelete runat="server" id="btnEditDeleteAutoInsert" Path='<%# Eval("NodeAliasPath") %>' AddedAutomatically="True" EnableByParent="True"   />--%>