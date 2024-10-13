class CyclicNumberRule
  def initialize(base,replacement)
    @base = base
    @replacement = replacement
  end
  
  def match?(carry,n)
    n % @base == 0
  end

  def apply(carry,n)
    return carry += @replacement 
  end    
end