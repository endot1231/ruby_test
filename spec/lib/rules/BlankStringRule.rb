require './lib/rules/BlankStringRule'

RSpec.describe 'BlankStringRule' do
  let(:rule) { BlankStringRule.new }

  describe '#match?' do
    context '空文字の場合' do
      it 'returns true' do
        expect(rule.match?("", 5)).to be true
      end
    end

    context '空文字以外の場合' do
      it 'returns false' do
        expect(rule.match?("Fizz", 5)).to be false
      end
    end
  end

  describe '#apply' do
    it '入力された文字をそのまま返却' do
      expect(rule.apply("", 5)).to eq('5')
    end
  end
end
