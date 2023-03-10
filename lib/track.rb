class Track
  def initialize(title, artist)
    @title = title
    @artist = artist
  end
  attr_reader :title, :artist

  def matches?(keyword)
    @title.include?(keyword) || @artist.include?(keyword)
  end
end
