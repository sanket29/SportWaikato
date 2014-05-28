define(["jquery", "assets/page", "assets/bttrlazyloading", "flexslider"], function($, page, lazyloading) {

	// config
	var $bannerImages = $(".js-banner-image");

	// object containing all slider instances
	var sliderInstances = {};

	// slider configuration object
	var sliderConfiguration = {
		".js-slider" : {
			namespace: "slider-",
			prevText: "<span class='ie-icon icon-left'></span>",
			nextText: "<span class='ie-icon icon-right'></span>",
			initDelay: 500,
			touch: true,
			controlNav: false,
			start: function(slider) { onNextSlide(slider); },
			after: function(slider) { onNextSlide(slider); }
		}
	};


	// methods


	// init function
	function init() {
		// wiring up flexslider based on sliderConfiguration object
		for (selector in sliderConfiguration) {
			sliderInstances[selector] = $(selector).flexslider( sliderConfiguration[selector] ).data("flexslider");
		}

		lazyloading(".js-banner-image", {
			animation:"fadeIn",
			placeholder:"",
			triggermanually:true
		});

		// cuts the mustard
		if (!page.isIE7) {
			// replacing dummy function with actual function that loads image
			onNextSlide = loadSlideImage; 
		}
	}


	// finds out delayed image element in current slide and passes it to addToImager function
	function loadSlideImage(slider) {
		// crazy way of finding delayed image element on current slide
		var $delayedImageElement = $(slider).find("li:eq("+ (slider.currentSlide + 1) +") .js-banner-image");

		console.log("triggering load");
		$delayedImageElement.trigger("bttrlazyloading.load");
	}


	// add an element to imager instance
	function addToImager(element) {
	}


	init();
});