require 'rubygems'
require 'rubygame'

class Game
  def initialize()
    @screen = Rubygame::Screen.new [640, 480], 0, 
    [Rubygame::HWSURFACE, 
      Rubygame::DOUBLEBUF]
    @screen.title = "FunTime" 
    @queue = Rubygame::EventQueue.new
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
end