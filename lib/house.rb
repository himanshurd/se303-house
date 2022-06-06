class House
  Noun = [" the horse and the hound and the horn that", " the farmer sowing his corn that", " the rooster that crowed in the morn that", " the priest all shaven and shorn that", " the man all tattered and torn that", " the maiden all forlorn that", " the cow with the crumpled horn that", " the dog that", " the cat that", " the rat that", " the malt that"]
	Actions = [" belonged to", " kept", " woke", " married", " kissed", " milked", " tossed", " worried", " killed", " ate", " lay in"]

  def initialize(prefix = "This is")
    @prefix = prefix
    #@verse = LyricsHouse.new()
  end

  def line(number)
    "#{@prefix}#{lyrics(number)} the house that Jack built.\n"
  end

  def lyrics(number=nil)
		(number-1).downto(1).collect { |i| self.class::Noun[-i]+self.class::Actions[-i] }.join("")
	end

  def recite()
    (1..12).map {|number| line(number)}.join("\n")
  end
end

class RandomHouse < House
  def lyrics
    super.shuffle
  end
end

class LyricsHouse < House

  def initialize
    @noun = noun
    @actions = actions 
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
