require 'rspec'

class Calculator
  def add(number_one, number_two)
    return number_one + number_two
  end

  def subtract(number_one, number_two)
    return number_one - number_two
  end

  def multiply(number_one, number_two)
    return number_one * number_two
  end

  def divide(dividend, divisor)
    return dividend / divisor
  end

  def square(number)
    return number * number
  end

  def power(number, exponent)
    return number ** exponent
  end
end

# calculator = Calculator.new

# puts "Testing the Calculator#add method"

# if calculator.add(1,3) == 4
#   puts "Pass"
# else
#   puts "Fail"
# end

RSpec.describe Calculator do
  describe '#add' do
    it 'should return the sum of two numbers' do
      calculator = Calculator.new
      expect(calculator.add(1,3)).to eq(4)
    end
  end

  describe '#subtract' do
    it 'should return the difference of 2 numbers' do
      calculator = Calculator.new
      expect(calculator.subtract(4,2)).to eq(2)
    end
  end

  describe '#multiply' do
    it 'should times the first number by the second number' do
      calculator = Calculator.new
      expect(calculator.multiply(5,5)).to eq(25)
    end
  end

  describe '#divide' do
    it 'should reduce the second number by the first number' do
      calculator = Calculator.new
      expect(calculator.divide(9,3)).to eq(3)
    end
  end

  describe '#square' do
    it 'should times the given number by itself' do
      calculator = Calculator.new
      expect(calculator.square(4)).to eq(16)
    end
  end

  describe '#power' do
    it 'should times the first number by the exponant' do
      calculator = Calculator.new
      expect(calculator.power(5,3)).to eq(125)
    end
  end
end
