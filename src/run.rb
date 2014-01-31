require 'rubygems'
require 'rubygame'

def run()
  puts "such Panda"
  screen = Rubygame::Screen.new [640, 480], 0, 
  [Rubygame::HWSURFACE, 
    Rubygame::DOUBLEBUF] 
  screen.title = "FunTime" 
  queue = Rubygame::EventQueue.new
  loop do
    queue.each do |ev|
       case ev
       when Rubygame::QuitEvent
         exit
       end
    end
  end
end
run()
