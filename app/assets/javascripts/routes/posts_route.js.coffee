Posthuman.PostsRoute = Ember.Route.extend
	model: ->
		Posthuman.Post.find()