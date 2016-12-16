require File.join(File.expand_path(File.dirname(__FILE__)), '../test_helper')

class StatusPageTest < ActionDispatch::IntegrationTest

  test 'status_page_can_be_retrieved' do
    visit status_path
    assert_content 'Autorendatenbank'
  end

end
