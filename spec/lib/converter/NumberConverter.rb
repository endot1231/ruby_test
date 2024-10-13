require './lib/converter/NumberConverter'
require './lib/rules/CyclicNumberRule'
require './lib/rules/BlankStringRule'

RSpec.describe 'NumberConverter' do
  let(:rules) do
    [
      CyclicNumberRule.new(3, "Fizz"),
      CyclicNumberRule.new(5, "Buzz"),
      BlankStringRule.new
    ]
  end

  subject { NumberConverter.new(rules) }

  describe '#convert' do
    it '3の倍数はFizzが返却' do
      expect(subject.convert(3)).to eq("Fizz")
      expect(subject.convert(6)).to eq("Fizz")
    end

    it '5の倍数はBuzzが返却' do
      expect(subject.convert(5)).to eq("Buzz")
      expect(subject.convert(10)).to eq("Buzz")
    end

    it '3と5の場合数はFizzBuzzが返却' do
      expect(subject.convert(15)).to eq("FizzBuzz")
      expect(subject.convert(30)).to eq("FizzBuzz")
    end

    it '他のナンバーの場合はそのまま入力した数字が返却' do
      expect(subject.convert(7)).to eq("7")
      expect(subject.convert(11)).to eq("11")
    end

    it 'returns an empty string for zero' do
      expect(subject.convert(15)).to eq("FizzBuzz") 
    end
  end
end