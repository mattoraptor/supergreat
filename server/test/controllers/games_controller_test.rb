require 'test_helper'

class GamesControllerTest < ActionDispatch::IntegrationTest
  test 'should get index' do
    get games_index_url
    assert_response :success
    assert_select 'title', /Playing a game/
  end
end
