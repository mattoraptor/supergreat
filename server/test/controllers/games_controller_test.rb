require 'test_helper'

class GamesControllerTest < ActionDispatch::IntegrationTest
  test 'should get index' do
    get games_index_url
    assert_response :success
    assert_select 'title', /Playing a game/
  end

  test 'state does not respond to html' do
    assert_raises(ActionController::UnknownFormat) do
      get games_state_url, params: { format: :html }
    end
  end

  test 'should get state' do
    get games_state_url, params: { format: :json }
    assert_response :success
  end
end
