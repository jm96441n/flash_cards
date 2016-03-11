require_relative '../view/view'
require_relative '../model/deck'
class Control

  def inititalize
    @used_cards = []
  end

  def self.run(filename)
    deck = Deck.new
    new_deck = deck.make_deck(filename)
    View.intro
    View.options
    input = View.input
    case input
      when 'game'
        test_card = new_deck[0]
        View.p_term(test_card)
        answer = View.input
        until answer == test_card.def
          View.try_again
          answer = View.input
        end
        View.correct
    end
  end

end


Control.run('../../nighthawk_flashcard_data.txt')
