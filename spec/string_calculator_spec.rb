require_relative '../string_calculator'

RSpec.describe StringCalculator do
  describe '#add' do
    it 'returns 0 for an empty string' do
      calculator = StringCalculator.new
      expect(calculator.add("")).to eq(0)
    end

    it 'returns the number itself when a single number is passed' do
      calculator = StringCalculator.new
      expect(calculator.add("5")).to eq(5)
    end

    it 'returns the sum of two numbers separated by comma' do
      calculator = StringCalculator.new
      expect(calculator.add("2,3")).to eq(5)
    end

    it 'returns the sum of multiple comma-separated numbers' do
      calculator = StringCalculator.new
      expect(calculator.add("1,2,3,4,5")).to eq(15)
    end

    it 'returns the sum when newlines are used as delimiters along with commas' do
      calculator = StringCalculator.new
      expect(calculator.add("1\n2,3")).to eq(6)
    end

    it 'supports custom delimeters' do
      calculator = StringCalculator.new
      expect(calculator.add("//;\n1;2")).to eq(3)
    end
  end
end
