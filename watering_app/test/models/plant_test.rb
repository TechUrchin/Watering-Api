require "test_helper"

class PlantTest < ActiveSupport::TestCase
  test "valid plant" do
    plant = Plant.new(name: "spider plant", moisture_level: 10, water_pump_status: false, battery_level: 33)
    assert plant.valid?
  end

  test "fail on negative moisture levels" do
    plant = Plant.new({name: "spider plant", moisture_level: -1, water_pump_status: "off", battery_level: 33 })
    assert_not plant.valid?
  end

  test "fail on moisture level above 100" do
    plant = Plant.new({name: "spider plant", moisture_level: 101, water_pump_status: "off", battery_level: 33 })
    assert_not plant.valid?
  end
end
