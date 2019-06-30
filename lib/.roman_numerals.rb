

def generate_array(unit,five_units,ten_units)
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

def romanise(number)
  answer = []
  answer << romanise_hundreds(how_many_hundreds(number))
  number = remainder_after_hundreds(number)
  answer << romanise_tens(how_many_tens(number))
  number = remainder_after_tens(number)
  answer << romanise_ones(number)
  answer.join.strip
end

def how_many_hundreds(number)
  number/100
end

def remainder_after_hundreds(number)
  number%100
end

def romanise_hundreds(number)
  hundreds_array = generate_array("C","D","M")
  hundreds_array[number]
end

def how_many_tens(number)
  number/10
end

def remainder_after_tens(number)
  number%10
end

def romanise_ones(number)
  ones_array = generate_array("I","V","X")
  ones_array[number]
end

def romanise_tens(number)
  tens_array = generate_array("X","L","C")
  tens_array[number]
end

p romanise(99)
