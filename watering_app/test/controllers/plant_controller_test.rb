require "test_helper"

class PlantControllerTest < ActionDispatch::IntegrationTest
  test "successfully posts json message and returns OK response" do
    post "/plants",
      params: {plant: {name: "spider plant", moisture_level: 22, water_pump_status: "off", battery_level: 33 }}
    assert_response 200
  end
end
