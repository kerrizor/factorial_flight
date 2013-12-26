require "factorial_3_ways/version"

module Factorial3Ways
  def factorial
    true
  end
end

class Fixnum
  include Factorial3Ways
end