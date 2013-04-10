class Calculator
  
  def evaluate(expression)
    validate_expression expression
    eval expression
  end

  private

  def validate_expression(expression)
    raise 'ERROR' unless expression =~ valid_expression_regex
  end

  def valid_expression_regex
    %r|\A (\s* -?\d+ \s* [*/+-])* \s* -?\d+ \Z|x
  end
end
