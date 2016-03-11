require 'csv'
require_relative 'deck_parser'

class Deck
  attr_reader :deck
  include DeckParser
  def initialize
    @deck = []
  end

  def make_deck(filename)
    deck = Deck.new
    deck.parser(filename,@deck)
  end

end



# deck = Deck.new
# p deck.make_deck('nighthawk_flashcard_data.txt')
