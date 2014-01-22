Posthuman.Author = DS.Model.extend
	
	first_name: DS.attr 'string'
	last_name: DS.attr 'string'
	email: DS.attr 'string'
	bio: DS.attr 'string'
	posts: DS.hasMany 'Posthuman.Post'

	full_name: (->
		"#{@get('first_name')} #{@get('last_name')}"
	).property('first_name', 'last_name')

	gravatar_url: (->
		gravatar = @get('email') || ""
		"http://www.gravatar.com/avatar/#{md5(gravatar)}?s=100"
	).property('email')