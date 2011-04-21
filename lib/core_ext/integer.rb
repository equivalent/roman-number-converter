class Integer
    #from http://www.rubyquiz.com/quiz22.html
    def to_roman
      n= self
      r = ''
      rd = %w{M D C L X V I}
      val = [1000, 500, 100, 50, 10, 5, 1]
      val.each_with_index { |v, i|
        c = (n - (n % v))/v
        if c < 4 && c > 0
          c.times { r << rd[i] }
          n -= (c * v)
        end
        s = (i % 2 == 0) ? i+2 : i+1
        if (s < 7) && (n >= (val[i] - val[s]))
            r << rd[s] << rd[i]
            n -= (val[i] - val[s])
        end
      }
      return r
    end

    # from http://www.ruby-forum.com/topic/195594
    def to_roman_alternative
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
                raise SyntaxError, "Not a roman numeral" if deviated or not  # no double deviation
                    %w{01 02 23 24 45 46}.include?("#{last}#{num}") 
             #only allowed deviations
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
