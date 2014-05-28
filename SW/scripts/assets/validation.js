define(["jquery", "assets/page", "validation"], function($, page) {

	var $form = $("#form");
	var $validationInputs = $form.find("[data-validate]");
	var settings = { errorPlacement: handleErrorPlacement, validClass: "valid" };

	// no cookie for ie7
	if ( !page.isIE7 ) {
		//well, setup validation rules based on data-validate attributes
		setupValidationRules();	

		// get the form, initiate validate plugin, get settings object off of it and assign it back to settings variable, for easy access later on
		settings = $form.validate( settings ).settings;

		// all submit buttons inside regions marked by data-form, should run through validation tests
		$("[data-form] input[type='submit']").click( validateAndSubmit );
	}


	// serialize form data is marked data-serialize="/url.aspx" where url.aspx is the page to go to with serialized data
	$("[data-serialize] input[type='submit']").click(function(e) {
		e.preventDefault();

		// hacky way to preventing form being submitted
		$form.submit(false);

		// get the form section to serialize
		var $formSection = $(this).closest("[data-serialize]");

		// get all fields in the section and serialize
		var serializedData = $formSection.find(":input").serialize();

		// get submission url from data-serialize attribute and append serialzied data as query
		var submissionUrl = $formSection.attr("data-serialize") + "?" + serializedData;

		// helper method from page.js that redirects current page to provided url
		page.redirectTo(submissionUrl);

		// not sure if this will ever be hit, it is supposed to prevent form submission
		return false;
	});


	// position errors
	function handleErrorPlacement( error, element ) {
		// error is the error label, add some classes to it
		error.addClass("animated error-ready");

		// element is the invalid element, so, add error element directly after invalid element
		element.after( error );

		// error-ready class is make the element invisible even though it is in the dom
		// remove error-ready class after 100ms to give it a transition effect
		// fadeInLeft is taken from animate.css http://daneden.github.io/animate.css/
		setTimeout( function() {
			error.removeClass( "error-ready" ).addClass( "fadeInLeft" );
		}, 100);
	}	

	// cute little helper to get data-form element, or form container of passed submitbutton element
	function getValidationContainer( submitButton ) {
		return $( submitButton ).closest( "[data-form]" );
	}

	// function to be called when submit button within data-form is clicked
	function validateAndSubmit( event ) {
		// event.currentTarget is the submit button because this function is attached to its click event
		// so, $formContainer is form container of current submit button
		var $formContainer = getValidationContainer( event.currentTarget );

		// get all form inputs inside this form section
		var $allInputs = $formContainer.find(":input");

		// setting up the isValid flag, will come in handy later on
		var isValid = true;		

		// iterate through all input elements within current form section
		$allInputs.each(function (i, item) {

			// check if current form element in the loop is invalid, oh by the way - .valid() method is from jquery validation plugin
			if ( !$( item ).valid() ) {

				// getting hold of settings object from validate plugin and checking weather invalid fields should be focussed
				if ( settings.focusInvalid && isValid ) {

					// oh well, focus this
					$( item ).focus();
				}

				// check if there is a function to be called when form element is invalid
				if ( settings.invalidHandler ) {
					// if so, pass current event and element to that function
					settings.invalidHandler( event, item );
				}

				// update isValid
				isValid = false;
			}
		});

		// if the isValid is false. ie, if any field is invalid within current form section
		if ( !isValid ) {
			// prevent default submission action
			event.preventDefault();
		} else {
			// or if all the fields were valid, chech if there is function to be called on form submisson
			if ( settings.submitHandler ) {
				// if so, call it
				settings.submitHandler();
				// prevent default submission event
				event.preventDefault();
			}
		}
	}

	// copy over all the validation rules from container element to form control inside it
	function setupValidationRules() {
		// iterate through all elements that have attribute data-validate
		$("[data-validate]").each(function(i, item) {
			// current element, or validation container as form element to be validated is inside this element
			var $validationContainer = $(item);

			// get form elemement that is inside current validation container
			var $validationInput = $validationContainer.find(":input");

			// get all the attributes on validation container
			var validationAttributes = $validationContainer.prop("attributes");

			// itarate through those attributes and apply those attributes to form element inside it
			$.each( validationAttributes, function( i, attribute ) {				
				// add current attribute to validation input element
				$validationInput.attr( attribute.name, attribute.value );
			});
		});
	}
});