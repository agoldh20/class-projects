require 'rspec'

class ChangeMachine

  def change(cents)
    output_array = []
    
    if cents < 5
      pennies = cents / 1
      pennies.times do 
         output_array << 1
      end
    elsif cents < 10
      nickels = cents / 5
      pennies = (cents - 5 * nickels)
      nickels.times do
        output_array << 5
      end
      pennies.times do 
         output_array << 1
      end
    elsif cents < 25
      dimes = cents / 10
      nickels = (cents - 10 * dimes) / 5
      pennies = (cents - 10 * dimes - 5 * nickels)
      dimes.times do 
        output_array << 10
      end
      nickels.times do
        output_array << 5
      end
      pennies.times do 
         output_array << 1
      end
    elsif cents >= 25
      quarters = cents / 25
      dimes = (cents  - 25 * quarters) / 10
      nickels = (cents - 25 * quarters - 10 * dimes) / 5
      pennies = (cents - 25 * quarters - 10 * dimes - 5 * nickels)
      quarters.times do
        output_array << 25
      end
      dimes.times do 
        output_array << 10
      end
      nickels.times do
        output_array << 5
      end
      pennies.times do 
         output_array << 1
      end
    end
      
    return output_array

  end
end

RSpec.describe ChangeMachine do
  describe '#change' do
    let(:change_machine) { ChangeMachine.new}

    it 'should return [1] if given 1' do
      expect(change_machine.change(1)).to eq([1])
    end

    it 'should return [1, 1] if given 2' do
      expect(change_machine.change(2)).to eq([1, 1])
    end

    it 'should return [1, 1, 1] if given 3' do
      expect(change_machine.change(3)).to eq([1, 1, 1])
    end

      it 'should return [1, 1, 1, 1] if given 4' do
      expect(change_machine.change(4)).to eq([1, 1, 1, 1])
    end

      it 'should return [5] if given 5' do
      expect(change_machine.change(5)).to eq([5])
    end

     it 'should return [5, 1] if given 6' do
          expect(change_machine.change(6)).to eq([5, 1])
        end
    it 'should return [10] if given 10' do
      expect(change_machine.change(10)).to eq([10])
    end

    it 'should return [10,1] if given 11' do
      expect(change_machine.change(11)).to eq([10,1])
    end
    it 'should return [25, 25, 25, 25, 10, 5, 1, 1, 1, 1] if given 119' do
      expect(change_machine.change(119)).to eq([25, 25, 25, 25, 10, 5, 1, 1, 1, 1])
    end
  end
end