class Api::AddressController < ApplicationController
  def index
    @homes = Home.first
  end
end
