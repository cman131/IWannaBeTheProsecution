require 'rubygems'
require 'rubygame'
require './Level'

class Game
  def initialize()
    @screen = Rubygame::Screen.new [640, 480], 0, 
    [Rubygame::HWSURFACE, 
      Rubygame::DOUBLEBUF]
    @queue = Rubygame::EventQueue.new
    @level = Level.new("../res/backtest.png","","","","")
    @screen.title = "I Wanna Be The Prosecution"
    @background = Rubygame::Surface.load(@level.getBackground()) 
  end
  
  def update()
    @queue.each do |ev|
       case ev
       when Rubygame::QuitEvent
         exit
       end
    end
    @background.blit(@screen, [0,0], [0,0,640,480])
    @screen.update()
  end

  def run()
    puts "such Panda"
    loop do
      update()
    end
  end
  
  def draw()
    @level.draw(@screen)
  end
  
end