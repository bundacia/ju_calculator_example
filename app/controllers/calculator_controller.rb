class CalculatorController < ApplicationController
  def display
    @value = eval(params[:expression]) if params[:expression]
  end
end
