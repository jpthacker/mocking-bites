require "diary"
require "secret_diary"

RSpec.describe SecretDiary do
    it "returns the contents of a diary" do
        diary = Diary.new("Hello world!")
        secret_diary = SecretDiary.new(diary)
        secret_diary.unlock
        expect(secret_diary.read).to eq "Hello world!"
    end

    it "initially locks the diary" do
        diary = Diary.new("Hello World!")
        secret_diary = SecretDiary.new(diary)
        expect{ secret_diary.read }.to raise_error "Go away!"
    end

    it "unlocks and locks the diary" do
        diary = Diary.new("This works!")
        secret_diary = SecretDiary.new(diary)
        secret_diary.unlock
        expect(secret_diary.read).to eq "This works!"
        secret_diary.lock
        expect{ secret_diary.read }.to raise_error "Go away!"
    end
end
