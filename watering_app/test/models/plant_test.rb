require "test_helper"

class PlantTest < ActiveSupport::TestCase
  test "validate correct moisture level" do
    assert_not_nil(Plant.new({name: "spider plant", moisture_level: 22, water_pump_status: "off", battery_level: 33 }))  
  end

  test "fail on negative moisture levels" do
    assert_raises(StandardError) do
      Plant.new({name: "spider plant", moisture_level: -1, water_pump_status: "off", battery_level: 33 })
    end  
  end

  test "fail on moisture level above 100" do
    assert_raises(StandardError) do
      Plant.new({name: "spider plant", moisture_level: 101, water_pump_status: "off", battery_level: 33 })
    end 
  end
end
