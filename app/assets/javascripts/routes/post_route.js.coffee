Posthuman.PostRoute = Ember.Route.extend
	model: (params) ->
		Posthuman.Post.find(params.post_id)