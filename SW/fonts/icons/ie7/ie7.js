/* To avoid CSS expressions while still supporting IE 7 and IE 6, use this script */
/* The script tag referring to this file must be placed before the ending body tag. */

/* Use conditional comments in order to target IE 7 and older:
	<!--[if lt IE 8]><!-->
	<script src="ie7/ie7.js"></script>
	<!--<![endif]-->
*/

(function() {
	function addIcon(el, entity) {
		var html = el.innerHTML;
		el.innerHTML = '<span style="font-family: \'icomoon\'">' + entity + '</span>' + html;
	}
	var icons = {
		'icon-cart': '&#xe617;',
		'icon-play': '&#xe60a;',
		'icon-backpack': '&#xe616;',
		'icon-ball': '&#xe615;',
		'icon-book': '&#xe614;',
		'icon-boot': '&#xe613;',
		'icon-calendar': '&#xe612;',
		'icon-search': '&#xe605;',
		'icon-trophy': '&#xe604;',
		'icon-twitter': '&#xe603;',
		'icon-wheelchair': '&#xe602;',
		'icon-wheelchair2': '&#xe601;',
		'icon-youtube': '&#xe600;',
		'icon-right': '&#xe606;',
		'slider-next': '&#xe606;',
		'icon-phone': '&#xe607;',
		'icon-paper': '&#xe608;',
		'icon-left': '&#xe609;',
		'slider-prev': '&#xe609;',
		'icon-instagram': '&#xe60b;',
		'icon-facebook': '&#xe610;',
		'icon-email': '&#xe611;',
		'icon-figure': '&#xe60f;',
		'icon-flag': '&#xe60e;',
		'icon-fruit': '&#xe60d;',
		'icon-information': '&#xe60c;',
		'0': 0
		},
		els = document.getElementsByTagName('*'),
		i, c, el;
	for (i = 0; ; i += 1) {
		el = els[i];
		if(!el) {
			break;
		}
		c = el.className;
		c = c.match(/icon-[^\s'"]+/);
		if (c && icons[c[0]]) {
			addIcon(el, icons[c[0]]);
		}
	}
}());