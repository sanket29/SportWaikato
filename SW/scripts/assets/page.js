define(["jquery"], function($) {

	var $window = $(window);
	var $body = $("body");
	var page = {};
		page.debug = true;


	// methods

	// safety around browsers not supporting console.log. so, use page.log("message") instead;
	page.log = function(message) {
		// proceed only if debug is set to true
		if (page.debug) {
			// check if console is available
			if ( window.console ) {
				// send all arguments to console.log. arguments is special keyword to get array of all arguments
				// more info here: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Functions_and_function_scope/arguments
				console.log(arguments);
			}
		}
	}

	// set data-toggle="#id" on element where "#id" is jquery selector for element to show 
	page.toggle = function() {
		// get all elements with data-toggle="" attribute
		var $allToggleElements = $("[data-toggle]");

		// attach click.toggle event on them
		$allToggleElements.on("click.toggle", function(e) {
			// element that is clicked
			var $clickedElement = $(this);

			// prevent default behaviour is element is an anchor tag
			$clickedElement.is("a") ? e.preventDefault() : "";

			// element selector, #id of data-toggle="#id" attribute
			var targetElement = $clickedElement.attr("data-toggle");

			// select and show the element and hide siblings
			$(targetElement).show().siblings().hide();
		});

		// return all toggle elements, so it can be called dynamicaly. eg, page.toggle.find("#toggleElement").tirgger("click.toggle")
		return $allToggleElements;
	}();

	// redirect to url passed as a parameter
	page.redirectTo = function(url, target) {
		// url is passed and is not an empty string
		if (url && url != "") {

			// if target option is specified, like "_blank", "_parent", "_self" or "_top"
			if (target) {
				// open url in the format specified by target
				window.open(url, target);

				// prevent from further execution
				return;
			}

			// otherwise just replace current page with the url provided
			window.location.href = url;
		}
	}


	// properties

	page.isIE7 = (function() {
		// bringing knief to a gun fight?
		return $body.hasClass("IE7");
	})();


	if (page.debug) {
		// have access to page from developer console if debuging is set to true
		window.page = page;
	}


	return page;
});