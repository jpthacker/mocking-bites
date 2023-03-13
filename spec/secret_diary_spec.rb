require "secret_diary"

RSpec.describe SecretDiary do
    it "returns the contents of a diary" do
        diary = double(:fake_diary, read: "Hello world!")
        secret_diary = SecretDiary.new(diary)
        secret_diary.unlock
        expect(secret_diary.read).to eq "Hello world!"
    end

    it "locks the diary" do
        diary = double(:fake_diary, read: "Hello world!")
        secret_diary = SecretDiary.new(diary)
        expect{ secret_diary.read }.to raise_error "Go away!"
    end

    it "unlocks the diary" do
        diary = double(:fake_diary, read: "This works!")
        secret_diary = SecretDiary.new(diary)
        secret_diary.unlock
        expect(secret_diary.read).to eq "This works!"
    end
end