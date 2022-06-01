class House

  def line(number)
      "This is #{lyrics.last(number).join(" ")}"
  end

  def recite()
    (1..12).map {|number| line(number)}.join("\n")
  end

  def lyrics
    [
      "the #{noun.last(number).join(" ")} and the hound and the horn that belonged to",
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
    [ "horse",
      "farmer",
      "rooster",
      "priest",
      "man",
      "maiden",
      "cow",
      "dog",
      "cat",
      "rat",
      "malt",
      "house"
    ]
  end
end