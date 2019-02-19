class RPNCalculator
  attr_accessor :stack

  def initialize
    @stack = []
  end

  def result
    if @stack.count == 0
      return 0.0
    end
    @stack.last
  end

  def push_operand(operand)
    @stack.push(operand)
  end

  def add
    if @stack.count > 1
      @stack.push(stack.pop + stack.pop)
    end
  end

end
