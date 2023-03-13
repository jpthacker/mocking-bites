class InteractiveCalculator
    def initialize(terminal)
        @terminal = terminal
    end
    def run
        @terminal.puts "Hello. I will subtract two numbers.\nPlease enter a number"
        input_1 = @terminal.gets.chomp
        @terminal.puts "Please enter another number"
        input_2 = @terminal.gets.chomp
        result = input_1.to_i - input_2.to_i
        @terminal.puts "Here is your result:\n#{result}"
    end
end

interactive_calculator = InteractiveCalculator.new(Kernel)
interactive_calculator.run

# Hello. I will subtract two numbers.
# Please enter a number
# 4
# Please enter another number
# 3
# Here is your result:
# 4 - 3 = 1
