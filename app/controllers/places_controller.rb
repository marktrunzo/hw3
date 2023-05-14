class PlacesController < ApplicationController
  def index
    @places = Place.all
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new
    @post["author"] = params["post"]["author"]
    @post["body"] = params["post"]["body"]
    @post["imaage"] = params["post"]["imaage"]
    @post.save
    redirect_to "/posts"
  end
end
