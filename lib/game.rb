require "gosu"

WIDTH, HEIGHT = 1240, 800

module Tiles
  Black = 1
  Grass = 14
  Earth = 7
end

class VimGame < (Example rescue Gosu::Window)
  def initialize
    super WIDTH, HEIGHT

    self.caption = "PacVim"
    @player = 
    @sky = Gosu::Image.new("media/space.png", tileable: true)
    @map = Map.new("media/levelone.txt")
     end

 # def update
  #  @player.move_left   if @window.button_down? KbH
   # @player.move_right  if @window.button_down? KbL
   # @player.move_up     if @window.button_down? KbK
   # @player.move_down   if @window.button_down? KbJ
  # end

  def draw
      @map.draw
  end

end

