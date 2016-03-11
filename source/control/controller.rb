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
    @test_card = @new_deck
    @new_deck.each do |test_card|
      View.p_term(test_card)
      answer = View.input
      if answer.downcase == 'skip'
        Control.skip
      else
        guess_count = 1
        until answer == test_card.def.downcase || guess_count == 3
          if !@incorrect_cards.include?(test_card)
            @incorrect_cards << test_card
          end

          guess_count += 1
          View.try_again
          answer = View.input
        end
        if guess_count == 3
          Control.next_up
        else
          View.correct
        end
      end
      @used_cards << test_card
    end
  end

    def self.skip
        View.skip
        @incorrect_cards << @test_card
        @new_deck << @test_card
    end

    def self.next_up
        View.next_up
        @incorrect_cards << @test_card
        @new_deck << @test_card
    end



end


Control.run('../../nighthawk_flashcard_data.txt')
