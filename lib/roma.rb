class Roman

  ROMAN_HASH = { 1000 => 'M', 900 => 'CM', 500 => 'D', 400 => 'CD', 100 => 'C', 90 => 'XC',
                    50 => 'L', 40 => 'XL', 10 => 'X', 9 => 'IX', 5 => 'V', 4 => 'IV',
                    1 => 'I' }

    def self.numeral_converter(value)
      ROMAN_HASH[value]
    end

    def self.numbers_less_than(number)
      array = []
      ROMAN_HASH.each_key {|key| array << key if key <= number } and return array
    end

    def self.convert_first(number)
      ROMAN_HASH[numbers_less_than(number).first]
    end

    def self.array_of_numerals(number)
      array = []
      until numbers_less_than(number).first.to_i == 0
        array << convert_first(number)
        number -= numbers_less_than(number).first
      end
      array
    end

    def self.convert(number)
      array_of_numerals(number).join
    end

end