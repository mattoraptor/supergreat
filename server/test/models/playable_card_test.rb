require 'test_helper'

class PlayableCardTest < ActiveSupport::TestCase
  def setup
    @card = PlayableCard.create(name: 'hello')
  end

  test 'initializer sets name' do
    assert_equal(@card.name, 'hello')
  end

  test 'as_json only returns name' do
    expected = { 'name' => 'hello' }
    assert_equal expected, @card.as_json
  end
end
