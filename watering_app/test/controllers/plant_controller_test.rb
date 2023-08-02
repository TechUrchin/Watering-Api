require "test_helper"

class PlantControllerTest < ActionDispatch::IntegrationTest
  test "successfully saves correct json message" do
    post "/plants",
      params: {plant: {name: "spider plant", moisture_level: 22, water_pump_status: "off", battery_level: 33 }}
    assert_response :success
  end
end
