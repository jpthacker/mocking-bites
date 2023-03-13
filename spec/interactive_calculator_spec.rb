require "interactive_calculator"

RSpec.describe InteractiveCalculator do
    it "takes user inputs, subtracts two numbers and prints the result" do
    terminal = double :terminal
    expect(terminal).to receive(:puts).with("Hello. I will subtract two numbers.\nPlease enter a number").ordered
    expect(terminal).to receive(:gets).and_return("4").ordered
    expect(terminal).to receive(:puts).with("Please enter another number")
    expect(terminal).to receive(:gets).and_return("3").ordered
    expect(terminal).to receive(:puts).with("Here is your result:\n1").ordered
    interactive_calculator = InteractiveCalculator.new(terminal)
    interactive_calculator.run
    end
end 