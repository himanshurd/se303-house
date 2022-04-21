class House

  def avoid_shameless_line(number)
    case number 
    when 1
      "house"
    when 2
      "malt that lay in the house"
    when 3
      "rat that ate the malt that lay in the house"
    when 4
      "cat that killed the rat that ate the malt that lay in the house"
    when 5
      "dog that worried the cat that killed the rat that ate the malt that lay in the house"
    when 6
      "cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the house"
    when 7
      "maiden all forlorn that milked the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the house"
    when 8
      "man all tattered and torn that kissed the maiden all forlorn that milked the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the house"
    when 9
      "priest all shaven and shorn that married the man all tattered and torn that kissed the maiden all forlorn that milked the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the house"
    when 10
      "rooster that crowed in the morn that woke the priest all shaven and shorn that married the man all tattered and torn that kissed the maiden all forlorn that milked the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the house"
    when 11
      "farmer sowing his corn that kept the rooster that crowed in the morn that woke the priest all shaven and shorn that married the man all tattered and torn that kissed the maiden all forlorn that milked the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the house"
    when 12
      "horse and the hound and the horn that belonged to the farmer sowing his corn that kept the rooster that crowed in the morn that woke the priest all shaven and shorn that married the man all tattered and torn that kissed the maiden all forlorn that milked the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the house"  
    end
  end

  def line(number)
      "This is the #{avoid_shameless_line(number)} that Jack built.\n"
  end

  def recite()
    (1..12).map {|number| line(number)}.join("\n")
  end
  
end