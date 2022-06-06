class House
  Noun = [" the horse and the hound and the horn that", " the farmer sowing his corn that", " the rooster that crowed in the morn that", " the priest all shaven and shorn that", " the man all tattered and torn that", " the maiden all forlorn that", " the cow with the crumpled horn that", " the dog that", " the cat that", " the rat that", " the malt that"]
	Actions = [" belonged to", " kept", " woke", " married", " kissed", " milked", " tossed", " worried", " killed", " ate", " lay in"]

  def initialize(prefix = "This is")
    @prefix = prefix
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

class Pirate < House
	def line(number)
		"Thar be#{lyrics(number)} the house that Jack built.\n"
	end
end

class RandomHouse < House
  shuffle = Noun.zip(Actions).shuffle
	Noun = shuffle.collect { |line, verb| line }
	Actions = shuffle.collect { |line, verb| verb }
end

class MixedHouseActions < House
	Actions = Actions.shuffle
end