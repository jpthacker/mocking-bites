RSpec.describe MusicLibrary do
    it "stores tracks in a library" do
        music_library = MusicLibrary.new
        music_library.add(double(:fake_track_1))
        expect(music_library.library).not_to be_empty
    end

    describe "all method" do
        it "returns the tracks stored in te library" do
            music_library = MusicLibrary.new
            fake_track_1 = double :fake_track
            fake_track_2 = double :fake_track
            music_library.add(fake_track_1)
            music_library.add(fake_track_2)
            expect(music_library.all).to eq [fake_track_1, fake_track_2]
        end
    end

    describe "seach method" do
        it "Returns a list of tracks that match a keyword" do
            music_library = MusicLibrary.new
            fake_track_1 = double :fake_track
            expect(fake_track_1).to receive(:matches?).with("Blood").and_return(false)
            fake_track_2 = double :fake_track, matches?: true
            expect(fake_track_2).to receive(:matches?).with("Blood").and_return(true)
            music_library.add(fake_track_1)
            music_library.add(fake_track_2)
            expect(music_library.search("Blood")).to eq [fake_track_2]
        end
    end
end