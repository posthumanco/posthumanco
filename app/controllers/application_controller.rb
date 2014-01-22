class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :null_session

  protected

  def auth_only
  	unless author_signed_in?
  		render json: {}, status: 401
  	end
  end

end
