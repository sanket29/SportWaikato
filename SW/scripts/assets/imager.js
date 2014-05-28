define(["jquery", "assets/page", "imager"], function($, page, Imager) {

	var imageReadyClass = "image-ready";
	var replacedImageClass = "image-loaded " + imageReadyClass;


	//imager classes
	var delayedImagesInstance;
	var delayedImageSettings = {
		selector: ".js-delayed-image-general",
		className: replacedImageClass,
		lazyload: true,
		scrollDelay: 2000,
		onImagesReplaced: fadeInImage
	};


	function fadeInImage(images) {
		$(images).removeClass(imageReadyClass);
	}

	function initImager() {
		delayedImagesInstance = new Imager(delayedImageSettings);
	}


	if ( !page.isIE7 ) {
		initImager();
	}

	// return delayedImagesInstance;
});