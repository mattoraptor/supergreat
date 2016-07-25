require 'test_helper'

class GameStateTest < ActiveSupport::TestCase
  test 'new game state has four cards in each players spot' do
    test_obj = GameState.new
    assert_equal(test_obj.hands.length, 4)
  end
end
