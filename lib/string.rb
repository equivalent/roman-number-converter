class String
  def capitalize_first
    "aaaaaaaaaa"
  end
end

class String
    def to_roman
        str = self.downcase
        raise SyntaxError, "Not a roman numeral" unless str =~
/^[mdclxvi]+$/
        raise SyntaxError, "Not a roman numeral" if
            %w{iiii vv xxxx ll cccc dd}.any? { |x| str.include?(x) }
        str.tr!("ivxlcdm", "0123456")  # translate into numbers
        level, last, deviated, ret = 7, 0, false, 0
        table = [1,5,10,50,100,500,1000]  # the translation table
        str.each_char do |char|
            num = char.to_i
            if num > level  # means a deviation
                raise SyntaxError, "Not a roman numeral" if deviated 
or
not  # no double deviation
                    %w{01 02 23 24 45 46}.include?("#{last}#{num}") 
#
only allowed deviations
                ret -= table[last]*2 # remedy deviation
                level = last-1 # don't allow IXI or IXV etc.
                deviated = true
            else
                deviated = false
                level = num  # don't allow MLM etc.
            end
            ret += table[num]
            last = num
        end
        ret
    end
end

