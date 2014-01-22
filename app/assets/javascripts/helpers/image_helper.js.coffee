Ember.Handlebars.registerBoundHelper "imgtag", (input) ->
	new Ember.Handlebars.SafeString("<img src='#{input}' />")