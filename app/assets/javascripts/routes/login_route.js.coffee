Posthuman.LoginRoute = Ember.Route.extend

	actions: 
		signedIn: -> @transitionTo('new')