require 'spec_helper'

describe Calculator do

  it "evaluates valid expressions" do
    subject.evaluate("2 + 2").should == 4
  end


  it "raises an error on invalid expressions" do
    expect { subject.evaluate("`cat /etc/passwd`") }.to raise_error 'ERROR'
  end
  
end
