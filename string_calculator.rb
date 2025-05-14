class StringCalculator
  def add(numbers)
    return 0 if numbers.empty?
    
    delimiter = ","
    if numbers.start_with?("//")
      parts = numbers.split("\n", 2)
      delimiter = parts[0][2]
      values = parts[1]
    else
      values = numbers.gsub("\n", delimiter)
    end
    
    values.split(delimiter).map(&:to_i).sum
  end
end
