require 'test_helper'

class HandTest < ActiveSupport::TestCase
  def setup
    @player = 'player3'
    @test_obj = Hand.new(@player)
  end

  test 'new hand generates 4 playable cards' do
    assert_equal(@test_obj.cards.length, 4)
  end

  test 'card ids are generated' do
    assert_equal(@test_obj.cards[2].name, "#{@player}card2")
  end
end
