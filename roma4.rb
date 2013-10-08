

def roman_numeral number

	roman_map = [[1000, 'M'], [900, 'CM'], [500, 'D'], [400, 'CD'], [100, 'C'],
             [90, 'XC'], [50, 'L'], [40, 'XL'], [10, 'X'], [9, 'IX'], [5, 'V'], 
             [4, 'IV'], [1, 'I']]

	# return 'M' if number == 1000
	# return 'CM' if number == 900
	# return 'CML' if number == 950
	# return roman_map[2]
	#number = number - 1000
	roman_string = ""
	for integer, numeral in roman_map
		 while integer <= number
		   roman_string << numeral
		   number-=integer
		end
	end
	roman_string
end

puts "please enter an integer between 1 and 3000:"
print ">  "
user_input = gets.chomp.to_i

puts roman_numeral(user_input)


# describe 'Roman' do
	
# 	# it 'includes (1000, M)' do
# 	# 	expect(roman_map).to include [1000, 'M']
# 	# end
# 	# it 'includes (900, CM)' do
# 	# 	expect(roman_map).to include [900, 'CM']
# 	# end
# 	# it 'includes (500, D)' do
# 	# 	expect(roman_map).to include [500, 'D']
# 	# end
# 	# it 'includes (400, CD)' do
# 	# 	expect(roman_map).to include [400, 'CD']
# 	# end
# 	# it 'includes (100, C)' do
# 	# 	expect(roman_map).to include [100, 'C']
# 	# end 
# 	# it 'includes (90, XC)' do
# 	# 	expect(roman_map).to include [90, 'XC']
# 	# end
# 	# it 'includes (50, L)' do
# 	# 	expect(roman_map).to include [50, 'L']
# 	# end
# 	# it 'includes (40, XL)' do
# 	# 	expect(roman_map).to include [40, 'XL']
# 	# end
# 	# it 'includes (10, X)' do
# 	# 	expect(roman_map).to include [10, 'X']
# 	# end
# 	# it 'includes (9, IX)' do
# 	# 	expect(roman_map).to include [9, 'IX']
# 	# end
# 	# it 'includes (5, V)' do
# 	# 	expect(roman_map).to include [5, 'V']
# 	# end
# 	# it 'includes (4, IV)' do
# 	# 	expect(roman_map).to include [4, 'IV']
# 	# end
# 	# it 'includes (1, I)' do
# 	# 	expect(roman_map).to include [1, 'I']
# 	# end

# 	context 'Converting from numbers to numerals' do
#   	  # it 'returns M when given 1000' do
#   	  # 	expect(roman_numeral(1000)).to eq 'M'
#   	  # end
#   	  # it 'returns CM when given 900' do
#   	  # 	expect(roman_numeral(900)).to eq 'CM'
#   	  # end
#   	  # it 'returns CML when given 950' do
#   	  # 	expect(roman_numeral(950)).to eq 'CML'
#   	  # end
#   	  # it 'takes 1000 away from 1120 to leave us with 120' do
#   	  # 	expect(roman_numeral(1120)).to eq 120
#   	  # end
#   	  # it 'takes 1000 and returns M and a 1000' do
#   	  # 	expect(roman_numeral(500)).to eq [500, 'D']
#   	  # end
#   	  it 'takes 1100 and returns MC' do
#   	  	expect(roman_numeral(1100)).to eq 'MC'
#   	  end
#   	end
# end

