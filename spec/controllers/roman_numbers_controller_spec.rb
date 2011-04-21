require 'spec_helper'

describe RomanNumbersController do

  describe "GET 'index'" do
    it "should be successful" do
      get 'index'
      response.should be_success
    end
  end

  describe "post 'create'" do
    it "should be successful" do
      post 'create', :number=> { :number_to_convert => "33"}
      response.should be_success
    end
  end

end
