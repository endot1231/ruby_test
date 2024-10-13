class NumberConverter
  def initialize(rules)
    @rules = rules
  end

  def convert(num)
    carry = ""
    @rules.each do |rule|
      next unless rule.match?(carry,num)
      carry = rule.apply(carry,num)
    end
    carry
  end
end