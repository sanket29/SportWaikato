<%@ Control Language="C#" Inherits="CMS.PortalControls.CMSAbstractLayout" %> 
<%@ Register TagPrefix="cc1" Namespace="CMS.Controls" Assembly="CMS.Controls" %>
<%@ Register TagPrefix="cc1" Namespace="CMS.PortalControls" Assembly="CMS.PortalControls" %>
<%@ Register TagPrefix="cc1" Namespace="CMS.DocumentEngine" Assembly="CMS.DocumentEngine" %>

<div class="slider-and-search-form">
	<div class="slider js-slider">
		<ul class="slides">
			<li>
				<div class="banner">
					<img src="/sw/images/banner1.jpg" class="banner-image" />
					<div class="banner-caption-overlay">
						<div class="banner-caption-wrapper">
							<div class="banner-caption">
								<h1>Main Intro Title goes here</h1>
								<h3>Sub-heading goes here</h3>
							</div>
						</div>
					</div>
				</div>
			</li>
			<li>
				<div class="banner">
					<img class="js-banner-image image"
						data-bttrlazyloading-lg-src="http://placehold.it/1600x680&amp;text=slide3"
						data-bttrlazyloading-lg-width="1600"
						data-bttrlazyloading-lg-height="680"

						data-bttrlazyloading-md-src="http://placehold.it/768x680&amp;text=slide3"
						data-bttrlazyloading-md-width="768"
						data-bttrlazyloading-md-height="680"

						data-bttrlazyloading-sm-src="http://placehold.it/480x680&amp;text=slide3"
						data-bttrlazyloading-sm-width="480"
						data-bttrlazyloading-sm-height="680"
					/>
					<div class="banner-caption-overlay">
						<div class="banner-caption-wrapper">
							<div class="banner-caption">
								<h1>Title 2</h1>
								<h3>Sub-heading goes here</h3>
							</div>
						</div>
					</div>
				</div>
			</li>
			<li>
				<div class="banner">
					<img class="js-banner-image image"
						data-bttrlazyloading-lg-src="http://placehold.it/1600x680&amp;text=slide3"
						data-bttrlazyloading-lg-width="1600"
						data-bttrlazyloading-lg-height="680"

						data-bttrlazyloading-md-src="http://placehold.it/768x680&amp;text=slide3"
						data-bttrlazyloading-md-width="768"
						data-bttrlazyloading-md-height="680"

						data-bttrlazyloading-sm-src="http://placehold.it/480x680&amp;text=slide3"
						data-bttrlazyloading-sm-width="480"
						data-bttrlazyloading-sm-height="680"
					/>
					<div class="banner-caption-overlay">
						<div class="banner-caption-wrapper">
							<div class="banner-caption">
								<h1>Title 3</h1>
								<h3>Sub-heading goes here</h3>
							</div>
						</div>
					</div>
				</div>
			</li>
			<li>
				<div class="banner">
					<img class="js-banner-image image"
						data-bttrlazyloading-lg-src="http://placehold.it/1600x680&amp;text=slide3"
						data-bttrlazyloading-lg-width="1600"
						data-bttrlazyloading-lg-height="680"

						data-bttrlazyloading-md-src="http://placehold.it/768x680&amp;text=slide3"
						data-bttrlazyloading-md-width="768"
						data-bttrlazyloading-md-height="680"

						data-bttrlazyloading-sm-src="http://placehold.it/480x680&amp;text=slide3"
						data-bttrlazyloading-sm-width="480"
						data-bttrlazyloading-sm-height="680"
					/>
					<div class="banner-caption-overlay">
						<div class="banner-caption-wrapper">
							<div class="banner-caption">
								<h1>Title 4</h1>
								<h3>Sub-heading goes here</h3>
							</div>
						</div>
					</div>
				</div>
			</li>
		</ul>
	</div>

	<div class="relative row">
		<div class="search-form search-form--on-banner">
			<img class="search-form-header-swirl" src="/sw/images/search-form-header-swirl.png" />
			<h2><span class="icon icon-ball"></span> Get Active!</h2>
			<p>Find sport opportunities in your area.</p>

			<div class="search-form-container" data-form="" data-serialize="">

				<p class="search-form-type-selection">
					<label for="formTypeSport" data-toggle="#formSport">
						<input id="formTypeSport" type="radio" name="search-type" value="sport" checked /> Sport
					</label>
					<label for="formTypeClub" data-toggle="#formClub">
						<input id="formTypeClub" type="radio" name="search-type" value="sport" /> Club
					</label>
					<label for="formTypeRecreation" data-toggle="#formRecreation">
						<input id="formTypeRecreation" type="radio" name="search-type" value="sport" /> Recreation
					</label>
					<span></span>
				</p>

				<div class="search-form-type">
					<div id="formSport" class="search-form-type-section">
						<select name="sport-type" class="chosen-select">
							<option>Rugby</option>
							<option>Option2</option>
						</select>
						<select name="sport-region" class="chosen-select">
							<option>Region goes here</option>
							<option>Option2</option>
						</select>
					</div>
					<div id="formClub" class="search-form-type-section">
						<select name="club-type" class="chosen-select">
							<option>Club form option 1</option>
							<option>Club form option 2</option>
						</select>
						<select name="club-region" class="chosen-select">
							<option>Region goes here</option>
							<option>Option2</option>
						</select>
					</div>
					<div id="formRecreation" class="search-form-type-section">
						<select name="recreation-type" class="chosen-select">
							<option>Recreation option 1</option>
							<option>Option2</option>
						</select>
						<select name="recreation-region" class="chosen-select">
							<option>Region goes here</option>
							<option>Option2</option>
						</select>
					</div>
				</div>

				<div class="search-form-submit form-control">
					<input type="submit" text="search" value="go" name="search" />
				</div>
			</div>
		</div>
	</div>
