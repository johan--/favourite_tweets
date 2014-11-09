$(document).on 'ready page:load', (event)->
	$('#timepicker').timepicker({
		direction: 'bottom',
		pickDate: false,
		pickSeconds: false,
		minuteStep: 1,
	});
