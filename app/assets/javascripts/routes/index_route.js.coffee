Posthuman.IndexRoute = Ember.Route.extend
	model: ->
		Posthuman.Post.find()