# frozen_string_literal: true

class ArmstrongNumbers
  def self.include?(number)
    number.digits.sum do |digit|
      digit.pow number.digits.length
    end == number
  end
end
