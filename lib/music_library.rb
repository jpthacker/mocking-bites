require_relative "track"

class MusicLibrary
  def initialize
    @library = []
  end
  attr_reader :library

  def add(track)
    @library << track
  end

  def all
    @library
  end
  
  def search(keyword)
    @library.filter {|track| track.matches?(keyword) == true}
  end
end