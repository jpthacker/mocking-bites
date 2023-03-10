require "track"

RSpec.describe Track do
    it "Stores the track title and artist" do
        track_1 = Track.new("I Believe", "Caroline Polachek")
        expect(track_1.title).to eq "I Believe"
        expect(track_1.artist).to eq "Caroline Polachek"
    end

    describe "matches? method" do
        it "Returns true if the keyword matches either the title or artist" do
            track_1 = Track.new("I Believe", "Caroline Polachek")
            expect(track_1.matches?("Polachek")).to eq true
            expect(track_1.matches?("Jockstrap")).to eq false
        end
    end
end