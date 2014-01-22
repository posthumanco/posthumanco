Posthuman.NewRoute = Ember.Route.extend

	redirect: ->
		@transitionTo('login') unless Posthuman.Auth.get('auth_token')

	model: ->
		Posthuman.Post.createRecord()

	setupController: (controller, model) ->
		controller.set('content', model)