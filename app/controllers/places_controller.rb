class PlacesController < ApplicationController
  def index
    @places = Place.all
  end

  def new
    @place = Place.new
  end

  def create
    @place = Place.new
    @place["place"] = params["place"]["place"]
    @place["description"] = params["place"]["description"]
    @place.save
    redirect_to "/places"
  end

  def show
    @post = Post.find_by({ "id" => params["id"] })
  end

end

