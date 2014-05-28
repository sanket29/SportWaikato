define(["jquery", "bttrlazyloading"], function($) {

	var lazyloading = function(selector, options) {
		//todo: do ie7 check
		return $(selector).bttrlazyloading(options);
	}


	lazyloading("#yourImageId", {
		animation:"fadeIn",
		placeholder:""
	});

	return lazyloading;
});