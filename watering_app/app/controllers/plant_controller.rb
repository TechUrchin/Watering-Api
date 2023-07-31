class PlantController < ApplicationController
  def get_plant
    plant = {
      "name" => "Spider Plant",
      "moisture_level" => 65,
      "water_pump_status" => "off",
      "battery_level" => 85
    }
    render :json => plant
  end

  def create
    request = params['plant']
    render status: 200, json: request.to_json
  end 
end
