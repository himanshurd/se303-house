class House

  def episodes(number)
    case number 
    when 1
      ""
    else
      "#{lyrics[number-1]} #{episodes(number-1)}"  
    end
  end

  def line(number)
      "This is #{lyrics.last(number).join(" ")}"
  end

  def recite()
    (1..12).map {|number| line(number)}.join("\n")
  end


  def lyrics
    [
      "the house that Jack built.\n",
      "the malt that lay in",
      "the rat that ate",
      "the cat that killed",
      "the dog that worried",
      "the cow with the crumpled horn that tossed",
      "the maiden all forlorn that milked",
      "the man all tattered and torn that kissed",
      "the priest all shaven and shorn that married",
      "the rooster that crowed in the morn that woke",
      "the farmer sowing his corn that kept",
      "the horse and the hound and the horn that belonged to"
    ]
  end
end