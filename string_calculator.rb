class StringCalculator
  def add(numbers)
    return 0 if numbers.empty?
    values = numbers.split(",")
    values[0].to_i + values[1].to_i
  end
end
