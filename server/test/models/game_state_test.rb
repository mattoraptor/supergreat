require 'test_helper'

class GameStateTest < ActiveSupport::TestCase
  def setup
    @test_obj = GameState.new
  end

  test 'new game state has four hands' do
    assert_equal(@test_obj.hands.length, 4)
  end

  test 'new game state has four empty play slots' do
    assert_equal(@test_obj.play_slots.length, 4)
  end

  test 'hands have four cards in them' do
    @test_obj.hands.each do |hand|
      assert_equal(hand.cards.length, 4)
    end
  end

  test 'hands have default player names' do
    assert_equal(@test_obj.hands[1].player_name, 'player1')
  end
end
