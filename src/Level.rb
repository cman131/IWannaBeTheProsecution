class Level
  def initialize(background, music, platforms, character, dangers)
    @background = background
    @music = music
    @platforms = platforms
    @character = character
    @dangers = dangers
  end
  
  def getBackground()
    return @background
  end
end