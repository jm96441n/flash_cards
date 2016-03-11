module View

  def self.intro
    puts "Welcome to Abusive Flashcards! Get it right dummy"
    puts "Please choose an option: "
  end

  def self.options
    puts "To play the game, type 'game'"
    puts "To view all the cards, type 'view'"
    puts "To add a card, type 'add'"
    puts "To quit, type 'QUIT'"
  end

  def self.input
    gets.chomp
  end

  def self.p_term(card)
    puts card.term
  end

  def self.try_again
    puts 'Wrong answer dummy, try again loser'
  end

  def self.correct
    puts 'That is correct, good job not screwing up'
  end

end
