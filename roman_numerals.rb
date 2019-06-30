class Romaniser

  def initialize
    @numeral_set = {
      1 => "I",
      5 => "V",
      10 => "X",
      50 => "L",
      100 => "C",
      500 => "D",
      1000 => "M",
      5000 => "-V",
      10_000 => "-X",
      50_000 => "-L",
      100_000 => "-C",
      500_000 => "-D",
      1_000_000 => "-M"
    }
  end

  def romanise(number)
    answer = []
    pv = highest_place_value(number)
    while pv >= 1 do
      answer << romanise_pv(number, pv)
      number = number % pv
      pv = pv/10
    end
    answer.join.strip
  end

  def highest_place_value(number)
    l = number.to_s.length - 1
    1*(10**l)
  end

  def romanise_pv(number, pv)
    number = number/pv
    array = generate_array(pv)
    array[number]
  end

  def generate_array(pv)
    unit = @numeral_set[pv]
    five_units = @numeral_set[pv*5]
    ten_units = @numeral_set[pv*10]
    array_details(unit,five_units,ten_units)
  end

  def array_details(unit,five_units,ten_units)
    array = [
      " ",
      unit,
      unit + unit,
      unit + unit + unit,
      unit + five_units,
      five_units,
      five_units + unit,
      five_units + unit + unit,
      five_units + unit + unit + unit,
      unit + ten_units,
    ]
  end
end

a = Romaniser.new

p a.romanise(999_999)
