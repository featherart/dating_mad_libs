$(function () {
	$("#new_story").on("submit", function(event) {
		event.preventDefault();

		var form = $('#new_story');
		$.post(form.attr('action'), form.serialize(), function (data) {
			$("#stories").prepend(data);
		});
		
		$.get('stories/select_random_template', function (data) {
			form.replaceWith(data);
		})
	});
});