require 'test_helper'

class ApplicationHelperTest < ActionView::TestCase

  test "full title helper" do
    assert_equal "YAMBA", full_title
    assert_equal "Help | YAMBA", full_title("Help")
  end

end