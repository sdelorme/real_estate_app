class Api::AddressController < ApplicationController
  def index
    @index = Home.all
    render 'index.json.jb'
  end

  def create
    @home = Home.new(
    description: params[:description],
    year_built: params[:year_built],
    square_feet: params[:square_feet],
    bedrooms: params[:bedrooms],
    bathrooms: params[:bathrooms],
    floors: params[:floors],
    availability: params[:availability],
    address: params[:address],
    price: params[:price]
    )
    @home.save
    render 'show.json.jb'
  end
end
