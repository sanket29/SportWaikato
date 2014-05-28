define(["jquery", "assets/page", "chosen"], function($, page) {

	var config = {
		".chosen-select"           : {disable_search_threshold:10, width:"100%"},
		".chosen-select-deselect"  : {allow_single_deselect:true},
		".chosen-select-no-single" : {disable_search_threshold:10},
		".chosen-select-no-results": {no_results_text:'Oops, nothing found!'},
		".chosen-select-width"     : {width:"95%"}
	}

	for (var selector in config) {
		$(selector).chosen(config[selector]);
	}
});