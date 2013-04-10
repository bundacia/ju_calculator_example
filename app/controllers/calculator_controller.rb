class CalculatorController < ApplicationController
  def display
    unless params[:expression].blank?
      calc = Calculator.new
      @value = calc.evaluate params[:expression]
    end
  end
end
