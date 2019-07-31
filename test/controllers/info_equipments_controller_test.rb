require 'test_helper'

class InfoEquipmentsControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get info_equipments_show_url
    assert_response :success
  end

end
