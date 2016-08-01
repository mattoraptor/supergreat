require 'test_helper'

class PlayerTest < ActiveSupport::TestCase
  def setup
    @player = Player.create(name: 'hello')
  end

  test 'initializer sets name' do
    assert_equal 'hello', @player.name
  end

  test 'as_json only returns name' do
    expected = { 'name' => 'hello' }
    assert_equal expected, @player.as_json
  end

  test 'new player generates 4 playable cards' do
    assert_equal 4, @player.cards.length
  end

  test 'card ids are generated' do
    assert_equal 'hellocard2', @player.cards[2].name
  end
end
