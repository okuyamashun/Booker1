class PostsController < ApplicationController
	def index
		@posts = Post.all
		@post = Post.new
	end

	def show
		@post = Post.find(params[:id])
	end


	def create
		@post = Post.new(post_params)
	    if @post.save
	      flash[:notice] = "Book was successfully created."
	      redirect_to post_path(@post.id)
	    else
	      render :new

	    end

	end

	def edit
		@post = Post.find(params[:id])
	end

	def update
		post = Post.find(params[:id])
		if post.update(post_params)
		flash[:notice] = "Book was successfully created."
		redirect_to post_path(post.id)
		else
	      render :new

	    end
	end

	def destroy
		post = Post.find(params[:id])
		post.destroy
		redirect_to posts_path
	end

	private
	def post_params
		params.require(:post).permit(:title, :body)
	end
end


