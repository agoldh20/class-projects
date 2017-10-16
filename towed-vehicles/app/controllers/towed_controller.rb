class TowedController < ApplicationController
  def index
    @towed_vehicles = Unirest.get('https://data.cityofchicago.org/resource/rp42-fxjt.json').body
  end

  def home
    
  end
end
