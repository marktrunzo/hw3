class PlacesController < ApplicationController
  def index
    @places = Place.all
  end

  def new
    @place = Place.new
  end

  def create
    @place = Place.new
    @place["name"] = params["place"]["name"]
    @place.save
  end

  def show
    @place = Place.find_by(params["id"])
    @post = Post.where({ "place_id" => @place["id"] })
  end
  

end

