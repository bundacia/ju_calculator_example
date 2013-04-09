class Calculator

  def evaluate(expression)
    validate_expression(expression)
    eval( expression )
  end

  def validate_expression(expression)
    unless expression.blank? or expression =~ %r|\A ( \(? -?\d+(\.\d+)? \)? \s* [*/+-] \s* )* -?\d+(\.\d+)? \)? \Z|x
      raise "That's not a valid expression!"
    end
  end
  
end
