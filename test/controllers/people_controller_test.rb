require 'test_helper'

class PeopleControllerTest < ActionDispatch::IntegrationTest
  test "should get for_event" do
    get people_for_event_url
    assert_response :success
  end

end
