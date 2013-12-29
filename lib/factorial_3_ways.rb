require 'factorial_3_ways/version'

module Factorial3Ways
  def factorial(method = :recursive)
    return 'Can not calculate factorial of a negative number' if self < 0
    method = :recursive unless [:loop, :inject, :recursive].include? method

    case method
    when :loop
      loop_method
    when :inject
      inject_method
    when :recursive
      recursive_method
    end
  end

  private

  def inject_method
    (1..self).inject(:*)
  end

  def loop_method
    current_count = 1

    (1..self).each do |num|
      current_count *= num
    end

    current_count
  end

  def recursive_method
    if self <= 1
      1
    else
      self * (self - 1).factorial
    end
  end
end

class Fixnum
  include Factorial3Ways
end
