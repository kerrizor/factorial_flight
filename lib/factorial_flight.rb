require 'factorial_flight/version'

module FactorialFlight
  def factorial(method = :inject)
    return 'Can not calculate factorial of a negative number' if self < 0

    case method
    when :gamma
      gamma_method
    when :loop
      loop_method
    when :recursive
      recursive_method
    else
      inject_method
    end
  end

  private
  def gamma_method
    Math::gamma(self + 1).to_i
  end

  def inject_method
    return 1 if self < 1
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
  include FactorialFlight
end
