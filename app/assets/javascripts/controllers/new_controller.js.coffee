Posthuman.NewController = Ember.ObjectController.extend
	templateName: "new"

	content: 
		title: @title
		image: @image
		body: @body
 
	actions: 

		createPost: ->
			@content.save()
