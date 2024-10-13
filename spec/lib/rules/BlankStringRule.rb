class BlankStringRule  
  def match?(carry,n)
    carry == ""
  end

  def apply(carry,n)
    n.to_s
  end    
end