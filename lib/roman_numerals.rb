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
  hundreds_array = [" ","C","CC","CCC","CD","D","DC","DCC","DCCC","CM"]
  hundreds_array[number]
end

def how_many_tens(number)
  number/10
end

def remainder_after_tens(number)
  number%10
end

def romanise_ones(number)
  ones_array = [" ","I","II","III","IV","V","VI","VII","VIII","IX"]
  ones_array[number]
end

def romanise_tens(number)
  tens_array = [" ","X","XX","XXX","XL","L","LX","LXX","LXXX","XC"]
  tens_array[number]
end
