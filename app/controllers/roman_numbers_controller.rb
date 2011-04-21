class RomanNumbersController < ApplicationController
  def index
    @number = RomanNumber.new
  end

  def create
    @number = RomanNumber.new
    @number.number_to_convert = params[:number][:number_to_convert]
    respond_to do |format|
       format.html { render :index }
       format.js
    end   
  end
end
