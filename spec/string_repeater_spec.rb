require "String_repeater"

RSpec.describe StringRepeater do
    it 'takes user inputs and prints a repeated string' do
        io = double :fake_kernel
        expect(io).to receive(:puts).with('Hello. I will repeat a string many times.\nPlease enter a string').ordered
        expect(io).to receive(:gets).and_return('TWIX').ordered
        expect(io).to receive(:puts).with('Please enter a number of repeats').ordered
        expect(io).to receive(:gets).and_return('10').ordered
        expect(io).to receive(:puts).with("Here is your result:\nTWIXTWIXTWIXTWIXTWIXTWIXTWIXTWIXTWIXTWIX").ordered
        string_repeater = StringRepeater.new(io)
        string_repeater.run
    end
end