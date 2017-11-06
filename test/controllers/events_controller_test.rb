require 'test_helper'

class EventsControllerTest < ActionDispatch::IntegrationTest
  test "should get attendees" do
    get events_attendees_url
    assert_response :success
  end

end
