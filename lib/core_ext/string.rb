class String

  #inspiated by  http://www.rubyquiz.com/quiz22.html
  def to_arabic
  roman_string = self.upcase
  if roman_string
  val = { 'I' => 1,   'V' => 5,   'X' => 10, 'L' => 50,
          'C' => 100, 'D' => 500, 'M' => 1000 }
    sum = 0
    lastval = 1000
    roman_string.each_byte {|c|
      if val[c.chr]
       sum += val[c.chr] 
       sum -= (lastval * 2) if val[c.chr] > lastval
       lastval = val[c.chr]
      end
    }
    return sum
  end
  end


end

