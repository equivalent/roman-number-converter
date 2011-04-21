class RomanNumber 
 attr_accessor :number_to_convert
 
  def arabic
    number_to_convert.to_s.to_arabic
  end

  def roman
    number_to_convert.to_i.to_roman
  end


  def converted
    if number_to_convert.to_i > 0
      roman
    else
      arabic
    end
  end
end
