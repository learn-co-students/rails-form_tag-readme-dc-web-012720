class PostsController < ApplicationController

  def index #this is get '/posts'
    @posts = Post.all
    #renders to index.html.erb file
  end

  def create #this is essentially POST '/posts'
    Post.create(title: params[:post][:title], description: params[:post][:description])
    redirect_to posts_path
  end
  
  def new #this is essentially get '/posts/new'
    
    #will render to new.html.erb file
  end
end
