require 'test_helper'

class GameStateTest < ActiveSupport::TestCase
  def setup
    @test_obj = GameState.new
  end

  test 'new game state has four hands' do
    assert_equal(@test_obj.hands.length, 4)
  end
end
