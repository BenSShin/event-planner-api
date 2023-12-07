require "test_helper"

class TripsControllerTest < ActionDispatch::IntegrationTest
  test "index" do
    get "/trips.json"
    assert_response 200

    data = JSON.parse(response.body)
    assert_equal Trip.count, data.length
  end

  test "show" do
    get "/trips/#{Trip.first.id}.json"
    assert_response 200

    data = JSON.parse(response.body)
    assert_equal ["id", "user_id", "title", "image_url", "start_time", "end_time", "created_at", "updated_at"], data.keys
  end

  test "create" do
    assert_difference "Trip.count", 1 do
      post "/trips.json", params: { user_id: 1,
                                    title: "test",
                                    image_url: "test",
                                    start_time: "01/01/24 02:00",
                                    end_time: "01/02/24 03:00" }
      assert_response 200
    end
  end
end
