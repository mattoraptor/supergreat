require 'test_helper'

class GameCreatorTest < ActiveSupport::TestCase
  def setup
    @test_obj = GameCreator.last
  end

  test 'new game state has four players' do
    assert_equal 4, @test_obj.players.length
  end

  test 'hands have four cards in them' do
    @test_obj.players.each do |hand|
      assert_equal 4, hand.cards.length
    end
  end

  test 'hands have default player names' do
    assert_equal 'player1', @test_obj.players[1].name
  end
end
