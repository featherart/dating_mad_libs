$(function () {
	// add a new story and refresh form so it loads a new template
	$("#new_story").on("submit", function(event) {
		event.preventDefault();

		var form = $('#new_story');
		// serialize formats data
		$.post(form.attr('action'), form.serialize(), function (data) {
			$("#stories").prepend(data);
		});
		
		$.get('stories/select_random_template', function (data) {
			form.replaceWith(data);
		})
	});
	// delete a story when clicked and add a new story to the page
	$('.delete_story').click(function (ev) {
		var target = $(ev.target),
			url = target.attr('href');
		ev.preventDefault();
		ev.stopPropagation();

		$.ajax({
		    url: url,
		    type: 'DELETE',
		    success: function(result) {
				target.parent('li').remove();
		    }
		});
	})
});