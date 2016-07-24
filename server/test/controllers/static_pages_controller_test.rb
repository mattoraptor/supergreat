require 'test_helper'

# static page controller tests
class StaticPagesControllerTest < ActionDispatch::IntegrationTest
  def setup
    @base_title = 'Project Super Great!'
  end

  test 'should get home' do
    get static_pages_home_url
    assert_response :success
    assert_select 'title', "Home | #{@base_title}"
  end

  test 'should get help' do
    get static_pages_help_url
    assert_response :success
    assert_select 'title', "Help | #{@base_title}"
  end
end
