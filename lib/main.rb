class Main
  def call(number)
    return "M" if number == 1000
    @number = number
    @roman_number = ""
    return_roman_part_of(900, "CM")
    return_roman_part_of(500, "D")
    return_roman_part_of(400, "CD")
    return_roman_part_of(100, "C")
    return_roman_part_of(90, "XC")
    return_roman_part_of(50, "L")
    return_roman_part_of(40, "XL")
    return_roman_part_of(10, "X")
    return_roman_part_of(9, "IX")
    return_roman_part_of(5, "V")
    return_roman_part_of(4, "IV")
    set_unitary_parts
    return @roman_number 
  end

  def converte(numbers)
    numbers.map { | n | call(n)}
  end


  private


  def return_roman_part_of(number, roman_number)
    inteiro = @number/number
    resto = @number%number
    inteiro.times{@roman_number += roman_number}
    @number=resto
  end


  def set_unitary_parts
    case @number
    when 1 then @roman_number += "I"
    when 2 then @roman_number += "II"
    when 3 then @roman_number += "III"
    when 6 then @roman_number += "VI"
    when 7 then @roman_number += "VII"
    when 8 then @roman_number += "VIII"
    end
  end

end