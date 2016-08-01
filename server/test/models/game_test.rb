require 'test_helper'

class GameTest < ActiveSupport::TestCase
  def setup
    @test_obj = Game.create
  end

  test 'new game state has four hands' do
    assert_equal 4, @test_obj.players.length
  end

  test 'hands have default player names' do
    assert_equal 'player1', @test_obj.players[1].name
  end
end
