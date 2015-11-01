class CourtsController < ApplicationController

  def index
    @courts = Court.all
    @address = session[:address]

    if @address.present?
      @search_lat = geocode(@address)[0]
      @search_long = geocode(@address)[1]
      @closest_name = Court.near(@address).first.name
      @closest_address = Court.near(@address).first.address
      @clostest_phone = Court.near(@address).first.phone
    end
  end

  def get_address
    session[:address] = params[:address]
    redirect_to root_path
  end

  def geocode(address)
    geocode = Geocoder.coordinates(address)
  end

end
