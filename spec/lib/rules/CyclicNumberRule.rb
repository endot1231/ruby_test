require './lib/rules/CyclicNumberRule'

RSpec.describe 'CyclicNumberRule' do
  let(:rule) { CyclicNumberRule.new(3, 'Fizz') }

  describe '#match?' do
    context '倍数ではない場合' do
      it 'returns true' do
        expect(rule.match?(0, 3)).to be true
        expect(rule.match?(0, 6)).to be true
        expect(rule.match?(0, 9)).to be true
        expect(rule.match?(0, 12)).to be true
      end
    end

    context '倍数の場合' do
      it 'returns false' do
        expect(rule.match?(0, 1)).to be false
        expect(rule.match?(0, 2)).to be false
        expect(rule.match?(0, 7)).to be false
      end
    end
  end

  describe '#apply' do
    it '空文字に結合されて返却される' do
      expect(rule.apply('', 9)).to eq('Fizz') 
    end

    it '入力した引数に結合されて返却される' do
      expect(rule.apply('Buzz', 9)).to eq('BuzzFizz')
    end
  end
end
