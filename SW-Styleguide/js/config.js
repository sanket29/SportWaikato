define({
	// This css path is used as a default by the Kalei project it self.
	//css_path: window.location.protocol + '//' + window.location.hostname + (window.location.port === '' ? '' : ':'+ window.location.port) + window.location.pathname +  '/css/styles.css',
	// You can configure any path by just deleteing the one above and uncommenting the one below to point at your css directory
	// css_path: 'http://localhost/css/styles.css',
	// css_path: '/adventureworld-styleguide/styles/intro.css',
	// css_path: 'http://kudosweb.com/CMSPages/GetResource.ashx?stylesheetname=ADV-Intro',
	css_path: '../../../CMSVirtualFiles/CSSStylesheets/SW-StyleGuide.css',
	// css_path: 'http://staging.adventureworld.co.nz/CMSPages/GetResource.ashx?stylesheetname=ADV-Intro',
	// css_path: '/adventureworld-styleguide/css/home.css',
	//css_path: '/adventureworld-styleguide/css/styles.css',
	// css_path: 'http://staging.adventureworld.co.nz/CMSPages/GetResource.ashx?stylesheetname=ADV-Styles-header',
	// You can manually list the css files to process by giving a css_paths array
	// css_paths: ['../css/adventureworld-styles.css', '../css/home.css'],
	
	// You can optionally set configuration for marked.js
	marked_options: {
		tables: true
	}

	//disqus_shortname: 'kaleistyleguide'
});