Posthuman.AuthorsRoute = Ember.Route.extend
	model: ->
		Posthuman.Author.find()