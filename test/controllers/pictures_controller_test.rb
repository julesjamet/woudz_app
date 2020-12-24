require 'test_helper'

class PicturesControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get pictures_show_url
    assert_response :success
  end

end
