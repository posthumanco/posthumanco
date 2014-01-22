Posthuman.LogoutRoute = Ember.Route.extend

	activate: ->
		Posthuman.Auth.signOut().then => @transitionTo('login')