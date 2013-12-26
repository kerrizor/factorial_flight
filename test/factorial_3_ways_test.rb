require 'test_helper'

class TestFactorial3Ways < MiniTest::Unit::TestCase
  def setup

  end

  def test_its_inclusion_on_fixnum
    assert_respond_to 5, :factorial
  end

end