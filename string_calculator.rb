class StringCalculator
  def add(numbers)
    return 0 if numbers.empty?
    values = numbers.gsub("\n", ",").split(",")
    values.map(&:to_i).sum
  end
end
