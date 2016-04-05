require 'test_helper'

class MockLastStatusTest < Minitest::Test
  def test_it_does_something_useful
    (0..127).each do |status|
      MockLastStatus.set(status)
      assert_equal status, $?.exitstatus
    end
  end
end
