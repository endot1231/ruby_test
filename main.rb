require './lib/converter/NumberConverter'
require './lib/rules/CyclicNumberRule'
require './lib/rules/BlankStringRule'

def main
  converter = NumberConverter.new([
    CyclicNumberRule.new(3,"Fizz"),
    CyclicNumberRule.new(5,"Buzz"),
    BlankStringRule.new
  ])
  puts converter.convert(1)
end

main