class Hamming
  def self.compute(strand_a, strand_b)
    raise ArgumentError if strand_a.chars.length != strand_b.chars.length
    strand_a.chars.zip(strand_b.chars).select{|a,b| a!=b}.count
  end
end

module BookKeeping
  VERSION = 3
end