</div>



<div class="row content-section content-section--collapsed-top">
	<div class="span8 tablet12">
		<div class="col-inner">
			<div class="homepage-intro two-columns-content">
				<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
				tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
				quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
				consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse
				cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non
				proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
				<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
				tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
				quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
				consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse
				cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non
				proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
			</div>
		</div>
	</div>
	<div class="span4 desktop-visible">
		<div class="col-inner">
			<div class="sponsor">
				<p>Special thanks to our sponsors:</p>
				<img src="/sw/images/waipanetworks-logo.jpg" alt="sponsors" />
			</div>
		</div>
	</div>
</div>

<div class="call-to-action-section content-section">
	<div class="row">
		<div class="span3 mobile2">
			<div class="col-inner">
				<div class="cta-item">
					<a href="#" class="cta-item-image">
						<span class="delayed-image">
							<span class="js-delayed-image-general" data-src="/sw/images/regional-leadership.jpg">
								<!--[if IE 7]><img src="/sw/images/regional-leadership.jpg"/><![endif]-->
							</span>
						</span>
						<span class="overlay"></span>
						<span class="icon icon-flag"></span>
					</a>
					<h2>Regional Leadership</h2>
					<div class="cta-item-body">
						<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
						tempor incididunt ut labore et dolore magna aliqua.</p>
					</div>
					<p><a href="#">Click to read more</a></p>
				</div>
			</div>
		</div>

		<div class="span3 mobile2">
			<div class="col-inner">
				<div class="cta-item">
					<a href="#" class="cta-item-image">
						<span class="delayed-image">
							<span class="js-delayed-image-general" data-src="/sw/images/young-people.jpg">
								<!--[if IE 7]><img src="/sw/images/young-people.jpg"/><![endif]-->
							</span>
						</span>
						<span class="overlay"></span>
						<span class="icon icon-backpack"></span>
					</a>
					<h2>Young People</h2>
					<div class="cta-item-body">
						<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
						tempor incididunt ut labore et dolore magna aliqua.</p>
					</div>
					<p><a href="#">Click to read more</a></p>
				</div>
			</div>
		</div>

		<div class="span3 mobile2">
			<div class="col-inner">
				<div class="cta-item">
					<a href="#" class="cta-item-image">
						<span class="delayed-image">
							<span class="js-delayed-image-general" data-src="/sw/images/community-sport.jpg">
								<!--[if IE 7]><img src="/sw/images/community-sport.jpg"/><![endif]-->
							</span>
						</span>
						<span class="overlay"></span>
						<span class="icon icon-boot"></span>
					</a>
					<h2>Community Sport</h2>
					<div class="cta-item-body">
						<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
						tempor incididunt ut labore et dolore magna aliqua.</p>
					</div>
					<p><a href="#">Click to read more</a></p>
				</div>
			</div>
		</div>

		<div class="span3 mobile2">
			<div class="col-inner">
				<div class="cta-item">
					<a href="#" class="cta-item-image">
						<span class="delayed-image">
							<span class="js-delayed-image-general" data-src="/sw/images/healthy-active-lifestyles.jpg">
								<!--[if IE 7]><img src="/sw/images/healthy-active-lifestyles.jpg"/><![endif]-->
							</span>
						</span>
						<span class="overlay"></span>
						<span class="icon icon-fruit"></span>
					</a>
					<h2>Healthy active lifestyles</h2>
					<div class="cta-item-body">
						<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
						tempor incididunt ut labore et dolore magna aliqua.</p>
					</div>
					<p><a href="#">Click to read more</a></p>
				</div>
			</div>
		</div>
	</div>
</div>

