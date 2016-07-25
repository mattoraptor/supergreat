require 'test_helper'

class HandTest < ActiveSupport::TestCase
  def setup
    @test_obj = Hand.new
  end

  test 'new hand generates 4 playable cards' do
    assert_equal(@test_obj.cards.length, 4)
  end
end
