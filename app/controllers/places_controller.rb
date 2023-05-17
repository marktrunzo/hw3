class PlacesController < ApplicationController
  def index
    @place = Place.all
  end

  def new
    @place = Place.new
  end

  def create
    @place = Place.new
    @place["author"] = params["place"]["author"]
    @place["body"] = params["place"]["body"]
    @place["imaage"] = params["place"]["imaage"]
    @place.save
    redirect_to "/places"
  end

  def show
    @place = Place.all
  end
  
end

