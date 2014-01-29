require 'rspec'
require_relative '../lib/roma'

describe Roman do
  
  it 'converts the number 1 to I' do 
    expect(Roman.numeral_converter(1)).to eq "I"
  end

  it 'converts the number 4 to IV' do 
    expect(Roman.numeral_converter(4)).to eq "IV"
  end

  it 'is able to take the number 6 and return an an array of numbers less than itself' do 
    expect(Roman.numbers_less_than(6)).to eq [5,4,1]
  end

  it 'is able to take the array of numbers generated, and convert the first number into a numeral' do 
    expect(Roman.convert_first(6)).to eq 'V'
  end

  it 'is able to convert the number 13 into an array of numerals' do 
    expect(Roman.array_of_numerals(13)).to eq ["X", "I", "I", "I"]
  end

  it 'is able to convert the number to 13 into its appropriate numerals' do 
    expect(Roman.convert(13)).to eq 'XIII'
  end

  it 'is able to to convert the number 1990 into MCMXC' do 
    expect(Roman.convert(1990)).to eq 'MCMXC'
  end



end