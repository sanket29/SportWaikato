// settings
require.config({
	paths : {
		"jquery" 			: "lib/jquery/jquery",
		"imager" 			: "lib/imager/imager",
		"bttrlazyloading"	: "lib/bttrlazyloading/bttrlazyloading",
		"flexslider" 		: "lib/flexslider/flexslider",
		"validation"		: "lib/validation/validation",
		"chosen" 			: "lib/chosen/chosen"
	},
	shim : {
		"flexslider" 		: ["jquery"],
		"validation"		: ["jquery"],
		"bttrlazyloading"	: ["jquery"]
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
	"assets/chosen"
], function() {});