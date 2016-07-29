require 'test_helper'

class PlayableCardTest < ActiveSupport::TestCase
  test 'initializer sets name' do
    card = PlayableCard.create(name: 'hello')
    assert_equal(card.name, 'hello')
  end

  test 'as_json only returns name' do
    card = PlayableCard.create(name: 'hello')
    expected = { 'name' => 'hello' }
    assert_equal expected, card.as_json
  end
end
