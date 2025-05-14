class StringCalculator
  def add(numbers)
    return 0 if numbers.empty?
    
    delimiters = [","]
    if numbers.start_with?("//")
      header, numbers = numbers.split("\n", 2)
      
      if header.include?("[")
	delimiters = header.scan(/\[(.*?)\]/).flatten 
      else
	delimiters = [header[2]]
      end
    else      
      numbers = numbers.gsub("\n", ",")      
    end
    split_pattern = Regexp.new(delimiters.map { |d| Regexp.escape(d) }.join("|"))
    
    values = numbers.split(split_pattern).map(&:to_i).reject { |n| n > 1000 }
     
    negatives = values.select { |n| n < 0 }
    unless negatives.empty?
      raise "negative numbers not allowed #{negatives.join(',')}"
    end

    values.sum
  end
end
