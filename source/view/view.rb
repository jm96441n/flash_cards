require 'colorize'
module View

  def self.intro
    puts "Welcome to Abusive Flashcards! Get it right dummy"
    puts "Please choose an option: "
  end

  def self.options
    puts "To play the game, type:" + " 'game'".colorize(:red)
    puts "To view all the cards, type:" + " 'view'".colorize(:green)
    puts "To add a card, type:" + " 'add'".colorize(:magenta)
    puts "To quit, type:" + " 'QUIT'".colorize(:light_blue)
  end

  def self.input
    gets.chomp.downcase
  end

  def self.p_term(card)
    puts card.term.colorize(:yellow)
  end

  def self.try_again
    incorrect = ['Wrong answer dummy, try again loser',
          '+5 points for for creativity. -5 for being a dummy.','Incorrect. I have a self help book recommendation for you: Not Being Such a Dummy, For Dummies', 'Hint: Give up, dummy','Well, this is going to take a while', 'Really? Just making up words now?....Unbelievable.'
          ]
    puts (incorrect.sample).colorize(:red)
    puts ' '
  end

  def self.correct
    puts 'That is correct, good job not screwing up'.colorize(:green)
    puts ' '
  end

  def self.end_game
    puts 'No more cards dummy, try again'.blue.on_red.blink
  end

  def self.add_defin
    puts "Add your definition:".colorize(:green)
    puts ' '
  end

  def self.add_ans
    puts "Add your term:".colorize(:green)
    puts ' '
  end

  def self.view_all(card)
    puts''
    puts card.term.colorize(:magenta)
    puts card.def.colorize(:light_blue)
  end

  def self.incorrect_message
    puts ' '
    puts "Here are the ones you got wrong stupid"
  end

  def self.incorrect(card)
    puts ' '
    puts card.term
    puts card.def
  end

  def self.skip
    puts "You skipped, probably shouldn't have skipped studying dummy".colorize(:magenta)
  end

  def self.next_up
    puts "You got it wrong too many times, stop being so stupid".black.on_magenta
    puts ' '
  end

end
