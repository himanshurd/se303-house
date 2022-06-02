class House

  def initialize(prefix = "This is")
    @prefix = prefix
    @lyrics = lyrics
  end

  def line(number)
      "#{@prefix} #{lyrics.last(number).join(" ")}"
  end

  def recite()
    (1..12).map {|number| line(number)}.join("\n")
  end

  def noun
    [ "the horse and the hound and the horn",
      "the farmer sowing his corn",
      "the rooster that crowed in the morn",
      "the priest all shaven and shorn",
      "the man all tattered and torn",
      "the maiden all forlorn",
      "the cow with the crumpled horn",
      "the dog",
      "the cat",
      "the rat",
      "the malt",
      "the house"
    ]
  end

  def actions
    [
      "that belonged to",
      "that kept",
      "that woke",
      "that married",
      "that kissed",
      "that milked",
      "that tossed",
      "that worried",
      "that killed",
      "that ate",
      "that lay in",
      "that Jack built.\n"
    ]
  end

  def lyrics 
    noun.zip(actions)
  end
end

class RandomHouse < House
  def lyrics
    super.shuffle
  end
end

class LyricsHouse
  
end
