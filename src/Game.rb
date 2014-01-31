require 'rubygems'
require 'rubygame'
require './Level'

class Game
  def initialize()
    @screen = Rubygame::Screen.new [640, 480], 0, 
    [Rubygame::HWSURFACE, 
      Rubygame::DOUBLEBUF]
    @queue = Rubygame::EventQueue.new
    @level = Level.new("","","","","")
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