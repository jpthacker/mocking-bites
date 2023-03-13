require "diary"

RSpec.describe Diary do
    it "Returns the contents of a diary" do
        contents = "Hello world"
        diary = Diary.new(contents)
        expect(diary.read).to eq contents
    end
end