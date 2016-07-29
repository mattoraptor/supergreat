require 'test_helper'

class PlayerTest < ActiveSupport::TestCase
  def setup
    @player = Player.create(name: 'hello')
  end

  test 'initializer sets name' do
    assert_equal(@player.name, 'hello')
  end

  test 'as_json only returns name' do
    expected = { 'name' => 'hello' }
    assert_equal expected, @player.as_json
  end
end
