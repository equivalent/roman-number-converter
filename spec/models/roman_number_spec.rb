require 'spec_helper'

describe RomanNumber do
  before do
    @roman1 = "MCXI"
    @roman2 = "MMCCVIII"
    @arabic2 = 2208
    @arabic1 = 1111
  end
  




  context "corct beheavior of Integer and Strig erxtensions " do
   it "should correctly convert arabic to roman" do
     @arabic1.to_roman.should == @roman1
     @arabic2.to_roman.should == @roman2
   end

   it "should correctly convert roman to arabic" do
     @roman1.to_arabic.should == @arabic1
     @roman2.to_arabic.should == @arabic2
   end
  end


  context "testing convert= that it" do
    it "should correctry convert roman to arabic"do
      number= RomanNumber.new()

      number.number_to_convert=@roman1
      number.arabic.should == @arabic1

      number.number_to_convert=@roman2
      number.arabic.should == @arabic2
    end

     it "should correctry convert roman to arabic"do
      number= RomanNumber.new(:number_to_convert=>@arabic1)

      number.number_to_convert=@arabic1
      number.roman.should == @roman1

      number.number_to_convert=@arabic2
      number.roman.should == @roman2
    end 

  end



end