<div class="row content-section">
	<h2 class="section-title section-title--col-inner">News</h2>
	<div class="span3 tablet6 mobile4">
		<div class="col-inner">
			<div class="list-item">
				<div class="list-item-head-wrapper">
					<a href="#" class="list-item-head">
						<span class="delayed-image list-item-image">
							<span class="js-delayed-image-general" data-src="/sw/images/newsitem1.jpg">
								<!--[if IE 7]><img src="/sw/images/newsitem1.jpg"/><![endif]-->
							</span>
						</span>
						<span class="list-item-image-icon icon-right"></span>
					</a>
				</div>
				<div class="list-item-body-wrapper">
					<div class="list-item-body">
						<h3 class="list-item-title"><a href="#">Part Time Assistant Swim Coach</a></h3>
						<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
						tempor incididunt ut labore et dolore magna aliqua.</p>
						<p><a href="#">Click to read more</a></p>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="span3 tablet6 mobile4">
		<div class="col-inner">
			<div class="list-item">
				<div class="list-item-head-wrapper">
					<a href="#" class="list-item-head">
						<span class="delayed-image list-item-image">
							<span class="js-delayed-image-general" data-src="/sw/images/coaches.jpg">
								<!--[if IE 7]><img src="/sw/images/coaches.jpg"/><![endif]-->
							</span>
						</span>
						<span class="list-item-image-icon icon-right"></span>
					</a>
				</div>
				<div class="list-item-body-wrapper">
					<div class="list-item-body">
						<h3 class="list-item-title"><a href="#">Part Time Assistant Swim Coach</a></h3>
						<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
						tempor incididunt ut labore et dolore magna aliqua.</p>
						<p><a href="#">Click to read more</a></p>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="span3 tablet6 mobile4">
		<div class="col-inner">
			<div class="list-item">
				<div class="list-item-head-wrapper">
					<a href="#" class="list-item-head">
						<span class="delayed-image list-item-image">
							<span class="js-delayed-image-general" data-src="/sw/images/newsitem3.jpg">
								<!--[if IE 7]><img src="/sw/images/newsitem3.jpg"/><![endif]-->
							</span>
						</span>
						<span class="list-item-image-icon icon-right"></span>
					</a>
				</div>
				<div class="list-item-body-wrapper">
					<div class="list-item-body">
						<h3 class="list-item-title"><a href="#">Part Time Assistant Swim Coach</a></h3>
						<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
						tempor incididunt ut labore et dolore magna aliqua.</p>
						<p><a href="#">Click to read more</a></p>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="span3 tablet6 mobile4">
		<div class="col-inner">
			<div class="list-item">
				<div class="list-item-head-wrapper">
					<a href="#" class="list-item-head">
						<span class="delayed-image list-item-image">
							<span class="js-delayed-image-general" data-src="/sw/images/healthy-eating.jpg">
								<!--[if IE 7]><img src="/sw/images/healthy-eating.jpg"/><![endif]-->
							</span>
						</span>
						<span class="list-item-image-icon icon-right"></span>
					</a>
				</div>
				<div class="list-item-body-wrapper">
					<div class="list-item-body">
						<h3 class="list-item-title"><a href="#">Part Time Assistant Swim Coach</a></h3>
						<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
						tempor incididunt ut labore et dolore magna aliqua.</p>
						<p><a href="#">Click to read more</a></p>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>

<div class="row content-section">
	<div class="span7 tablet12">
		<div class="col-inner">
			<h2 class="section-title">Events &amp; Calendar <a href="#">See All <span class="icon-right"></span></a></h2>
			<p>	
				<span class="js-delayed-image-general" data-src="http://placehold.it/497x275">
					<!--[if IE 7]><img src="http://placehold.it/497x275"/><![endif]-->
				</span>
			</p>
		</div>
	</div>
	<div class="span5 tablet12">
		<div class="col-inner">
			<div class="row">
				<div class="tablet6 mobile4">
					<div class="col-inner">
						<h2 class="section-title">Top Events <a href="#">See All <span class="icon-right"></span></a></h2>

						<div class="list-item list-item--alternate">
							<div class="list-item-head-wrapper">
								<a href="#" class="list-item-head">
									<span class="delayed-image list-item-image">
										<span class="js-delayed-image-general" data-src="/sw/images/kids-sport.jpg">
											<!--[if IE 7]><img src="/sw/images/kids-sport.jpg"/><![endif]-->
										</span>
									</span>
									<span class="list-item-image-icon icon-right"></span>
								</a>
							</div>
							<div class="list-item-body-wrapper">
								<div class="list-item-body">
									<h4 class="list-item-title"><a href="#">Part Time</a></h4>
									<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.</p>
									<p><a href="#">Click to read more</a></p>
								</div>
							</div>
						</div>

						<div class="list-item list-item--alternate">
							<div class="list-item-head-wrapper">
								<a href="#" class="list-item-head">
									<span class="delayed-image list-item-image">
										<span class="js-delayed-image-general" data-src="/sw/images/women-jogging.jpg">
											<!--[if IE 7]><img src="/sw/images/women-jogging.jpg"/><![endif]-->
										</span>
									</span>
									<span class="list-item-image-icon icon-right"></span>
								</a>
							</div>
							<div class="list-item-body-wrapper">
								<div class="list-item-body">
									<h4 class="list-item-title"><a href="#">Part Time</a></h4>
									<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.</p>
									<p><a href="#">Click to read more</a></p>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="tablet6 mobile4 desktop-hidden">
					<div class="col-inner">
						<div class="sponsor">
							<p>Special thanks to our sponsors:</p>
							<img alt="sponsors" src="/sw/images/waipanetworks-logo.jpg">
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
