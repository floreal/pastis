# To change this template, choose Tools | Templates
# and open the template in the editor.

require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe Lookup do
  before(:each) do
    @attr = {:snippet_id => 1}
  end

  it "should provide the snippet id" do
    lookup = Lookup.new @attr
    lookup.snippet_id.should == 1
  end
end

