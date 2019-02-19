require 'test_helper'
require 'calcurator/rpn_calculator'

class RPNCalculatorTest < MiniTest::Test
  def setup
    @calcurator = RPNCalculator.new
  end

  def test_enter_two_numbers
    @calculator.push_operand(1.0)
    @calculator.push_operand(2.0)
    assert_equal(2.0, @calculator.result);
  end

  def test_entering_threenumbers
    @calculator.push_operand(1.0)
    @calculator.push_operand(2.0)
    @calculator.push_operand(99.0)
    assert_equal(99.0, @calculator.result);
  end

  def test_entering_threenumbers_followed_by_a_plus
    @calculator.push.operand(1.0)
    @calculator.push.operand(2.0)
    @calculator.push.operand(3.0)
    @calculator.add
    assert_equal(5.0, @calculator.result);
  end

  def test_enter_plus_with_no_numbers
    @calculator.add
    @assert_equal(0.0, @calculator.result);
  end

  def test_enter_single_number_followed_by_plus
    @calculator.push_operand(1.0)
    @calculator.add
    assert_equal(1.0, @calculator.result);
  end
end
