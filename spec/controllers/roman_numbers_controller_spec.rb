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
      post 'create'
      response.should be_success
    end
  end

end
