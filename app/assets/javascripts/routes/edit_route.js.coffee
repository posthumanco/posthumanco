Posthuman.EditRoute = Ember.Route.extend
	redirect: ->
		@transitionTo('login') unless Posthuman.Auth.get('auth_token')

	model: (params) ->
		Posthuman.Post.find(params.post_id)

	setupController: (controller, model) ->
		controller.set('content', model)