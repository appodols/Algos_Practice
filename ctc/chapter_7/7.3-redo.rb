# Let’s  rst understand the basic system components:
# » CD player
# » CD
# » Display () (displays length of song, remaining time and playlist) Now, let’s break this down further:
# pg 62
#  Playlist creation (includes add, delete, shu e etc sub functionalities) CD selector
# Track selector
# Queueing up a song
# »
# »
# »
# »
# »
# A
# »
# »
# »
class CD
end

class CDPlayer
  attr_accessor :playlist, :CD

  def initialize(playlist, cd)
    @playlist = playlist
    @cd = cd
  end

  def set_playlist
  end

  def getCD
  end

  def setCD(cd)
  end

  def playTrack
  end
end


class JukeBox

  attr_accessor :cdPlayer, :user, :cdCollection, :trackSelector
  def initialize(args = {})
    @cdPlayer = args[cdPlayer]
    @user = args[user]
    @cdCollection = args[cdCollection]
    @trackSelector = args[trackSelector]
  end

  def current_track
  end
end



class Playlist

  attr_accessor :song, :queue,
  def initialize(song, queue)
    @song = song
    @queue = queue
  end

  def next_song
    @queue.peek
  end

  def add_song(song)
    @queue.enqueue(song)
  end
end

class Song
  attr_accessor :song_name
  def initialize(song_name)
    @song_name = song_name
  end



end

class User

  attr_accessor :name

  def initialize(name)
    @name = name
  end


end
