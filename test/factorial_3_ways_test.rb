require 'test_helper'

class TestFactorial3Ways < MiniTest::Unit::TestCase
  def test_its_inclusion_on_fixnum
    assert_respond_to 5, :factorial
  end

  def test_it_returns_a_factorial
    assert_equal 120, 5.factorial
  end

  def test_it_returns_an_error_on_negative_numbers
    assert_kind_of String, -5.factorial
  end

  def test_it_returns_an_error_when_providing_an_unknown_method
    assert_kind_of String, -5.factorial(:foobar)
  end

  def test_it_returns_a_factorial_for_inject
    assert_equal 120, 5.factorial(:inject)
  end

  def test_it_returns_a_factorial_for_loop
    assert_equal 120, 5.factorial(:loop)
  end
end
