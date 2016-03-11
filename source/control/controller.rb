require_relative '../view/view'
require_relative '../model/deck'
class Control

  def self.run(filename)
    @used_cards = []
    @deck = Deck.new
    @new_deck = @deck.make_deck(filename)
    @new_deck = @new_deck.shuffle!
    View.intro
    View.options
    input = View.input
    case input
      when 'game'
        Control.game
      end
  end

  def self.game
    test_card = @new_deck
    @new_deck.each do |test_card|
      View.p_term(test_card)
      answer = View.input
      until answer == test_card.def.downcase
        View.try_again
        answer = View.input
      end
      @used_cards << test_card
      View.correct
    end


  end

end


Control.run('../../nighthawk_flashcard_data.txt')
