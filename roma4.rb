ROMAN_HASH = { 1000 => 'M', 900 => 'CM', 500 => 'D', 400 => 'CD', 100 => 'C',
                  50 => 'L', 40 => 'XL', 10 => 'X', 9 => 'IX', 5 => 'V', 4 => 'IV',
                  1 => 'I' }

def to_roman(number)
    
    roman_string = ""
    for value, numeral in ROMAN_HASH
    	while value<=number
    		roman_string<<numeral 
    		number = number - value 
    	end
    end
    roman_string
end



puts to_roman(2999)

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