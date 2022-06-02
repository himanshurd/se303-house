class House

  def initialize(prefix = "This is")
    @prefix = prefix
  end

  def line(number)
      "#{@prefix} #{lyrics.last(number).join(" ")}"
  end

  def recite()
    (1..12).map {|number| line(number)}.join("\n")
  end

  def lyrics
    [
      "the horse and the hound and the horn that belonged to",
      "the farmer sowing his corn that kept",
      "the rooster that crowed in the morn that woke",
      "the priest all shaven and shorn that married",
      "the man all tattered and torn that kissed",
      "the maiden all forlorn that milked",
      "the cow with the crumpled horn that tossed",
      "the dog that worried",
      "the cat that killed",
      "the rat that ate",
      "the malt that lay in",
      "the house that Jack built.\n"
    ]
  end

  def noun
    [ "the horse and the hound and the horn",
      "the farmer sowing his corn",
      "the rooster that crowed in the morn",
      "the priest all shaven and shorn ",
      "the man all tattered and torn",
      "the maiden all forlorn",
      "the cow with the crumpled horn",
      "the dog",
      "the cat",
      "the rat",
      "the malt",
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
      "that lay in"
    ]
  end

  def lyrics 
    noun.zip(actions)
  end

end