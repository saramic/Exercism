# frozen_string_literal: true

class SimpleCalculator
  class UnsupportedOperation < StandardError; end
  ALLOWED_OPERATIONS = ['+', '/', '*'].freeze

  def self.calculate(first_operand, second_operand, operation)
    raise ArgumentError unless are_ints(first_operand, second_operand)
    raise UnsupportedOperation unless ALLOWED_OPERATIONS.include?(operation)
    return 'Division by zero is not allowed.' if operation == '/' && second_operand.zero?

    format(
      '%<first>s %<operation>s %<second>s = %<answer>s',
      first: first_operand,
      operation: operation,
      second: second_operand,
      answer: first_operand.send(operation, second_operand)
    )
  end

  def self.are_ints(*args) = args.map(&:class).uniq == [Integer]
end
