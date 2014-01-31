require 'rubygems'
require 'rubygame'

class Game
    @screen = Rubygame::Screen.new [640, 480], 0, 
    [Rubygame::HWSURFACE, 
      Rubygame::DOUBLEBUF]
    @queue = Rubygame::EventQueue.new
    @level = Level.new
  def initialize()
    @screen.title = "FunTime" 
  end
  
  def update()
    @queue.each do |ev|
       case ev
       when Rubygame::QuitEvent
         exit
       end
    end
    @screen.fill(:red)
    @screen.flip
    sleep(0.1)
    @screen.fill(:blue)
    @screen.flip
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