class DnaStrandPair

  def initialize(strand_1, strand_2)
    @strand_1 = strand_1
    @strand_2 = strand_2
  end

  def hamming_distance
    index = 0
    count = 0
    while index < @strand_2.length || index < @strand_1.length
      if @strand_1[index] == nil || @strand_2[index] == nil
        count = count + 0
      elsif @strand_1[index] != @strand_2[index]
        count = count + 1
      end
      index = index + 1
    end
    count
  end

end
