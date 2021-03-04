class Api::AddressController < ApplicationController
  def index
    @index = Home.all
    render 'index.json.jb'
  end

  def create
    results = Geocoder.search(params[:address])
    @home = Home.new(
    description: params[:description],
    year_built: params[:year_built],
    square_feet: params[:square_feet],
    bedrooms: params[:bedrooms],
    bathrooms: params[:bathrooms],
    floors: params[:floors],
    availability: params[:availability],
    address: params[:address],
    price: params[:price],
    latitude: results.first.coordinates[0],
    longitude: results.first.coordinates[1]
    )
    @home.save
    render 'show.json.jb'
  end
end
