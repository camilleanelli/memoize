# frozen_string_literal: true

class Fibonacci
  def calculate(num)
    return 1 if num < 3

    # calculate(num - 1) + calculate(num - 2)
    run_calculation(num)
  end

  private

  def run_calculation(num)
    # {} is nil
    @run ||= {}
    @run[num] ||= calculate(num - 1) + calculate(num - 2)
    @run[num]
  end
end

fib = Fibonacci.new
puts fib.calculate(40)
