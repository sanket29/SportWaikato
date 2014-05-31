// settings
require.config({
	paths : {
		"jquery" 			: "lib/jquery/jquery",
		"imager" 			: "lib/imager/imager",
		"bttrlazyloading"	: "lib/bttrlazyloading/bttrlazyloading",
		"flexslider" 		: "lib/flexslider/flexslider",
		"validation"		: "lib/validation/validation",
		"chosen" 			: "lib/chosen/chosen",
		"clndr"				: "lib/clndr/clndr",
		"moment"			: "lib/moment/moment",
		"underscore"		: "lib/underscore/underscore"
	},
	shim : {
		"flexslider" 		: ["jquery"],
		"validation"		: ["jquery"],
		"bttrlazyloading"	: ["jquery"],
		"clndr"				: ["jquery", "moment", "underscore"]
	}
});


// init
define([
	"require", 
	"jquery", 
	"assets/page", 
	"assets/imager", 
	"assets/bttrlazyloading",
	"assets/flexslider", 
	"assets/validation", 
	"assets/chosen",
	"assets/clndr"
], function() {});