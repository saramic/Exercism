# Nth-prime exercism
class Prime
  class << self
    def nth(number)
      raise ArgumentError if number.zero?
      primes = []
      candidate = 2
      loop do
        primes << candidate if prime?(primes, candidate)
        return primes[number - 1] if primes.length >= number
        candidate += candidate.even? ? 1 : 2 
      end
    end

    def prime?(primes, candidate)
      !primes.find do |prime|
        return true if prime > Math.sqrt(candidate)
        (candidate % prime).zero?
      end
    end
  end
end

module BookKeeping
  VERSION = 1
end
