class Sieve
  def initialize(up_to)
    @up_to = up_to
  end

  def primes
    (2..@up_to).inject([]) do |primes, number|
      primes << number if primes.find_all{|prime| number % prime == 0}.length == 0
      primes
    end
  end
end

module BookKeeping
  VERSION = 1
end
