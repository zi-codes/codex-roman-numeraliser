# Calling instance.romanise(number)
# will generate any roman numeral up to 1 Million
# You can also edit the numerals to make up
# your own number system

class Romaniser
  NUMERALS = {
    1 => 'I',
    5 => 'V',
    10 => 'X',
    50 => 'L',
    100 => 'C',
    500 => 'D',
    1000 => 'M',
    5000 => '-V',
    10_000 => '-X',
    50_000 => '-L',
    100_000 => '-C',
    500_000 => '-D',
    1_000_000 => '-M'
  }.freeze

  def initialize
    @numeral_set = NUMERALS
  end

  def romanise(number)
    check(number)
    return '-M' if number == 1_000_000

    answer = []
    place_value = highest_place_value(number)
    while place_value >= 1
      answer << romanise_place_value(number, place_value)
      number = number % place_value
      place_value /= 10
    end
    answer.join.strip
  end

  def check(number)
    raise 'number must be an integer' unless number.is_a? Integer
    raise 'number must be above 0' unless number.positive?
    raise 'number must be no more than 1 million' unless number <= 1_000_000
  end

  def highest_place_value(number)
    l = number.to_s.length - 1
    1 * (10**l)
  end

  def romanise_place_value(number, place_value)
    number /= place_value
    array = generate_array(place_value)
    array[number]
  end

  def generate_array(place_value)
    unit = @numeral_set[place_value]
    five_units = @numeral_set[place_value * 5]
    ten_units = @numeral_set[place_value * 10]
    array_details(unit, five_units, ten_units)
  end

  def array_details(unit, five_units, ten_units)
    [
      ' ',
      unit,
      unit + unit,
      unit + unit + unit,
      unit + five_units,
      five_units,
      five_units + unit,
      five_units + unit + unit,
      five_units + unit + unit + unit,
      unit + ten_units
    ]
  end
end
