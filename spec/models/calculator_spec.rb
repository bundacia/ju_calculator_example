require 'spec_helper'

describe Calculator do
  it "should be able to add 2 + 2" do
    calc = Calculator.new
    calc.evaluate("2 + 2").should == 4
  end

  it "should be able to handle expressions with more than 2 terms" do
    calc = Calculator.new
    calc.evaluate("10 * 100 - 50 / 5").should == 990
  end

  it "should handle parenthases correctly" do
    calc = Calculator.new
    calc.evaluate("(5 + 5 + 5) / 3").should == 5
  end
end
