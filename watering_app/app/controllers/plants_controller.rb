class PlantsController < ApplicationController
  def index
    @plants = Plant.all 
    render :json => @plants
  end

  def create
    @plant = Plant.new(plant_params)
  end

  def plant_params
    params.require(:plant).permit(:name, :moisture_level, :water_pump_status, :battery_level)
  end
end
