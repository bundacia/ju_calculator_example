class CalculatorController < ApplicationController
  def display
    calc = Calculator.new
    @value = calc.evaluate( params[:expression] )
  end
end
