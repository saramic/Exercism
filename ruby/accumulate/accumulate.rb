# frozen_string_literal: true

# extend array class with accumulate
class Array
  def accumulate(&block)
    map{ block.call(_1) }
  end
end
