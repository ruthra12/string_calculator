class StringCalculator
  def add(numbers)
    return 0 if numbers.empty?
    
    delimiter = ","
    if numbers.start_with?("//")
      header, numbers = numbers.split("\n", 2)
      if header.start_with?("//[")
	delimiter = header.match(%r{//\[(.+)\]})[1]
      else
	delimiter = header[2]
      end
    else      
      numbers = numbers.gsub("\n", delimiter)
    end
    
    values = numbers.split(/#{Regexp.escape(delimiter)}/).map(&:to_i).reject { |n| n > 1000 }
     
    negatives = values.select { |n| n < 0 }
    unless negatives.empty?
      raise "negative numbers not allowed #{negatives.join(',')}"
    end

    values.sum
  end
end
