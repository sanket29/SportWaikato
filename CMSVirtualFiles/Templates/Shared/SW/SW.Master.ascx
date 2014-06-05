<%@ Control Language="C#" Inherits="CMS.PortalControls.CMSAbstractLayout" %> 
<%@ Register TagPrefix="cc1" Namespace="CMS.Controls" Assembly="CMS.Controls" %>
<%@ Register TagPrefix="cc1" Namespace="CMS.PortalControls" Assembly="CMS.PortalControls" %>
<%@ Register TagPrefix="cc1" Namespace="CMS.DocumentEngine" Assembly="CMS.DocumentEngine" %>

<div id="wrap" runat="server">
	<div class="main-header">
		<div class="main-header-inner">
			<div class="main-header-container">
				<h1 class="main-logo"><a href="/" title="Sport Waikato"><img src="/sw/images/main-logo.png" alt="Sport Waikato" title="Sport Waikato" /></a></h1>

				<div class="main-nav">
					<ul id="menuElem">
						<li class="nav-toplevel">
							<a href="#" class="nav-toplevel-link"><span class="icon icon-figure"></span>Get Active</a>
						</li>
						<li class="nav-toplevel">
							<a href="#" class="nav-toplevel-link"><span class="icon icon-book"></span>News</a>
						</li>
						<li class="nav-toplevel">
							<a href="#" class="nav-toplevel-link"><span class="icon icon-trophy"></span>Awards</a>
						</li>
						<li class="nav-toplevel">
							<a href="#" class="nav-toplevel-link"><span class="icon icon-calendar"></span>Calendar</a>
						</li>
						<li class="nav-toplevel">
							<a href="#" class="nav-toplevel-link"><span class="icon icon-information"></span>Programmes</a>
						</li>

						<li class="nav-toplevel">
							<a href="#" class="nav-toplevel-link"><span class="icon"></span>Faqs</a>
						</li>
						<li class="nav-toplevel">
							<a href="#" class="nav-toplevel-link"><span class="icon"></span>About us</a>
						</li>
						<li class="nav-toplevel">
							<a href="#" class="nav-toplevel-link"><span class="icon"></span>Contact us</a>
						</li>
					</ul>
				</div>
				<div class="login-and-search input-group">
					<span class="input-group-button">
						<a href="#" class="button button--secondary button-login">Login</a>
					</span>
					<div class="form-control">
						<input type="search" placeholder="Search" />
					</div>
					<span class="input-group-button">
						<a href="#" class="button button--primary button-search"><span class="icon-search"></span></a>
					</span>
				</div>
			</div>
		</div>
	</div>

	<div class="main-body">
		<cms:CMSWebPartZone ZoneID="zoneContent" runat="server" />
	</div>

	<div class="main-footer">
		<div class="main-footer-inner">
			<div class="row">
				<div class="span4">
					<div class="col-inner">
						<div class="footer-operation-areas">
							<h3>Sport waikato serves in these communities:</h3>
							<ul>
								<li><a href="#">Hamilton</a></li>
								<li><a href="#">Tainui</a></li>
								<li><a href="#">Hauraki</a></li>
								<li><a href="#">Taupo</a></li>
								<li><a href="#">Maniapoto</a></li>
								<li><a href="#">Thames</a></li>
								<li><a href="#">Matamata</a></li>
								<li><a href="#">Coromandel</a></li>
								<li><a href="#">Piako</a></li>
								<li><a href="#">Waikato</a></li>
								<li><a href="#">Otorohanga</a></li>
								<li><a href="#">Waipa</a></li>
								<li><a href="#">South Waikaot</a></li>
								<li><a href="#">Waitomo</a></li>
							</ul>
						</div>
					</div>
				</div>
				<div class="span4">
					<div class="col-inner">
						<div class="footer-major-programmes">
							<h3>Our Major Programmes</h3>
						</div>
					</div>
				</div>
				<div class="span4">
					<div class="col-inner">
						<div class="footer-logo-and-copyright">
							<h1 class="footer-logo"><a href="/"><img src="/sw/images/footer-logo.png" /></a></h1>
							<p class="footer-copyright">Copyright &copy; 2013 Sport Waikato<br/>Site by <a href="http://www.kudosweb.com">Kudos web</a> &copy;</p>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>

<script type="text/javascript" src="/CMSPages/Webservice.asmx/jsdebug"></script>
<script data-main="/sw/scripts/main.js" src="/sw/scripts/lib/require/require.js"></script>