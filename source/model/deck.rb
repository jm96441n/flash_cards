
require_relative 'deck_parser'

class Deck
  attr_reader :deck
  include DeckParser
  def initialize
    @deck = []
  end

  def make_deck(filename,new_deck=[])
    deck = Deck.new
    deck.parser(filename,new_deck)
    @deck = new_deck
    @deck
  end

end


# deck = Deck.new
# p deck.make_deck('../../nighthawk_flashcard_data.txt')
