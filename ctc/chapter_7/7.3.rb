#questions
  #what are the core requirements of musical-box?

class JukeBox


PRESETS = Array.new(5)

  attr_accessor :presets, :mode, :playing, :modes


  def initialize(presets = [], mode)
    @modes = ["CD", "Radio", "Aux"]
    @mode = modes[0]
    @presets = PRESETS
    @playing = false
  end

  def change_modes
    @modes.rotate!
    @mode = modes[0]
  end

  def play
    music.play if !playing
  end

  def pause
    music.pause if playing
  end




end
