require 'spec_helper'

describe LookupController do

  describe "GET 'find'" do
    it "should be successful" do
      get 'find'
      response.should_not be_success
    end
  end
  
  describe "POST 'find'" do
    before :each do
      Snippet.create!({:language => 'ruby', :content => 'puts "Hello, world !"'})
    end
    
    it "should be successful" do
      post 'find', :lookup => { :snippet_id => 1 }
      response.should be_success
    end
  end

end
