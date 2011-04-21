class ConvertorController < ApplicationController
  def index
    @number = RomanNumber.new
  end

  def create
    @number
  end

end
