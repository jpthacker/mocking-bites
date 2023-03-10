require "track"
require "music_library"

RSpec.describe "music_library integration" do
    it "Stores added tracks in a library" do
        music_library = MusicLibrary.new
        track_1 = Track.new("I Believe", "Caroline Polachek")
        track_2 = Track.new("BLood Bank", "Bon Iver")
        music_library.add(track_1)
        music_library.add(track_2)
        expect(music_library.library).to eq [track_1, track_2]
    end

    it "Returns a list of tracks which match a keyword" do
        music_library = MusicLibrary.new
        track_1 = Track.new("I Believe", "Caroline Polachek")
        track_2 = Track.new("BLood Bank", "Bon Iver")
        music_library.add(track_1)
        music_library.add(track_2)
        expect(music_library.search("Believe")).to eq [track_1]
        expect(music_library.search("Bon")).to eq [track_2]
    end
end