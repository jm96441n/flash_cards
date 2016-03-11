
require_relative 'deck_parser'

class Deck
  attr_reader :deck
  include DeckParser
  def initialize
    @deck = []
  end

  def make_deck(filename,new_deck=[])
    deck = Deck.new
    @file = filename
    deck.parser(@file,new_deck)
    @deck = new_deck
    @deck
  end


  def add_card(defin,ans)
    card = Card.new({def: defin, term: ans})
    @deck << card

    File.open(@file,"a+") do |file|
      file.puts(defin)
      file.puts(ans)
    end
  end
end


# deck = Deck.new
# p deck.make_deck('../../nighthawk_flashcard_data.txt')
