# == Schema Information
#
# Table name: snippets
#
#  id         :integer         not null, primary key
#  content    :string(255)
#  language   :string(255)
#  created_at :datetime
#  updated_at :datetime
#

require 'spec_helper'

describe Snippet do
  it "provides a list of supported languages" do
    Snippet.should respond_to :supported_languages
    Snippet.supported_languages.should be_an_instance_of Array
  end

  describe 'Validation' do 
    before :each do
      @attr = {:language => 'ruby', :content => 'puts "Hello, World !"'}
    end
    
    it "should create a new instance given valid attributes" do
      Snippet.create! @attr
    end

    
    it 'should require only supported languages' do
      snippet = Snippet.create @attr.merge({:language => "english"})
      snippet.should_not be_valid
    end
  
    it 'should require a content' do
      snippet = Snippet.create @attr.merge({:content => ""})
      snippet.should_not be_valid
    end
  end
end
