<%@ Control Language="C#" AutoEventWireup="true" Inherits="CMS.Controls.CMSTransformation" %><%@ Register TagPrefix="cms" Namespace="CMS.Controls" Assembly="CMS.Controls" %>
<%@ Register TagPrefix="cc1" Namespace="CMS.Controls" Assembly="CMS.Controls" %>SW<cc1:CMSEditModeButtonEditDelete runat="server" id="btnEditDeleteAutoInsert" Path='<%# Eval("NodeAliasPath") %>' AddedAutomatically="True" EnableByParent="True"   />
<div class="list-item">
	<div class="list-item-head-wrapper">
		<a href="#" class="list-item-head">
			<span class="delayed-image list-item-image" data-src="http://placehold.it/480x285">
				<img class="hidden" src="http://placehold.it/480x285" />
			</span>
			<span class="list-item-image-icon icon-right"></span>
		</a>
	</div>
	<div class="list-item-body-wrapper">
		<div class="list-item-body">
			<h3 class="list-item-title"><a href="#"><%# Eval("Name") %></a></h3>
			<p class="fixie"></p>
            <p><%# Eval("ShortDescription") %></p>
            <p class="fixie"></p>
			<p><a href="/news/<%# Eval("NodeAlias").ToString().ToLower() %>.aspx">Click to read more</a></p>
		</div>
	</div>
</div>