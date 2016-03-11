require_relative '../view/view'
require_relative '../model/deck'

class Control

  def self.run(filename)
    @used_cards = []
    @incorrect_cards = []
    @deck = Deck.new
    @new_deck = @deck.make_deck(filename)
    @new_deck = @new_deck.shuffle!
    View.intro
    View.options
    input = View.input
    case input
      when 'game'
        Control.game
        View.end_game
        View.incorrect_message
        @incorrect_cards.each{|card| View.incorrect(card)}
      when 'add'
        View.add_defin
        defin = View.input
        View.add_ans
        ans = View.input
        @deck.add_card(defin, ans)
        Control.run(filename)
      when 'view'
        @new_deck.each do |card|
          View.view_all(card)
        end
      end
  end

  def self.game
    test_card = @new_deck
    @new_deck.each do |test_card|
      View.p_term(test_card)
      answer = View.input
      if answer == 'skip'
        @incorrect_cards << test_card
      else
        until answer == test_card.def.downcase
          if !@incorrect_cards.include?(test_card)
            @incorrect_cards << test_card
          end
          View.try_again
          answer = View.input
        end
      @used_cards << test_card
      View.correct
    end
  end





end


Control.run('../../nighthawk_flashcard_data.txt')
