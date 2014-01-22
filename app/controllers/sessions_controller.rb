class SessionsController < Devise::SessionsController

	def create
		unless (params[:email] && params[:password]) || (params[:remember_token])
			return invalid_params("Wrong credentials fool.")
		end

		if params[:remember_token]
			token = params[:remember_token]
			id, identifier = token.split('-')
			author = Author.serialize_from_cookie(id, identifier)
		else
			res = Author.find_for_database_authentication(email: params[:email])
			if res && res.valid_password?(params[:password])
				author = res
			end
		end

		return invalid_params("Wrong credentials fool.") unless author

		author.ensure_authentication_token!

		data = {
			auth_token: author.authentication_token,
			current_author_id: author.id
		}
		if params[:remember] == 'true'
			author.remember_me!
			cookie = Author.serialize_into_cookie(author)
			data[:remember_token] = "#{cookie.first.first}-#{cookie.last}"
		end

		render json: data, status: 201
	end

	protected

	def invalid_params(errorMessage)
		warden.custom_failure!
		render json: {errorMessage: errorMessage}, status: 403
	end

end