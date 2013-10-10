ROMAN_HASH = { 1000 => 'M', 900 => 'CM', 500 => 'D', 400 => 'CD', 100 => 'C',
                  50 => 'L', 40 => 'XL', 10 => 'X', 9 => 'IX', 5 => 'V', 4 => 'IV',
                  1 => 'I' }

def subtract_value_from_number(number, value)
  number -= value
end

def value_less_than?(value, number)
  value <= number
end

def iterate_over_hash(number)
  number_converted_to_roman_numerals = ""
  for value, numeral in ROMAN_HASH 
    if value_less_than?(value, number)
      number_converted_to_roman_numerals << numeral
      number = subtract_value_from_number(number, value)
    end
  end
  number_converted_to_roman_numerals
end

def to_roman(number)
  iterate_over_hash(number)
end

puts "MUST TRY HARDER"

puts to_roman(9)
puts to_roman(11)

# describe 'Roman Numerals' do
	
# 	it 'tells me that 1000 is M' do
# 		expect(roman(1000)).to eq 'M'
# 	end
# 	it 'tells me that 900 is CM' do
# 		expect(roman(900)).to eq 'CM'
# 	end
# 	it 'tells me that 500 is D' do 
# 		expect(roman(500)).to eq 'D'
# 	end
# 	it 'tells me that 400 is CD' do
# 		expect(roman(400)).to eq 'CD'
# 	end

# 	it 'tells me that 15 is XV' do
# 		expect(roman(15)).to eq 'XV'
# 	end

	# context 'conversion of numbers' do
	# 	it 'gives me {1000, M} when given number 1000' do
 	# 	expect(roman(1000)).to eq 
 	# end
# end