class House

  def episodes(number)
    case number 
    when 1
      ""
    when 2
      "#{lyrics[number-1]} #{episodes(number-1)}"
    when 3
      "#{lyrics[number-1]} #{episodes(number-1)}"
    when 4
      "#{lyrics[number-1]} #{episodes(number-1)}"
    when 5
      "#{lyrics[number-1]} #{episodes(number-1)}"
    when 6
      "#{lyrics[number-1]} #{episodes(number-1)}"
    when 7
      "#{lyrics[number-1]} #{episodes(number-1)}"
    when 8
      "#{lyrics[number-1]} #{episodes(number-1)}"
    when 9
      "the priest all shaven and shorn that married #{episodes(number-1)}"
    when 10
      "the rooster that crowed in the morn that woke #{episodes(number-1)}"
    when 11
      "the farmer sowing his corn that kept #{episodes(number-1)}"
    when 12
      "the horse and the hound and the horn that belonged to #{episodes(number-1)}"  
    end
  end

  def line(number)
      "This is #{episodes(number)}the house that Jack built.\n"
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