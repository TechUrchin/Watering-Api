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

  test "fail on battery level below 0" do
    plant = Plant.new({name: "spider plant", moisture_level: 53, water_pump_status: "off", battery_level: -55 })
    assert_not plant.valid?
  end

  test "fail on battery level above 100" do
    plant = Plant.new({name: "spider plant", moisture_level: 11, water_pump_status: "off", battery_level: 101 })
    assert_not plant.valid?
  end
end
