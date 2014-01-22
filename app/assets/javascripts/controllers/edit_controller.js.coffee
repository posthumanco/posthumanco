Posthuman.EditController = Ember.ObjectController.extend
	templateName: "edit"

	content: 
		title: @title
		image: @image
		body: @body

	actions: 

		updatePost: ->
			@content.save()