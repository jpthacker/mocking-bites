class StringRepeater
    def initialize(io)
        @io = io
    end
    def run 
        @io.puts 'Hello. I will repeat a string many times.\nPlease enter a string'
        input = @io.gets.chomp
        @io.puts 'Please enter a number of repeats'
        amount = @io.gets.chomp
        @io.puts "Here is your result:\n#{repeat_str(input, amount)}"
    end

    private

    def repeat_str(str, amount)
        repeated_str = ""
        amount.to_i.times {repeated_str << str} 
        return repeated_str
    end
end


# string_repeater = StringRepeater.new(Kernel)
# string_repeater.run

# Hello. I will repeat a string many times.
# Please enter a string
# TWIX
# Please enter a number of repeats
# 10
# Here is your result:
# TWIXTWIXTWIXTWIXTWIXTWIXTWIXTWIXTWIXTWIX