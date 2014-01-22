class Api::V1::PostsController < ApplicationController
	respond_to :json

	def index
		respond_with Post.all
	end

	def show
		respond_with Post.find(params[:id])
	end

	def create
		post = Post.create(permitted_params)
		post.author_id = current_author.id
		post.save
		render json: post, status: :created
	end

	def update
		post = Post.find(params[:id])
		post.update_attributes(permitted_params)
		render json: post
	end

	private

	def permitted_params
		params.require(:post).permit(:title, :image, :body, :author_id)
	end
end